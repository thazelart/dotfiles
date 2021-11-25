#!/usr/bin/python3
import sys
sys.path.append('/home/thazelart/.config/i3/bumblebee-status/bumblebee_status')
import util.cli


def set_keymap(rotation):
    layouts = get_layouts()
    if len(layouts) == 1:
        return  # nothing to do
    layouts = layouts[rotation:] + layouts[:rotation]

    layout_list = []
    variant_list = []
    for l in layouts:
        tmp = l.split(":")
        layout_list.append(tmp[0])
        variant_list.append(tmp[1] if len(tmp) > 1 else "")

    util.cli.execute(
        "setxkbmap -layout {} -variant {}".format(
            ",".join(layout_list), ",".join(variant_list)
        ),
        ignore_errors=True,
    )

def get_layouts():
    try:
        res = util.cli.execute("setxkbmap -query")
    except RuntimeError:
        return ["n/a"]
    layouts = []
    variants = []
    for line in res.split("\n"):
        if not line:
            continue
        if "layout" in line:
            layouts = line.split(":")[1].strip().split(",")
        if "variant" in line:
            variants = line.split(":")[1].strip().split(",")

    result = []
    for idx, layout in enumerate(layouts):
        if len(variants) > idx and variants[idx]:
            layout = "{}:{}".format(layout, variants[idx])
        result.append(layout)
    return result if len(result) > 0 else ["n/a"]

def current_layout(widget):
    layouts = get_layouts()
    return layouts[0]

if __name__ == '__main__':
    set_keymap(1)

import os
import argparse


def output_markdown(path, file, indent=0, notdone_only=False):
    for item in os.listdir(path):
        item_path = os.path.join(path, item)

        if os.path.isdir(item_path):
            has_aspx = False
            for item2 in os.listdir(item_path):
                if item2.endswith(".aspx"):
                    has_aspx = True
                    break
            if has_aspx:
                file.write("    " * indent + f"- 📁 {item}\n")
                output_markdown(item_path, file, indent + 1, notdone_only)

        elif os.path.isfile(item_path) and item_path.endswith(".aspx"):
            filename = item_path.split("\\")[-1]

            if (
                filename.startswith("zz")
                or filename.startswith("za")
                or filename.startswith("zr")
            ):
                if not notdone_only:
                    file.write("    " * indent + f"- [x] {item}\n")
            else:
                file.write("    " * indent + f"- [ ] {item}\n")


parser = argparse.ArgumentParser()
parser.add_argument(
    "--notdone-only",
    action="store_true",
    help="Only output items that haven't been done",
)
args = parser.parse_args()

file = None
if args.notdone_only:
    file = open("todos-notdone.md", "w", encoding="utf-8")
else:
    file = open("todos.md", "w", encoding="utf-8")

output_markdown("./SSW.Website.WebUI", file, 0, args.notdone_only)

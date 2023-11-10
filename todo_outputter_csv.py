import os
import csv

def output_csv(path, writer, base_path = './SSW.Website.WebUI'):
  for item in os.listdir(path):
    item_path = os.path.join(path, item)

    if os.path.isdir(item_path):
        output_csv(item_path, writer)

    elif os.path.isfile(item_path) and item_path.endswith('.aspx'):
      split_path = item_path.split('\\')
      filename = split_path[-1]
      base_path_removed = item_path.replace(base_path, "")[1:]
      if filename.startswith('zz'):
        writer.writerow([remove_prefix(base_path_removed, "zz"), 'Done', '1', '0', ''])
      elif filename.startswith('za'):
        writer.writerow([remove_prefix(base_path_removed, "za"), 'Archived', '2', '0', ''])
      elif filename.startswith('zr'):
        writer.writerow([remove_prefix(base_path_removed, "zr"), 'Redirect', '4', '0', ''])
      else:
        writer.writerow([base_path_removed, 'To-do', '4', '2', ''])

def remove_prefix(path: str, prefix: str) -> str: 
  split_path = path.split('\\')
  split_path[-1] = split_path[-1][len(prefix):]
  return '\\'.join(split_path)

file = open("todos.csv", "w", encoding="utf-8", newline='')
writer = csv.writer(file)
writer.writerow(["Page", "Status", "Priority", "Complexity", "Notes"])
output_csv('./SSW.Website.WebUI', writer)  
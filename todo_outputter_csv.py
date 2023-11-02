import os
import csv

def output_csv(path, writer, base_path = './SSW.Website.WebUI'):
  for item in os.listdir(path):
    item_path = os.path.join(path, item)

    if os.path.isdir(item_path):
        output_csv(item_path, writer)

    elif os.path.isfile(item_path) and item_path.endswith('.aspx'):
      if item_path.split('\\')[-1].startswith('zz'):
        writer.writerow([item_path.replace(base_path + "\\", ""), 'Yes', 'Done', 'Low', 'Low', ''])
      else:
        writer.writerow([item_path.replace(base_path + "\\", ""), 'No', 'Not Started', '', '', ''])
      



file = open("todos.csv", "w", encoding="utf-8", newline='')
writer = csv.writer(file)
writer.writerow(["Page", "Migrated", "Status", "Priority", "Complexity", "Notes"])
output_csv('./SSW.Website.WebUI', writer)  
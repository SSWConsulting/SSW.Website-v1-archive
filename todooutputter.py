import os

def output_markdown(path, file, indent=0):
  for item in os.listdir(path):
    item_path = os.path.join(path, item)

    if os.path.isdir(item_path):
      has_aspx = False
      for item2 in os.listdir(item_path):
        if item2.endswith('.aspx'):
          has_aspx = True
          break
      if has_aspx:
        file.write('    ' * indent + f'- 📁 {item}\n')
        output_markdown(item_path, file, indent+1)

    elif os.path.isfile(item_path) and item_path.endswith('.aspx'):
      if item_path.split('\\')[-1].startswith('zz'):
        file.write('    ' * indent + f'- [x] {item}\n')
      else:
        file.write('    ' * indent + f'- [ ] {item}\n')
      



file = open("todos.md", "w", encoding="utf-8")
output_markdown('./', file)  
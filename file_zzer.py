
import os

def rename_files(directory):
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith(('.html', '.htm', '.aspx')) and not file.startswith(('zz', 'za', 'zr')):
                new_file_name = 'zz' + file
                old_file_path = os.path.join(root, file)
                new_file_path = os.path.join(root, new_file_name)
                os.rename(old_file_path, new_file_path)

if __name__ == "__main__":
    current_directory = os.path.dirname(os.path.realpath(__file__))
    rename_files(current_directory)
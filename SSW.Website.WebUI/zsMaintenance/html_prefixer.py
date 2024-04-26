import os

def rename_files_in_subdirectory(subdirectory):
    for root, dirs, files in os.walk(subdirectory):
        for file in files:
            if file.endswith(('.html', '.htm', '.aspx')):
                # Get the full file path
                full_file_path = os.path.join(root, file)
                # Construct new file name
                new_file_name = "zz" + file
                # Get the full new file path
                full_new_file_path = os.path.join(root, new_file_name)
                # Rename the file
                os.rename(full_file_path, full_new_file_path)

# Call the function with the path to the subdirectory
rename_files_in_subdirectory('./')
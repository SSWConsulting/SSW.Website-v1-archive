import os

def rename_files_in_directory(directory):
    for filename in os.listdir(directory):
        # If a directory, recursively call
        if os.path.isdir(os.path.join(directory, filename)):
            rename_files_in_directory(os.path.join(directory, filename))
        
        if filename.startswith('za'):
            os.rename(
                os.path.join(directory, filename),
                os.path.join(directory, filename[2:])
            )

# Pass the appropriate directory here
rename_files_in_directory('./SSW.Website.WebUI')
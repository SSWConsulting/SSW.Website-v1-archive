import os
import re
import shutil

# Define the directories
archive_dir = 'archive'
ssw_dir = 'SSW.Website.WebUI'
output_dir = os.path.join(archive_dir, 'files')

# Base URL for the new file references
base_url = 'https://ssw.com.au/archive/files/'

# Create output directory if it doesn't exist
if not os.path.exists(output_dir):
    os.makedirs(output_dir)

# Define the file extensions to look for
file_extensions = ['.doc', '.ppt', '.docx', '.pptx']

# Regular expression to find the file references
file_pattern = re.compile(r'([\/\w\-\.\_]+\.(doc|ppt|docx|pptx))', re.IGNORECASE)

def find_file_in_ssw(relative_path):
    for root, dirs, files in os.walk(ssw_dir):
        for file in files:
            if file == os.path.basename(relative_path):
                return os.path.join(root, file)
    return None

def find_and_download_files():
    for root, dirs, files in os.walk(archive_dir):
        for file in files:
            if file.endswith('.html') or file.endswith('.htm'):
                file_path = os.path.join(root, file)
                with open(file_path, 'r', encoding='utf-8') as f:
                    content = f.read()
                    matches = file_pattern.findall(content)
                    for match in matches:
                        relative_path = match[0].replace('/ssw/', '')
                        source_path = find_file_in_ssw(relative_path)
                        if source_path:
                            destination_path = os.path.join(output_dir, os.path.basename(relative_path))
                            if not os.path.exists(destination_path):
                                shutil.copy2(source_path, destination_path)
                                print(f"Downloaded: {source_path} to {destination_path}")
                            new_reference = base_url + os.path.basename(destination_path)
                            content = content.replace(match[0], new_reference)
                        else:
                            print(f"File not found: {relative_path}")

                # Save the updated HTML content back to the file
                with open(file_path, 'w', encoding='utf-8') as f:
                    f.write(content)
                print(f"Updated references in: {file_path}")

if __name__ == "__main__":
    find_and_download_files()

az storage blob sync \
 --container "\$web" \
 --source archived/ \
 --destination archived/ \
 --account-name stsswwebsitezjkojq27uhqb \
 --account-key "$ARCHIVE_KEY" \
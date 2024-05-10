
az storage blob sync \
 --container "\$web" \
 --source archive/ \
 --destination archive/ \
 --account-name stsswwebsitezjkojq27uhqb \
 --account-key "$ARCHIVE_KEY" \
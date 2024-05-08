
az storage blob sync \
 --container web \
 --source history \
 --destination history \
 --account-name stsswwebsitezjkojq27uhqb \
 --account-key "$ARCHIVE_KEY" \
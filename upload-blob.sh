az storage blob sync \
 --auth-mode key \
 --account-key "$ARCHIVE_KEY" \
 --destination "\$web" \
 --account-name stsswwebsitezjkojq27uhqb \
 --destination-path history \
 --source history \
 --overwrite \
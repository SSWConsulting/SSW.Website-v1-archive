az storage blob upload-batch \
 --destination $web \
 --account-name stsswwebsitezjkojq27uhqb \
 --destination-path history \
 --source history \
 --auth-mode key \
 --account-key $ARCHIVE_KEY \
 --overwrite \
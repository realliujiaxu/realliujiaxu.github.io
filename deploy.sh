#!/bin/bash
hugo
rm -rf docs
mv public docs
git add *
git commit -m "update files"

/usr/bin/expect <<-EOF
spawn git push
expect {
"name" {send "realliujiaxu\r"; exp_continue}

"password" {send "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"}
}
expect eof
EOF

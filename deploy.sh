#!/bin/bash
hugo
rm -rf docs
mv public docs
git add *
git commit -m "update files"

/usr/bin/expect <<-EOF
spawn git push
expect {
"Username" {send "realliujiaxu\r"; exp_continue}

"Password" {send "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\r"}
}
expect eof
EOF

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

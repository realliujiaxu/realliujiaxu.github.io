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

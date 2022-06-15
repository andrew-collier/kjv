#!/bin/zsh
echo "Checking dependencies..."
[ ! $(which zsh) ] && echo "Missing dependency \"zsh\"" && exit 1
[ ! $(which less) ] && echo "Missing dependency \"less\"" && exit 1

install -Dm 755 "./kjv" "/usr/local/bin/kjv"
install -Dm 444 "./kjv.tsv" "/usr/local/lib/kjv.tsv"
install -Dm 444 "./kjv.arr" "/usr/local/lib/kjv.arr"
install -Dm 444 "./dic.txt" "/usr/local/lib/dic.txt"
install -Dm 444 "./kjv.1" "/usr/local/man/man1/kjv.1"
install -Dm 444 "./_kjv" "/usr/share/zsh/functions/Completion/Unix/_kjv"
mandb -q

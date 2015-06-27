export HUNSPELL_PATH="/usr/share/hunspell"

git pull origin master
sort -u $HUNSPELL_PATH/gu.dic | grep -v "^\s*$" > dictionaries/kn.dic
sed "s#Released on.*\$#Released on `date`#" $HUNSPELL_PATH/gu.aff > dictionaries/gu.aff
git commit dictionaries/gu.dic dictionaries/gu.aff commit-new.sh install.rdf install.js
git push origin master

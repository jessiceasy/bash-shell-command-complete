# !/bin/sh
# ./表示当前工作目录，
# filelist=`ls ./`
# filelist=`ls ~/bash-shell-command-complete` 不能用~应为如果用sudo执行的话~表示root用户的根目录
filelist=`ls ./`
destdir='/etc/bash_completion.d'
echo $filelist
for file in $filelist
do
 if [ $file != 'README.md' -a $file != 'init.sh' ];then
 echo 'copying-----'$file
 cp $file $destdir
 fi
done

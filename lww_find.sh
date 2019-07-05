_lww_find() {
    local tips
    # 以数字开头，因为bash4.4以下的版本不支持-o nosort输出的时候会自动排序
    tips[0]='0 find  -mindepth 1  -maxdepth 2 -not -name init.sh -o -name  "aaa*" #搜索范围是从第一层到第二次包括第一层和第二层，是一个全局的限制即逻辑符号-a,-o前后都管用'
    tips[1]='1 find -maxdepth 1 -not -name init.sh # 逻辑not'
    tips[2]='2 find -maxdepth 1 -not -name init.sh -a -not -name "bbbb*"   #逻辑与'
    tips[3]='3 find -maxdepth 2  -not -name init.sh -o -not -name "bbbb*"  #逻辑或'
    tips[4]='4 find *.c -exec cp "'"{}"'" /tmp \; #拷贝查找结果至tmp  "\;"为固定格式 '

    for i in "${!tips[@]}"; do
      printf -v tips[$i] '%*s' "-$COLUMNS"  "${tips[$i]}"
    done
    COMPREPLY=( "${tips[@]}" ) 
}
complete  -F _lww_find find
# bash4.4以下版本不支持 -o nosort
# complete -o nosort -F _lww_tar tar 

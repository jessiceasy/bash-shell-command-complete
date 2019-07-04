_lww_tar() {
    local tips
    # 以数字开头，因为bash4.4以下的版本不支持-o nosort输出的时候会自动排序
    tips[0]='0 压缩前什么样子解压后就是什么样子，不会自建目录'
    tips[1]='1 tar -czvf ***.tar.gz 要压缩的文件或目录 #gz'
    tips[2]='2 tar -cjvf ***.tar.bz2 要压缩的文件或目录 #bz2'
    tips[3]='3 tar -xzvf ***.tar.gz  #解压gz'
    tips[4]='4 tar -cjvf ***.tar.bz2 #解压bz2'
    for i in "${!tips[@]}"; do
      printf -v tips[$i] '%*s' "-$COLUMNS"  "${tips[$i]}"
    done
    COMPREPLY=( "${tips[@]}" ) 
}
complete  -F _lww_tar tar
# bash4.4以下版本不支持 -o nosort
# complete -o nosort -F _lww_tar tar 


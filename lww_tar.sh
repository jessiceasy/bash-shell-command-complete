_lww_tar() {
    local tips
    tips[0]='压缩前什么样子解压后就是什么样子，不会自建建目录'
    tips[1]='tar -czvf ***.tar.gz 要压缩的文件或目录 #gz'
    tips[2]='tar -cjvf ***.tar.bz2 要压缩的文件或目录 #bz2'
    tips[3]='tar -xzvf ***.tar.gz  #解压gz'
    tips[4]='tar -cjvf ***.tar.bz2 #解压bz2'
    echo tips
    for i in ${!tips[@]}; do
        echo i
     # suggestions[$i]="$(printf '%*s' "-$COLUMNS"  "${suggestions[$i]}")"
    done
    COMPREPLY=( "${tips[@]##*/}" )
    
}
complete -F _lww_tar tar

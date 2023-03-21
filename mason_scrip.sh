#!/bin/bash

echo "传递参数实例！参数:$#";
#循环判断参数
while [ $# -gt 0 ]
do
    case "$1" in
        --name)
            if [ -n "$2" ]; then
                name=$2
            else
                echo "Error: Name cannot be empty."
                exit 1
            fi
            shift 2
            ;;

       --brick)
            brick=$2
            shift 2
            ;;
        --path)
            path=$2
            shift 2
            ;;
        --version)
            version=$2
            shift 2
            ;;
        *)
            echo "Unknown option: $1"
            exit 1
            ;;
    esac
done

if [ -z "$path" ]; then
   path="work_note/2023/"
fi

if [ -z "$brick" ]; then
   brick="note"
fi


#日期
year=$(date +%Y)
month=$(date +%m)
day=$(date +%d)
hour=$(date +%H)
formatted_date="$year$month$day"

if [ -z "$name" ]; then
   name=$formatted_date
fi

#brick 指定积木类型
echo "--brick: $brick"
#当前积木的类名
echo "--name:$formatted_date"
#输出的路径
echo "--path:$path"
# 暂时不需要 后期参数多了扩展
echo "--version:$version"
mason make $brick  --name $name -o $path
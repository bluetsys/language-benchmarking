# echo "Usage: $0 [-h] [-v] [-f file_name]"

# while getopts "hbr:" shortopt
# do
# 	case $shortopt in 
#     	h)
#         	echo "Usage: $0 [-h] [-v] [-f file_name]"
#             	echo "    -h: help"
#             	echo "    -b: 빌드"
#                 echo "    -r: 실행"
#                 echo "    -e: 빌드 & 실행"
#             	exit
#             	;;
#     	b)
#             	;;
#         *)
#         	echo "default settings"
#             	;;
#     esac
# done

sh ./nodejs/run.sh
sh ./R/run.sh
sh ./python/run.sh
sh ./basic/yabasic.sh
sh ./go/run.sh

sh ./java/run.sh
sh ./julia/run.sh
sh ./ruby/run.sh
sh ./fortran/run.sh
sh ./cobol/run.sh

sh ./csharp/run.sh
sh ./assembly/run.sh
sh ./C/run.sh
sh ./pascal/run.sh

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

./nodejs/run.sh
./R/run.sh
./python/run.sh
./basic/yabasic.sh
./go/run.sh

./java/run.sh
./julia/run.sh
./ruby/run.sh
./fortran/run.sh
./cobol/run.sh

./csharp/run.sh
./assembly/run.sh
./C/run.sh

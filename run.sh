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

sudo ./nodejs/run.sh
sudo ./R/run.sh
sudo ./python/run.sh
sudo ./basic/yabasic.sh
sudo ./go/run.sh

sudo ./java/run.sh
sudo ./julia/run.sh
sudo ./ruby/run.sh
sudo ./fortran/run.sh
sudo ./cobol/run.sh

sudo ./csharp/run.sh
sudo ./assembly/run.sh
sudo ./C/run.sh
sudo ./pascal/run.sh

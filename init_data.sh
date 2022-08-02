# 공유폴더 확인
if [ -d "/home/master/nfs" ]; then
    echo "NFS shared folder ready"
else
    echo "NFS shared folder not exist"
    exit
fi

if [ -d "/home/master/nfs/veni-nginx" ]; then
    echo "Nginx folder already exist"
else
    mkdir /home/master/nfs/veni-nginx
    mkdir /home/master/nfs/veni-nginx/htdocs
    mkdir /home/master/nfs/veni-nginx/conf.d

    # 설정 파일 복사
    cp ./src/veni-nginx/default.conf /home/master/nfs/veni-nginx/conf.d
fi

if [ -d "/home/master/nfs/veni-api" ]; then
    echo "Nginx folder already exist"
else
    mkdir /home/master/nfs/veni-api
    mkdir /home/master/nfs/veni-api/config
    mkdir /home/master/nfs/veni-api/upload
fi

if [ -d "/home/master/nfs/veni-db" ]; then
    echo "Nginx folder already exist"
else
    mkdir /home/master/nfs/veni-db
    mkdir /home/master/nfs/veni-db/data
    mkdir /home/master/nfs/veni-db/conf
fi


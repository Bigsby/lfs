sudo mkdir -v $LFS/sources
sudo chmod -v a+wt $LFS/sources
wget http://www.linuxfromscratch.org/lfs/view/stable/wget-list
http://www.linuxfromscratch.org/lfs/view/stable/md5sums
wget --input-file=wget-list --continue --directory-prefix=$LFS/sources
pushd $LFS/sources
md5sum -c ~/md5sums
popd

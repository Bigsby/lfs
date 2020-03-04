sudo fdisk /dev/sdb << end
n
p
1


w
end

sudo mkfs -v -t ext4 /dev/sdb1
sudo mkdir -pv /mnt/lfs
sudo echo -e "\n/dev/sdb1\t/mnt/lfs\text4\tdefaults\t0\t0\n" | sudo tee /etc/fstab
sudo mount -a

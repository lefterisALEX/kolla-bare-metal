# assuming a partition /dev/sdb1 is created
pvcreate /dev/sdb1
vgcreate compute001-vg /dev/sdb1
lvcreate -L 280GB -n cinder-vols compute001-vg 
pvcreate /dev/compute001-vg/cinder-vols
vgcreate cinder-volumes /dev/compute001-vg/cinder-vols

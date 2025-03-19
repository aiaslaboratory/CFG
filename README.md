Installation

pip install -r requirements.txt


Dataset

ModelNet40, ScanObjectNN


Our attack 

python attack.py --arch=PointNet  --cc_linf=0.18/0.45


defense

python defense.py --datadir Exps/PointNet_npoint1024//Mat \
	--npoint 1024 --arch PointNet \
	--defense_type outliers_fixNum --drop_num 128

evalute

python evaluate.py --arch=PointNet --datadir=Results/PointNet/Mat

Model
PointNet   PointNetPP_msg  PointNetPP_ssg  DGCNN  pointconv  pointcnn  curvenet  PCT point_pn 

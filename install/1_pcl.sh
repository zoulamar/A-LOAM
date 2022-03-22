mkdir -p ~/sources
cd ~/sources
git clone git@github.com:PointCloudLibrary/pcl.git
cd pcl

mkdir -p build
cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
make -j $(nproc)
sudo make install


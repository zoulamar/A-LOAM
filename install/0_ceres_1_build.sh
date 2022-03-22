mkdir -p ~/sources/ceres
cd ~/sources/ceres

curl http://ceres-solver.org/ceres-solver-2.0.0.tar.gz | tar zxf -

mkdir ceres-bin
cd ceres-bin
cmake ../ceres-solver-2.0.0
make -j $(nproc)
#make test
# Optionally install Ceres, it can also be exported using CMake which
# allows Ceres to be used without requiring installation, see the documentation
# for the EXPORT_BUILD_DIR option for more information.
sudo make install


# prerequisite: install cuda version x.x
# make sure:
# PATH includes /usr/local/cuda-11.2/bin
# LD_LIBRARY_PATH includes /usr/local/cuda-11.2/lib64

# change cuda simlink
cd /usr/local
sudo rm cuda
sudo ln -s cuda-x.x cuda

# different cudnn versions
tar -xzvf cudnn-x.x-linux-x64-v6.0.tgz
sudo cp cuda/include/cudnn.h /usr/local/cuda-x.x/include
sudo cp cuda/lib64/libcudnn* /usr/local/cuda-x.x/lib64
sudo chmod a+r /usr/local/cuda-x.x/include/cudnn.h /usr/local/cuda-x.x/lib64/libcudnn*

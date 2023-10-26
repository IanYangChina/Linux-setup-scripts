# prerequisite: install cuda version x.x
# make sure:
# PATH includes /usr/local/cuda-11.2/bin
# LD_LIBRARY_PATH includes /usr/local/cuda-11.2/lib64
# Remove other cuda versions from the PATH and LD_LIBRARY_PATH variables

# change cuda simlink
cd /usr/local
sudo rm cuda
sudo ln -s cuda-x.x cuda

# different cudnn versions
$ tar -xvf cudnn-linux-$arch-8.x.x.x_cudaX.Y-archive.tar.xz
$ sudo cp cudnn-*-archive/include/cudnn*.h /usr/local/cuda/include 
$ sudo cp -P cudnn-*-archive/lib/libcudnn* /usr/local/cuda/lib64 
$ sudo chmod a+r /usr/local/cuda/include/cudnn*.h /usr/local/cuda/lib64/libcudnn*

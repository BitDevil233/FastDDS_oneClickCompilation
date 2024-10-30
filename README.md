# Fast-DDS
为了达到micRos一键编译的要求，需要将FastDDS的源码、FastCDR、foonathan memory的源码合在一起，故修改了三个工程的CMakeLists.txt，此工程为FastDDS的一键编译版本。
# 一键编译
进入Fast-DDS-2.8.0的build路径下，依次执行以下命令

```shell
cmake ..
make -j
make install
```
即可编译FastDDS的源码并安装到install路径下，具体安装路径可在Fast-DDS-2.8.0/CMakeLists.txt的36行修改

# 修改说明
基于源码的所有修改都标注有zac202309xx


# xiugai
# 编译前提
要想成功编译FastDDS源码，需要先安装一些库，可通过apt从原服务器安装
## 安装Asio和tinyxml2
sudo apt install libasio-dev libtinyxml2-dev
## 安装openssl库
sudo apt install libssl-dev

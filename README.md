# 项目介绍
本项目支持将从Linux Cooked Capture Header网卡抓取的SLL帧转换为常见的以太网帧。 
代码根据实验室师兄的从Linux NFLOG网卡抓取的NFLOG 帧转换为常见的以太网帧代码改进而来，原项目地址为https://github.com/jmhIcoding/nflog_to_eth.git
感谢师兄

# 项目地址：
https://github.com/LeafCloud/sll_to_eth.git

# 环境要求：

Windows : 需要安装VC++ 2013 运行库

Linux : 需要安装g++, libpcap-dev

# 项目编译方式

Linux环境下
```sh
sudo apt-get install libpcap-dev
git clone https://github.com/LeafCloud/sll_to_eth.git
cd sll_to_eth
make
```


# 使用方法

sll_to_eth接受2个参数: 

- src_pcapname : 源SLL格式的pcap文件
- dst_pcapname : 目的文件地址


bin目录下有一个.pcap的测试文件：里面的数据包是被SLL封装了。
# 其他
目前以太网帧里面的源MAC地址和目的MAC是硬编码在 `src/main.cpp` 文件：

```cpp
#define SRC_MAC {0x11,0x11,0x11,0x11,0x11,0x11}		//源MAC
#define DST_MAC {0x22,0x22,0x22,0x22,0x11,0x11}		//目的MAC
```
如果需要源和目的MAC,可以自己修改这两个宏的定义，然后重新编译程序即可。

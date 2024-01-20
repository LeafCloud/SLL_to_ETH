# 项目介绍
本项目支持将从Linux Cooked Capture Header网卡抓取的SLL帧转换为常见的以太网帧。 

# 项目地址：
https://github.com/LeafCloud/sll_to_eth.git

# 环境要求：

Windows : 需要安装VC++ 2013 运行库

Linux : 需要安装g++, libpcap-dev

# 项目编译方式

## 预编译安装
目前项目已经在预编译好Win10 x64和 Ubuntu 18.04 x64平台下的可执行文件,可执行文件在bin目录.


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

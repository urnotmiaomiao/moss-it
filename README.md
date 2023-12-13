# moss-it

运行环境：Ubuntu

## 准备工作

https://theory.stanford.edu/~aiken/moss/

1. send an email to register an account
2. get the reply email
3. do to moss similarity detection

- [ ] moss for AOS Project 1 查重
	- [x] 1. download register moss
	- [x] 2. download assignments files
	- [x] 3. 脚本解压缩
		- [x] bash 脚本
			- [x] 解压缩 
				- 解压zip
				- 解压tar
				- `unzip.sh [path] [type(zip|rar|tar.gz)]`
			- [x] 字符匹配：文件名
				- [bash 字符匹配](https://wangdoc.com/bash/expansion.html)
			- [x] rename
				- `format-name.sh`
		- [x] 4. moss them & get the report
		- `chmod ug+x moss`
		- 参考：`moss-it.sh`

## 流程 (to run scripts)

1. replace-space
2. format-name
3. unzip
4. cp-files
5. moss-it (use it in the folder `unzip`)

# 一些笔记
## 解压缩

### zip

[参考链接](https://blog.csdn.net/shenyunsese/article/details/17556089)

#### 压缩 zip

```bash
zip -r myfile.zip ./*
# 压缩当前目录下所有文件&文件夹到 myfile.zip
```

#### 解压缩 unzip
```bash
unzip -o -d [unzip-to-directory] [to-be-unzipped-file]
```

`-o` : 不提示的情况下，覆盖文件
`-d [unzip-to-directory]` : 解压到指定位置 



### tar

[参考链接](https://www.cnblogs.com/cursorhu/p/5891699.html)

#### `tar.gz`

```bash
tar -zxvf xxx.tar.gz
```

- z: g**z**ip 压缩格式
- x:  e**x**tract 解压
- v: **v**erbose 详细信息
- f: **f**ile(file=archieve) 文件

#### `tar.bz2

```bash
tar -jxvf xxx.tar.bz2
```

- j: bzip2 压缩格式

其中zxvf含义分别如下, ...


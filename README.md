# nvim 配置文件

## clone (克隆项目配置)
克隆项目到nvim配置文件目录 `~/.config/nvim`

```bash
git clone https://github.com/aug0cz/init.nvim.git ~/.config/nvim
```

## packer 安装

克隆packer.nvim项目进行安装
[packer github](https://github.com/wbthomason/packer.nvim)

安装完成后执行 `PackerSync` 进行包同步

## 创建目录

```bash
mkdir -p ~/.config/nvim/{plugged,plugin}
```


## ⚠️ 注意
mason.nvim 安装lsp语言服务，如果无法找到路径。需要添加PATH
```bash
# 请添加到你的.bashrc或者.zshrc等
export PATH="~/.local/share/nvim/mason/bin":$PATH
```


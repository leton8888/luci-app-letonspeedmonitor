# LuCI Speed Monitor

[![GitHub Actions](https://github.com/leton8888/luci-app-letonspeedmonitor/workflows/Build%20OpenWrt%20Plugin/badge.svg)](https://github.com/leton8888/luci-app-letonspeedmonitor/actions)
[![GitHub release (latest by date)](https://img.shields.io/github/v/release/leton8888/luci-app-letonspeedmonitor)](https://github.com/leton8888/luci-app-letonspeedmonitor/releases)
[![GitHub license](https://img.shields.io/github/license/leton8888/luci-app-letonspeedmonitor)](https://github.com/leton8888/luci-app-letonspeedmonitor/blob/main/LICENSE)

一个用于 OpenWrt 的网络速度监控应用。

## 功能特点

- 实时监控网络速度
- 支持多接口监控
- 简洁的用户界面

## 安装说明

### 从 Release 安装

1. 下载最新的 ipk 文件
2. 通过 OpenWrt Web 界面上传并安装
3. 或者通过 SSH 安装：
   ```bash
   opkg install luci-app-letonspeedmonitor_*.ipk
   ```

### 从源码编译

```bash
# 克隆 OpenWrt 源码
git clone https://github.com/openwrt/openwrt.git
cd openwrt

# 克隆插件源码
git clone https://github.com/leton8888/luci-app-letonspeedmonitor.git package/luci-app-letonspeedmonitor

# 更新 feeds
./scripts/feeds update -a
./scripts/feeds install -a

# 配置
make menuconfig
# 选择 LuCI -> Applications -> luci-app-letonspeedmonitor

# 编译
make package/luci-app-letonspeedmonitor/compile V=s
```

## 使用方法

1. 安装后在 OpenWrt 的 LuCI 界面中找到 "Speed Monitor"
2. 点击进入即可查看网络速度监控

## 开发说明

本项目使用 GitHub Actions 进行自动化构建。每次推送到 main 分支都会触发构建，并生成新的 Release。

### 本地开发环境设置

1. 安装必要的依赖
2. 配置 WSL 开发环境
3. 使用 VSCode 进行开发

## 许可证

GPL-3.0 
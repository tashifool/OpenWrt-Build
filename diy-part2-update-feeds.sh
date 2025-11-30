# !/bin/bash
# Update all feeds
./scripts/feeds update -a


# DIY part 2: 从 ImmortalWrt 仓库更新指定软件包
git clone -b master --single-branch https://github.com/immortalwrt/packages.git packages_master
rm -rf ./feeds/packages/lang/golang
mv ./packages_master/lang/golang ./feeds/packages/lang
rm -rf ./packages_master
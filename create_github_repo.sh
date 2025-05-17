#!/bin/bash

# 获取项目名
PROJECT_NAME="$(basename "$PWD")"
PACKAGE_DIR="${PROJECT_NAME}Package"

# 检查是否在根目录（即 package 目录存在）
if [ ! -d "$PACKAGE_DIR" ]; then
  echo "❌ 请在项目根目录（包含 $PACKAGE_DIR 目录）下运行本脚本！"
  exit 1
fi

# 无需外部参数，自动获取项目名和描述，默认私有仓库
set -e

if ! command -v gh &> /dev/null; then
  echo "❌ 未检测到 GitHub CLI (gh)，请先安装并登录：brew install gh && gh auth login"
  exit 1
fi

# 自动获取项目名和描述
REPO_NAME="$PROJECT_NAME"
DESCRIPTION="Swift Package for $PROJECT_NAME"
VISIBILITY="--private"

# 如果当前目录不是 git 仓库则初始化
echo "📦 检查 git 仓库..."
if [ ! -d .git ]; then
  git init
  git add .
  git commit -m "init"
fi

# 创建远程仓库并推送
echo "🚀 正在创建远程仓库 hoewo/$REPO_NAME ..."
gh repo create hoewo/"$REPO_NAME" $VISIBILITY --description "$DESCRIPTION" --source=. --push --confirm --team hoewo

echo "✅ 远程仓库 $REPO_NAME 创建并推送完成！" 
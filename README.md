## 新建文件夹
cd 到这个文件夹目录下
```
cd Path
```

## 执行脚本： 初始化 Package
```
 curl -fsSL "https://raw.githubusercontent.com/hoewo/StartSwiftUIMain/refs/heads/main/create_package.sh" | bash
```


## 使用（GitHub CLI `gh`）自动在 GitHub 上创建远程仓库，你可以按以下步骤操作：

---

### 1. 安装 GitHub CLI

macOS 下可用 Homebrew 安装：

```bash
brew install gh
```

---

### 2. 登录 GitHub 账号（只需首次执行）

```bash
gh auth login
```
按提示选择 GitHub.com、HTTPS、浏览器登录，完成授权。

### 3. 执行脚本：初始化 Git，创建远程仓库，并推送
```
 curl -fsSL "https://raw.githubusercontent.com/hoewo/StartSwiftUIMain/refs/heads/main/create_github_repo.sh" | bash
```

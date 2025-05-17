# 直接执行
bash create_package.sh

# 可选，直接创建远程仓库

使用方案一（GitHub CLI `gh`）自动在 GitHub 上创建远程仓库，你可以按以下步骤操作：

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

---

### 3. 脚本中创建远程仓库

假设你要用脚本自动创建一个公开仓库，并推送本地代码：

```bash
# 变量
REPO_NAME="你的仓库名"
DESCRIPTION="你的仓库描述"

# 创建远程仓库（公开）
gh repo create "$REPO_NAME" --public --description "$DESCRIPTION" --source=. --push --confirm
```

- `--public`：公开仓库，改为 `--private` 可创建私有仓库
- `--source=.`：用当前目录初始化仓库
- `--push`：自动推送本地代码
- `--confirm`：无需交互确认

---

### 4. 脚本集成示例

你可以把上面命令加到你的 shell 脚本里，实现一键创建和推送：

```bash
# 假设已在项目目录下
REPO_NAME="MyApp"
DESCRIPTION="My Swift Package App"

gh repo create "$REPO_NAME" --public --description "$DESCRIPTION" --source=. --push --confirm
```

---

### 5. 注意事项

- 需要提前在 GitHub 登录一次（`gh auth login`）。
- 本地目录不能已是 git 仓库，或者你可以先 `git init`，再用 `gh repo create`。
- 如果脚本自动化，建议加 `--confirm` 以避免交互。

---

如需完整自动化脚本或有特殊需求，请告知！


# 脚本执行成功后创建工作区文件，工作区文件夹为 Package 目录


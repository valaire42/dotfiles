# dotfiles

macOS 个人配置文件集，通过软链接管理 `~/.config/` 下的各工具配置。

## 工具栈

| 类别 | 工具 |
|------|------|
| Shell | Fish + Starship |
| 终端 | Ghostty + tmux |
| 编辑器 | Neovim (LazyVim) |
| Git | lazygit + delta |
| 文件管理 | yazi + eza + fd + zoxide |
| 搜索 | fzf + ripgrep |
| 系统监控 | btop + bat + dua-cli |
| 键位映射 | Karabiner-Elements (Goku) |
| 语言运行时 | Go + Node (pnpm/bun) + Python (uv/Conda) |
| 包管理 | Homebrew |

## 目录结构

```text
dotfiles/
├── bat/         # bat 语法高亮配置
├── btop/        # btop 系统监控配置
├── claude/      # Claude Code 全局指令 (symlink -> ~/.claude/)
├── conda/       # Conda (Miniforge) 环境配置
├── fish/        # Fish shell 配置、函数、补全
├── ghostty/     # Ghostty 终端配置与 shader 特效
├── git/         # Git 配置、ignore、delta 主题
├── karabiner/   # Karabiner 键位映射 (Goku EDN 源)
├── lazygit/     # lazygit 配置
├── nvim/        # Neovim 配置 (LazyVim)
├── scripts/     # setup、restore、privacy 脚本
├── starship/    # Starship 提示符配置
├── tmux/        # tmux 配置与插件
├── yazi/        # yazi 文件管理器配置与插件
├── Brewfile     # Homebrew 软件包清单
└── README.md
```

## 安装

**全新 macOS 机器**（包含 SSH key 生成、Homebrew 安装、克隆仓库等完整流程）：

```sh
bash scripts/setup.sh
```

**已有 macOS 机器**（仅恢复软链接和安装软件包）：

```sh
git clone git@github.com:valaire42/dotfiles.git ~/dotfiles
cd ~/dotfiles
bash scripts/restore.sh
```

`restore.sh` 所做的工作：
- 将各配置目录软链接到 `~/.config/`
- 将 `claude/CLAUDE.md` 链接到 `~/.claude/CLAUDE.md`
- 安装 `Brewfile` 中定义的所有软件包
- 将默认 Shell 切换为 Fish

## 日常使用

### 一键更新

```fish
u
```

更新所有工具链：Homebrew、Conda、Node、Python/uv、Fisher 插件、tmux/TPM 插件、Neovim (Lazy + Mason)、Yazi 插件、MAS 清理、Mole 清理，并自动同步 Brewfile。

### Ghostty 主题

```fish
ghostty_theme              # fzf 交互式预览 + 实时切换，Esc 恢复
ghostty_theme current      # 查看当前主题
ghostty_theme list         # 列出所有主题
```

### 文件管理器

```fish
y          # 启动 yazi，退出自动 cd 到浏览目录
```

### fzf 快捷搜索

| 快捷键 | 功能 |
|--------|------|
| `Ctrl+T` | 搜索目录并 cd |
| `Ctrl+R` | 搜索命令历史 |
| `Ctrl+G` | ripgrep 全文搜索 |

### 常用缩写

| 缩写 | 展开 | 说明 |
|------|------|------|
| `v` | `nvim` | 编辑器 |
| `lg` | `lazygit` | Git TUI |
| `c` | `clear` | 清屏 |
| `s` | `exec fish` | 重载 shell |
| `bi` / `bri` / `bui` | `brew install / reinstall / uninstall --zap` | Homebrew 包管理 |
| `bu` / `bc` | `brew update; brew upgrade` / `brew autoremove; brew cleanup` | 更新与清理 |
| `el` / `et` | `eza --long ...` / `eza --tree ...` | 文件列表 / 目录树 |
| `ca` / `cde` | `conda activate / deactivate` | Conda 环境 |
| `tn` / `ta` / `tk` | `tmux new -s / attach / kill-session` | tmux 会话管理 |
| `yau` / `yaa` / `yad` | `ya pkg upgrade / add / delete` | Yazi 插件管理 |

更多缩写见 `fish/config.fish`。

## 隐私脚本

`scripts/` 目录包含由 [privacy.sexy](https://privacy.sexy) 生成的 macOS 隐私与安全脚本：

| 脚本 | 用途 |
|------|------|
| `privacy-cleanup.sh` | 清理系统日志、缓存与隐私痕迹 |
| `privacy-configure-os.sh` | 配置系统隐私与安全选项 |
| `privacy-security-improvements.sh` | 强化系统安全设置 |

# dotfiles

基于软链接管理的 macOS 个人配置文件。

## 工具栈

| 类别 | 工具 |
|------|------|
| Shell | Fish + Starship |
| 终端 | Ghostty + tmux |
| 编辑器 | Neovim (AstroNvim) |
| Git | lazygit + delta |
| 文件管理 | yazi + eza + fd |
| 搜索 | fzf + ripgrep |
| 系统工具 | btop + bat |
| 键位映射 | Karabiner-Elements (Goku) |
| 包/环境管理 | Homebrew + pnpm + bun + uv + Conda |

## 目录结构

```text
dotfiles/
├── bat/         # bat 语法高亮配置
├── btop/        # btop 系统监控配置
├── claude/      # Claude Code 全局指令
├── conda/       # Conda (Miniforge) 环境配置
├── fish/        # Fish shell 配置
├── ghostty/     # Ghostty 终端配置
├── git/         # Git 配置
├── karabiner/   # Karabiner 键位配置
├── lazygit/     # lazygit 配置
├── nvim/        # Neovim 配置 (AstroNvim)
├── starship/    # Starship 终端提示符配置
├── tmux/        # tmux 配置
├── yazi/        # yazi 文件管理器配置
├── scripts/     # 安装、恢复与隐私脚本
└── Brewfile     # Homebrew 软件包列表
```

## 安装

**全新 macOS 机器**（包含 SSH、Homebrew、克隆仓库等完整流程）：

```sh
bash scripts/setup.sh
```

**已有 macOS 机器**（仅恢复软链接和安装软件包）：

```sh
git clone git@github.com:valaire42/dotfiles.git ~/dotfiles
cd ~/dotfiles
bash scripts/restore.sh
```

`restore.sh` 会将各配置目录软链接到 `~/.config/`，将 `claude/CLAUDE.md` 链接到 `~/.claude/CLAUDE.md`，安装 Brewfile 中的所有软件包，并将默认 Shell 切换为 Fish。

## 使用

### 一键更新

```fish
u
```

更新所有内容：Homebrew、Conda、Node、Python/uv、Fisher 插件、tmux/TPM 插件、Neovim 插件与 Mason 包、Yazi 插件、Mole 清理。

### Ghostty 主题切换

```fish
ghostty_theme
```

通过 fzf 交互式预览并实时切换 Ghostty 主题，按 Esc 取消并恢复原主题。

### 文件管理器

```fish
y
```

启动 yazi，退出时自动 `cd` 到浏览的目录。

### fzf 快捷搜索

| 快捷键 | 功能 |
|--------|------|
| `Ctrl+T` | 搜索目录并 cd |
| `Ctrl+R` | 搜索命令历史 |

### 常用缩写

| 缩写 | 展开 | 说明 |
|------|------|------|
| `v` | `nvim` | 编辑器 |
| `lg` | `lazygit` | Git 管理 |
| `c` | `clear` | 清屏 |
| `s` | `exec fish` | 重载 shell |
| `bi` | `brew install` | 安装软件包 |
| `bui` | `brew uninstall --zap` | 卸载软件包 |
| `el` | `eza --long --header --icons --git --all` | 文件列表 |
| `et` | `eza --tree --level=2 ...` | 目录树 |
| `ca` | `conda activate` | 激活环境 |
| `tn` | `tmux new -s` | 新建会话 |
| `ta` | `tmux attach` | 附加会话 |

更多缩写见 `fish/config.fish`。

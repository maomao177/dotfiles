#!/bin/bash

# 脚本所在的目录
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# 定义要管理的配置文件列表
files_to_link=".bashrc .vimrc .tmux.conf .profile .zshrc"

echo "Creating symlinks..."

for file in $files_to_link; do
    # 如果仓库里有这个文件
    if [ -f "$DOTFILES_DIR/$file" ]; then
        # 如果主目录里已经有同名文件/链接，先备份
        if [ -e ~/$file ]; then
            echo "Backing up existing ~/$file to ~/$file.bak"
            mv ~/$file ~/$file.bak
        fi
        # 创建符号链接
        echo "Linking $DOTFILES_DIR/$file to ~/$file"
        ln -s "$DOTFILES_DIR/$file" ~/$file
    fi
done

echo "Done. Please run 'source ~/.bashrc' or restart your shell."

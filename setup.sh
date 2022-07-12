mkdir ~/old-dotfiles/
mv ~/.config/nvim ~/old-dotfiles/nvim
mv ~/.tmux.conf ~/old-dotfiles/.tmux.conf
mv ~/.zshrc ~/old-dotfiles/.zshrc

ln -s -r ~/dotfiles/nvim ~/.config
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/tmux-starter.sh ~/tmux-starter.sh

tmux source-file ~/.tmux.conf

# JT's VIM Configuration
This is my Vim configuration which includes many plugins and a custom .vimrc (and gvimrc as needed). 

## Included Plugins

*   Pathogen
*   LatexBox
*   AutoTag
*   MatLabFilesEdition
*   MWTools
*   NerdTree
*   Mini-buf mod
*   ObviousMode
*   tlib\_vim
*   vim-surround
*   SnipMate
*   Fugitive
*   Gundo
*   tagbar
*   Syntastic
*   Autopairs
*   Garbas

Each of these above modules is included as a git submodule for update purposes. 

## Installing instructions
1. Clone the git repository into .vim/ directory

		cd ~/.vim/
		git clone git://github.com/jtmitchum/VIMCONFIG.git

2. Initialize the submodules which contain all the plugins
		git submodule init

3. Update submodules
		git submodule update

That should be it. 

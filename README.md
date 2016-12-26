# vim
some configuration about vim
lvsenlv create this project by transplanting others 

**********按键**********
F3 NERDTree  目录树
F9 Tlist     列出了当前文件中的所有宏, 全局变量, 函数名等
F8 WMToggle  将NERDTree与Tlist合并显示
    /*
      若要修改显示的位置，修改winmanager.vim插件）
      wincmd H   左侧
      wincmd L   右侧
    */
F4           查找光标处，在指定的范围内的文件中查找
:cw          quickfix窗口

**********快捷键×××××××××
ctrl 鼠标左键    查看函数、变量等等
ctrl ]           查看函数、变量等等
ctrl t           退回一步

***技巧按键***按下ctrl \ 后，释放并按下对应字母，需要掌握按键时机，不可过快过慢
ctrl \ g         查看光标处函数、变量等等
ctrl \ c         查看光标处，调用该函数的文件


**********安装***********

1. 运行vim-master目录下的setup.sh
2. 增添winmanager插件
3. 增添minibufexplorer
   minibufexplorer会与其他插件有点小冲突:
       ctrl ] 然后 ctrl t 就会弹出多余方框、WMToggle显示方框异常等等；
   解决方式: vim一个文件后，在Tlist中任意打开另一个文件即可
4. 增添grep插件

**********创建tags文件*************
在工程文件最上层目录下，执行 ctags -R
**********创建cscope文件***********
在工程文件最上层目录下，执行 cscope -Rbq


***********************************
更多具体内容，参见
http://blog.csdn.net/lhf_tiger/article/details/7216500


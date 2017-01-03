# vim_config  
some configuration about vim  
**lvsenlv create this project by transplanting others**  

---

###1. 安装说明  
运行目录下的setup.sh  

###2. 创建 tags 文件  
在工程文件目录 project_path 下执行：  

		ctags -R -f ~/.vim/tags project_path 

**注意：为了确保实现跳转，project_path 最好使用绝对路径。如：**

		ctags -R -f ~/.vim/tags /root/project_path
		ctags -R -f ~/.vim/tags ~/project_path

若要实现跳转到C标准库，则在 /usr/include 目录下执行：  

		ctags -R --c-kinds=+p

若要实现跳转到库文件，则在 /usr/local/include 目录下执行：  

		ctags -R --c-kinds=+p

关于ctags的更多用法，请关注 [ctags使用详解](http://blog.csdn.net/gangyanliang/article/details/6889860)  

###3. 创建cscope文件  
在工程文件目录下，执行 cscope -Rbq  

###4. 按键说明  
>     F3 NERDTree      目录树  
>     F9 Tlist         列出了当前文件中的所有宏, 全局变量, 函数名等  
>     F8 WMToggle      将NERDTree与Tlist合并显示  
    /*
      若要修改显示的位置，修改winmanager.vim插件）
      wincmd H   左侧
      wincmd L   右侧
    */

>     F4               查找光标处，在指定的范围内的文件中查找

###5. 快捷键
>     ctrl 鼠标左键     查看函数、变量等等
>     ctrl 鼠标右键     后退一步  
>     ctrl ]           查看函数、变量等等  
>     ctrl t           退回一步  

***技巧按键***按下ctrl \ 后，释放并按下对应字母，需要掌握按键时机，不可过快过慢
ctrl \ g         查看光标处函数、变量等等
ctrl \ c         查看光标处，调用该函数的文件

###6. 末行模式下的命令
>     :cw              打开quickfix窗口

###7. 其它说明
minibufexplorer会与其他插件有点小冲突:  
>**ctrl　]** 　之后　 **ctrl t** 　就会弹出多余方框、WMToggle显示方框异常等等；  
>解决方式: vim一个文件后，在Tlist中任意双击打开另一个文件即可

###更多具体内容，参见：[超详细的vim+cscope 的使用](http://blog.csdn.net/lhf_tiger/article/details/7216500)


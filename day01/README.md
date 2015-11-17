

##4种线程技术

    | 技术方案 |语言  | 线程生命周期 | 使用频率 | 简介 |
    |:-------:|:--: |:----------:|:-------:|------|
    |pthread  | C   |程序员管理    |几乎不用  |
    * 一套通用的多线程API
    * 适用于Unix、Linux、Window等系统
    * 跨平台\可移植
    * 使用难度大                                     |
    |NSThread | OC  |程序员管理    |偶尔使用  |
    * 使用更加面向对象
    * 简单易用，可直接操作线程对象                      |
    |GCD      | C   |自动管理     | 经常使用  |
    * 旨在替代NSThread等线程技术
    * 充分利用设备的多核                              |
    |NSOperation| OC |自动管理    | 经常使用  |
    * 基于GCD（底层是GCD）
    * 比GCD多了一些更简单实用的功能
    * 使用更加面向对象                                |

    
##NSThread

    //获得当前线程，在开发中经常打印。所有多线程技术都能使用这个方法
    // number = 1 主线程 name = main ；  number ！= 1 子线程
    `[NSThread currentThread];`
    `NSLog(@"%@",[NSThread currentThread]);`
    
##开启子线程

    //1.后台执行
    `[self performSelectorInBackground:@selector(longTimeOperation) withObject:nil];`

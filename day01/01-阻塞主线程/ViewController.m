//
//  ViewController.m
//  01-阻塞主线程
//
//  Created by C_bin on 15/11/18.
//  Copyright © 2015年 C_bin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    
    NSLog(@"%@",[NSThread currentThread]);
//    [self longTimeOperation];
    //将耗时操作放到子线程中执行
//    [self performSelectorInBackground:@selector(longTimeOperation) withObject:nil];
   
//    [self performSelectorOnMainThread:@selector(longTimeOperation) withObject:nil waitUntilDone:YES];
    
    [self performSelectorOnMainThread:@selector(longTimeOperation) withObject:nil waitUntilDone:NO modes:nil];
    
}

#pragma mark - 耗时操作
-(void)longTimeOperation
{
    for (int i=0; i<20000; i++) {
        NSLog(@"%@",[NSThread currentThread]);
    }
}

@end

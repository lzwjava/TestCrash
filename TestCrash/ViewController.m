//
//  ViewController.m
//  TestCrash
//
//  Created by lzw on 15/6/10.
//  Copyright (c) 2015年 lzwjava 微信: lzwjava. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)crash {
    [NSException raise:NSGenericException format:@"模拟一条崩溃信息。%@", [NSDate date]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"运行此Demo 请停止调试，从 Home 界面打开应用。五秒过后将崩溃，请到\"网站-分析-错误分析\"看崩溃信息");
    [self performSelector:@selector(crash) withObject:self afterDelay:5];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  ViewController.m
//  UIviewControl生命周期
//
//  Created by myApplePro01 on 16/6/7.
//  Copyright © 2016年 LSH. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"%@ - viewDidLoad", self.class);
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    NSLog(@"%@ - viewWillAppear", self.class);
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    NSLog(@"%@ - viewDidAppear", self.class);
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    NSLog(@"%@ - viewWillDisappear", self.class);
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    
    NSLog(@"%@ - viewDidDisappear", self.class);
}

- (void)didReceiveMemoryWarning
{
    // 调用父类的didReceiveMemoryWarning方法，当前视图有可能会被销毁
    [super didReceiveMemoryWarning];
    
    NSLog(@"%@ - didReceiveMemoryWarning", self.class);
    
    // 判断视图是否还存在
    if (!self.isViewLoaded) {
        // 清理数据工作
        // self.dataList = nil;
    }
}

//- (void)viewWillUnload
//{
//    [super viewWillUnload];
//    
//    NSLog(@"%@ - viewWillUnload", self.class);
//}
//
//- (void)viewDidUnload
//{
//    [super viewDidUnload];
//    
//    NSLog(@"%@ - viewDidUnload", self.class);
//}

@end

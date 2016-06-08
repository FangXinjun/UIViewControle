//
//  twoViewController.m
//  UIviewControl生命周期
//
//  Created by myApplePro01 on 16/6/7.
//  Copyright © 2016年 LSH. All rights reserved.
//

#import "twoViewController.h"
#import "FXJView.h"

@interface twoViewController ()

@end

@implementation twoViewController

- (void)loadView
{
    self.view = [[FXJView alloc] init];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    NSLog(@"%@", NSStringFromCGRect(self.view.frame));
}

- (void)dealloc
{
    NSLog(@"%@ 被释放", self.class);
}

@end

//
//  onecontrolViewController.m
//  UIviewControl生命周期
//
//  Created by myApplePro01 on 16/6/7.
//  Copyright © 2016年 LSH. All rights reserved.
//

#import "onecontrolViewController.h"
#import "FXJView.h"
#import "twoViewController.h"

@interface onecontrolViewController ()

@end

@implementation onecontrolViewController

- (void)loadView
{
    self.view = [[FXJView alloc] initWithFrame:[UIScreen mainScreen].bounds];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeContactAdd];
    button.center = self.view.center;
    [self.view addSubview:button];
    [button addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    
    NSLog(@"%@", NSStringFromCGRect(self.view.frame));
}

- (void)click
{
    twoViewController *two = [[twoViewController alloc] init];
    [self.navigationController pushViewController:two animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

//
//  ViewController.m
//  UIBezierPath
//
//  Created by 陈诚 on 16/3/21.
//  Copyright © 2016年 test. All rights reserved.
//

#import "ViewController.h"
#import "BezierPathView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self showBezierPathView];
}
- (void)showBezierPathView
{
    BezierPathView *bezierV = [[BezierPathView alloc]initWithFrame:CGRectMake(20, 20, self.view.frame.size.width - 40, self.view.frame.size.width - 40)];
    [self.view addSubview:bezierV];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

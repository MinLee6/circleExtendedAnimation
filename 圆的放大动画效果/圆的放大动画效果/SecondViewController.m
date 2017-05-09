//
//  SecondViewController.m
//  圆的放大动画效果
//
//  Created by limin on 17/5/7.
//  Copyright © 2017年 none. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    self.view.backgroundColor = [UIColor whiteColor];
    UIImageView *presentView = [[UIImageView alloc]initWithFrame:(CGRect){0, 0,self.view.frame.size.width, self.view.frame.size.height}];
    presentView.image = [UIImage imageNamed:@"countDownBg"];
    presentView.alpha = 1.0;
    [self.view addSubview:presentView];
    
    UIImageView *secView = [[UIImageView alloc]initWithFrame:(CGRect){200, 200,100, 100}];
    secView.backgroundColor = [UIColor redColor];
    secView.alpha = 1.0;
    [self.view addSubview:secView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

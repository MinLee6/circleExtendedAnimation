//
//  ViewController.m
//  圆的放大动画效果
//
//  Created by limin on 17/5/7.
//  Copyright © 2017年 none. All rights reserved.
//

#import "ViewController.h"
#import "LoadReadyWindow.h"
#import "SecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor purpleColor];
    
}

- (IBAction)startBtnClick:(UIButton *)sender {
    LoadReadyWindow *loadView = [[LoadReadyWindow alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height) imageName:@"countDownBg"];
    loadView.startFrame = sender.frame;
    [loadView setAnimationStopOperation:^{
        SecondViewController *vc = [[SecondViewController alloc]init];
        [self.navigationController pushViewController:vc animated:NO];
    }];
    [loadView makeOuttoAnimation];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

//
//  ThirdViewController.m
//  swift代理
//
//  Created by wyf on 2017/8/17.
//  Copyright © 2017年 FanFanKJ. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor blueColor];
    UILabel * label = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    label.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:label];
    
    UIButton * btn = [[UIButton alloc]initWithFrame:CGRectMake(100, CGRectGetMaxY(label.frame), 100, 100)];
    
    [self.view addSubview:btn];
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.navigationController popViewControllerAnimated:YES];
    [self.delegate acceptsome:@"WYF"];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

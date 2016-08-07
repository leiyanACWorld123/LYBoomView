//
//  ViewController.m
//  破碎动画
//
//  Created by apple on 16/8/7.
//  Copyright © 2016年 雷晏. All rights reserved.
//
#define padding 20
#import "ViewController.h"
#import "UIView+Boom.h"

@interface ViewController ()

@property (nonatomic,strong) UIImageView *bgView1;
@property (nonatomic,strong) UIImageView *bgView2;
@property (nonatomic,strong) UIImageView *bgView3;
@property (nonatomic,strong) UIImageView *bgView4;
@property (nonatomic,strong) UIImageView *bgView5;
@property (nonatomic,strong) UIImageView *bgView6;
@property (nonatomic,strong) UIImageView *bgView7;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, 100, 30);
    button.center = CGPointMake(self.view.center.x,CGRectGetHeight(self.view.frame)-200);
    button.backgroundColor = [UIColor blackColor];
    button.layer.cornerRadius = 10;
    button.layer.masksToBounds = YES;
    [button setTitle:@"爆炸" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    self.bgView1 = [[UIImageView alloc]initWithFrame:CGRectMake(10, 100, 100, 100)];
    [self.view addSubview:self.bgView1];
    self.bgView1.image = [UIImage imageNamed:@"1.jpg"];
    
    self.bgView2 = [[UIImageView alloc]initWithFrame:CGRectMake(120, 100, 100, 100)];
    [self.view addSubview:self.bgView2];
    self.bgView2.image = [UIImage imageNamed:@"chrome"];
    
    self.bgView3 = [[UIImageView alloc]initWithFrame:CGRectMake(230, 100, 100, 100)];
    [self.view addSubview:self.bgView3];
    self.bgView3.image = [UIImage imageNamed:@"fireFox"];
    
    self.bgView4 = [[UIImageView alloc]initWithFrame:CGRectMake(10, 210, 100, 100)];
    [self.view addSubview:self.bgView4];
    self.bgView4.image = [UIImage imageNamed:@"github"];
    
    self.bgView5 = [[UIImageView alloc]initWithFrame:CGRectMake(120, 210, 100, 100)];
    [self.view addSubview:self.bgView5];
    self.bgView5.image = [UIImage imageNamed:@"sina"];
    
    self.bgView6 = [[UIImageView alloc]initWithFrame:CGRectMake(230, 210, 100, 100)];
    [self.view addSubview:self.bgView6];
    self.bgView6.image = [UIImage imageNamed:@"yy"];
}

-(void)click{
    
    [self GCDMethod:self.bgView1 afterTime:0];
    [self GCDMethod:self.bgView2 afterTime:1];
    [self GCDMethod:self.bgView3 afterTime:2];
    [self GCDMethod:self.bgView4 afterTime:3];
    [self GCDMethod:self.bgView5 afterTime:4];
    [self GCDMethod:self.bgView6 afterTime:5];
    
}


-(void)GCDMethod:(UIView *)myView afterTime:(NSTimeInterval)interval{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(interval * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [myView boom];
    });
}
@end

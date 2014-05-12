//
//  BasicVC.m
//  AnnimationDemo
//
//  Created by 文正光 on 14-5-12.
//  Copyright (c) 2014年 Fengboyun. All rights reserved.
//

#import "BasicVC.h"

@interface BasicVC ()

@end

@implementation BasicVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    CABasicAnimation *animation = [CABasicAnimation animation];
    animation.keyPath = @"position.x";
    animation.fromValue = @32.f;
    animation.toValue = @(320.f-32.f);
    animation.duration = 1;
    NSLog(@"frame origin y is %f",self.imageView.frame.origin.y);
    NSLog(@"position x is %f,and position y is %f",self.imageView.layer.position.x,self.imageView.layer.position.y);
    
//    animation.fillMode = kCAFillModeForwards;
//    animation.removedOnCompletion = NO;
    
    //这里的key只是指定了一个名称，不是property
    [self.imageView.layer addAnimation:animation forKey:@"basic"];
#warning 不知道什么原因下面的没有生效
    self.imageView.layer.position = CGPointMake(320.f-32.f,132.f);
    NSLog(@"animation keys is %@",self.imageView.layer.animationKeys);
    
//    [self.imageView.layer removeAnimationForKey:@"basic"];
    
    animation.beginTime = CACurrentMediaTime()+0.5;
    [self.imageView2.layer addAnimation:animation forKey:@"basic"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

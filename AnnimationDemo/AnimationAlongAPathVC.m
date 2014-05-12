//
//  AnimationAlongAPathVC.m
//  AnnimationDemo
//
//  Created by 文正光 on 14-5-12.
//  Copyright (c) 2014年 Fengboyun. All rights reserved.
//

#import "AnimationAlongAPathVC.h"

@interface AnimationAlongAPathVC ()

@end

@implementation AnimationAlongAPathVC

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

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    CGRect rect = CGRectMake(-160, -160, 320, 320);
    
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animation];
    animation.keyPath = @"position";
    animation.path = CFAutorelease(CGPathCreateWithEllipseInRect(rect, NULL));
    animation.duration=.1f;
    animation.additive=YES;
    animation.repeatCount=HUGE_VALF;//huge巨大的 value float 浮点数形式
    animation.calculationMode=kCAAnimationPaced;//kCAAnimationPaced;
    animation.rotationMode=kCAAnimationRotateAuto;
//    animation.rotationMode = kCAAnimationRotateAutoReverse;
    [self.imageView.layer addAnimation:animation forKey:@"animation"];
//    animation.path
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

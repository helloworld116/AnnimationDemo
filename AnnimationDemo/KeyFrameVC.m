//
//  KeyFrameVC.m
//  AnnimationDemo
//
//  Created by 文正光 on 14-5-12.
//  Copyright (c) 2014年 Fengboyun. All rights reserved.
//

#import "KeyFrameVC.h"

@interface KeyFrameVC ()

@end

@implementation KeyFrameVC

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
    
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animation];
    animation.keyPath = @"position.x";
    animation.values=@[@0,@10.f,@(-10.f),@10,@0];
//    animation.keyTimes=@[@0,@(1/6.f),@(1/2.f),@(5/6.f),@1.f];
    animation.calculationMode = kCAAnimationPaced;
    animation.duration = 0.4f;
    
    animation.additive=YES;
    [self.textField.layer addAnimation:animation forKey:@"shake"];
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

//
//  WZGDetailViewController.h
//  AnnimationDemo
//
//  Created by 文正光 on 14-5-12.
//  Copyright (c) 2014年 Fengboyun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WZGDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end

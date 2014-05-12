//
//  WZGMasterViewController.m
//  AnnimationDemo
//
//  Created by 文正光 on 14-5-12.
//  Copyright (c) 2014年 Fengboyun. All rights reserved.
//

#import "WZGMasterViewController.h"
#import "BasicVC.h"
#import "KeyFrameVC.h"
#import "AnimationAlongAPathVC.h"

@interface WZGMasterViewController () {
    NSMutableArray *_objects;
}
@end

@implementation WZGMasterViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
//    self.navigationItem.leftBarButtonItem = self.editButtonItem;
//
//    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
//    self.navigationItem.rightBarButtonItem = addButton;
    _objects = [[NSMutableArray alloc] init];
    [_objects addObject:@"basic animation"];
    [_objects addObject:@"keyframe animation"];
    [_objects addObject:@"animation along a path"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)insertNewObject:(id)sender
{
    if (!_objects) {
        _objects = [[NSMutableArray alloc] init];
    }
    [_objects insertObject:[NSDate date] atIndex:0];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _objects.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    NSString *object = _objects[indexPath.row];
    cell.textLabel.text = object;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row==0) {
        BasicVC *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"BasicVC"];
        [self.navigationController pushViewController:vc animated:YES];
    }else if(indexPath.row==1){
        KeyFrameVC *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"KeyFrameVC"];
        [self.navigationController pushViewController:vc animated:YES];
    }else if(indexPath.row==2){
        AnimationAlongAPathVC *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"AnimationAlongAPathVC"];
        [self.navigationController pushViewController:vc animated:YES];
    }
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
//    if ([[segue identifier] isEqualToString:@"showDetail"]) {
//        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
//        NSDate *object = _objects[indexPath.row];
//        [[segue destinationViewController] setDetailItem:object];
//    }
}

@end

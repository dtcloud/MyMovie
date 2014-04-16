//
//  HomeViewController.m
//  MyMovie
//
//  Created by frank on 14-3-31.
//  Copyright (c) 2014年 frank. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()
    
@end

@implementation HomeViewController
@synthesize homeScrollView;
@synthesize homeTableView;
    
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
    CGRect rect = [[UIScreen mainScreen] bounds];
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0f) {
//        homeScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(rect.origin.x, rect.origin.y+20,rect.size.width,80)];
        homeTableView = [[UITableView alloc] initWithFrame:CGRectMake(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height) style:UITableViewStylePlain];
    }
    else
    {
//        homeScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(rect.origin.x, rect.origin.y, rect.size.width, 80)];
        homeTableView = [[UITableView alloc] initWithFrame:CGRectMake(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height) style:UITableViewStylePlain];
    }
    
    //homeScrollView.contentSize = CGSizeMake(rect.size.width * 3, 80);
    homeTableView.delegate = self;
    homeTableView.dataSource = self;
    
//    [self.view addSubview:homeScrollView];
    [self.view addSubview:homeTableView];
    
}

#pragma mark ---UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        return 100;
    }
    return 70;
}

#pragma mark ---UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellID = @"cellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellID];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    cell.textLabel.text = @"test";
    cell.detailTextLabel.text = @"detail";
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

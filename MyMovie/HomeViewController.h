//
//  HomeViewController.h
//  MyMovie
//
//  Created by frank on 14-3-31.
//  Copyright (c) 2014年 frank. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    
}
    
@property (nonatomic, retain) UIScrollView *homeScrollView;
@property (nonatomic, retain) UITableView *homeTableView;


    
@end

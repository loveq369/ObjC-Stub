//
//  MasterViewController.h
//  UIKitTest
//
//  Created by Eric Chamberlain on 4/23/15.
//  Copyright (c) 2015 Upstart Illustration LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;


@end


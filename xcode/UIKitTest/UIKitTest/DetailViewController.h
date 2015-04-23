//
//  DetailViewController.h
//  UIKitTest
//
//  Created by Eric Chamberlain on 4/23/15.
//  Copyright (c) 2015 Upstart Illustration LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end


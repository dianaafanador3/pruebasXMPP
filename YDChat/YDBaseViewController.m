//
//  YDBaseViewController.m
//  YDChat
//
//  Created by Peter van de Put on 08/12/2013.
//  Copyright (c) 2013 YourDeveloper. All rights reserved.
//

#import "YDBaseViewController.h"
#import "YDAppDelegate.h"
@interface YDBaseViewController ()

@end

@implementation YDBaseViewController

- (YDAppDelegate *)appDelegate
{
	return (YDAppDelegate *)[[UIApplication sharedApplication] delegate];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //if you dont want the menu buttons remove the following code 
    //Create left menu button
    UIBarButtonItem *leftRevealButtonItem = [[UIBarButtonItem alloc] initWithImage:
                                             [UIImage imageNamed:@"reveal-icon.png"]
                                                                             style:UIBarButtonItemStyleBordered
                                                                            target:self action:@selector(toggleLeftMenu:)];
    self.navigationItem.leftBarButtonItem = leftRevealButtonItem;
 
}

-(void)toggleLeftMenu:(id)sender
{
 
    [[self appDelegate] toggleLeftMenu];
}
 

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

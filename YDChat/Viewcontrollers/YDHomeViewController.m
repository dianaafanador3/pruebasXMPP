//
//  YDHomeViewController.m
//  YDChat
//
//  Created by Peter van de Put on 08/12/2013.
//  Copyright (c) 2013 YourDeveloper. All rights reserved.
//

#import "YDHomeViewController.h"
#import "YDAppDelegate.h"

@interface YDHomeViewController ()

@end

@implementation YDHomeViewController

- (YDAppDelegate *)appDelegate
{
    return (YDAppDelegate *)[[UIApplication sharedApplication] delegate];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.view.backgroundColor=[UIColor whiteColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

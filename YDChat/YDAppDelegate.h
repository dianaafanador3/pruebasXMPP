//
//  YDAppDelegate.h
//  YDChat
//
//  Created by Peter van de Put on 08/12/2013.
//  Copyright (c) 2013 YourDeveloper. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YDLeftMenuViewController.h"
#import "YDSlideMenuContainerViewController.h"
#import "YDHomeViewController.h"
@interface YDAppDelegate : UIResponder <UIApplicationDelegate,YDLeftMenuViewControllerDelegate,YDSlideMenuContainerViewControllerDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic)  UINavigationController* navigationController;
@property (strong,nonatomic)  YDHomeViewController *rootViewController;
@property(strong,nonatomic)   YDLeftMenuViewController* leftMenuViewController;
@property(strong,nonatomic)   YDSlideMenuContainerViewController *container;


//public methods
#pragma mark Side Menu delegates
-(void)toggleLeftMenu;

@end

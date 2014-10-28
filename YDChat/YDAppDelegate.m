//
//  YDAppDelegate.m
//  YDChat
//
//  Created by Peter van de Put on 08/12/2013.
//  Copyright (c) 2013 YourDeveloper. All rights reserved.
//

#import "YDAppDelegate.h"
#import "YDMenuItem.h"
#impoe
@implementation YDAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    application.statusBarHidden = YES;
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] ;
    self.rootViewController = [[YDHomeViewController alloc] init];
    self.navigationController = [[UINavigationController alloc] initWithRootViewController:self.rootViewController];
    //self.navigationController.navigationBarHidden = YES;
    self.window.rootViewController = self.navigationController;
    //Create left menu
    YDMenuItem* homeItem = [[YDMenuItem alloc]initWithTitle:@"Home" backgroundColorHexString:@"0xcece10" textColorHexString:@"0xffffff" viewControllerTAG:kMenuHomeTag imageName:@""];
    YDMenuItem* item1 = [[YDMenuItem alloc]initWithTitle:@"Chats" backgroundColorHexString:@"0xcece10" textColorHexString:@"0xffffff" viewControllerTAG:kMenuChatsTag imageName:@"chat"];
    YDMenuItem* item2 = [[YDMenuItem alloc]initWithTitle:@"Contacts" backgroundColorHexString:@"0xbb11bb" textColorHexString:@"0xffffff" viewControllerTAG:kMenuContactsTag imageName:@"contacts"];
    YDMenuItem* item3 = [[YDMenuItem alloc]initWithTitle:@"Group chat" backgroundColorHexString:@"0xaaaaaa" textColorHexString:@"0xffffff" viewControllerTAG:kMenuGroupChatTag imageName:@"groupicon"];
      YDMenuItem* item4 = [[YDMenuItem alloc]initWithTitle:@"Settings" backgroundColorHexString:@"0xaaaaaa" textColorHexString:@"0xffffff" viewControllerTAG:kMenuSettingsTag imageName:@"settings"];
    
    //create left menu Controller
    self.leftMenuViewController = [[YDLeftMenuViewController alloc] init];
    self.leftMenuViewController.delegate=self;
    self.leftMenuViewController.menuItems = [NSArray arrayWithObjects:homeItem,item1,item2,item3,item4,nil];
    //create and setup Container
    self.container = [YDSlideMenuContainerViewController
                      containerWithCenterViewController:self.navigationController
                      leftMenuViewController:self.leftMenuViewController
                      rightMenuViewController:nil];
    
    self.window.rootViewController = self.container;
    self.container.delegate=self;
    [self.window makeKeyAndVisible];
    return YES;
}



#pragma mark SlideMenu Delegate
-(void)leftMenuSelectionItemClick:(YDMenuItem *)item
{
    
    if ([item.controllerTAG length]>0)
        {
        [self.container setMenuState:YDSLideMenuStateClosed];

        if ([item.controllerTAG isEqualToString:kMenuHomeTag])
            {
            //allocate the View Controller
            //[self.navigationController PushViewController:vc animated:YES];

            }
        }
}
 

-(void)toggleLeftMenu
{
    if (self.container.menuState == YDSLideMenuStateLeftMenuOpen)
        {
        [self.container setMenuState:YDSLideMenuStateClosed];
        }
    else
        {
        [self.container setMenuState:YDSLideMenuStateLeftMenuOpen];
        }
    
}
-(void)menuWillHide
{
    
}
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

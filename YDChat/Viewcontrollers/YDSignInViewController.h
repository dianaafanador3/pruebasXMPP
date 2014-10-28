//
//  YDSignInViewController.h
//  YDChat
//
//  Created by Peter van de Put on 08/12/2013.
//  Copyright (c) 2013 YourDeveloper. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol YDSignInViewControllerDelegate <NSObject>

-(void)credentialsStored;

@end
@interface YDSignInViewController : UIViewController
@property (nonatomic, strong) id<YDSignInViewControllerDelegate>  delegate;
@end

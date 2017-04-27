//
//  AppDelegate.m
//  2017-04-25-contacts
//
//  Created by iOS-School-1 on 25.04.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

#import "AppDelegate.h"
#import "CBViewController.h"


@interface AppDelegate ()
extern NSArray *contactsList;
@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:82.0/255.0
                                                                  green:176.0/255.0
                                                                   blue:243.0/255.0
                                                                  alpha:1.0]];
    [[UINavigationBar appearance] setTitleTextAttributes:@{
                                                           NSForegroundColorAttributeName:[UIColor whiteColor]
                                                            }];
    [[UINavigationBar appearance] setTranslucent:NO];
    
    CBViewController *navigationController = [[CBViewController alloc] init];
    UIWindow *window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    window.rootViewController = navigationController;
    self.window = window;
    [window makeKeyAndVisible];
   return YES;
}




@end

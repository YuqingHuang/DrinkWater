//
//  YQAppDelegate.m
//  DrinkWater
//
//  Created by Huang Yuqing on 04/28/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "YQAppDelegate.h"

@implementation YQAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    UINavigationController *rootNavigationController = (UINavigationController *)self.window.rootViewController;
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = rootNavigationController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)notification {
  
    NSLog(@"got notification:%@", notification);
    if ([notification.alertBody isEqualToString:@"Go Drinking"]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Drink Now" message:@"Immediatly" delegate:self cancelButtonTitle:@"Finish" otherButtonTitles:nil, nil];
        [alert show];
        NSLog(@"date:%@",[NSDate date]);
    }
    
}

@end
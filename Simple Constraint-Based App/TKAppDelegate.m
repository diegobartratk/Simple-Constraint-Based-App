//
//  TKAppDelegate.m
//  Simple Constraint-Based App
//
//  Created by Diego Bartra on 4/21/15.
//  Copyright (c) 2015 Tekton Labs. All rights reserved.
//

#import "TKAppDelegate.h"
#import "TKRootViewController.h"

@implementation TKAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    TKRootViewController *rootViewController = [[TKRootViewController alloc] init];
    [self.window setRootViewController:rootViewController];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end

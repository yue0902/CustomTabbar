//
//  AppDelegate.m
//  CustomTabbar
//
//  Created by l on 13-6-9.
//  Copyright (c) 2013年 l. All rights reserved.
//

#import "AppDelegate.h"
#import "LeftFirstViewController.h"
#import "LeftSecondViewController.h"
#import "MainViewController.h"
#import "RightFirstViewController.h"
#import "RightSecondViewController.h"

#import "CustomNavViewController.h"
#import "CustomTabbarViewController.h"
#import "CustomBarButton.h"
@implementation AppDelegate
@synthesize customTabbarViewController;
- (void)dealloc
{
    [_window release];
    [customTabbarViewController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    self.customTabbarViewController = [[[CustomTabbarViewController alloc] initWithNibName:@"CustomTabbarViewController" bundle:nil] autorelease];
    
    
    LeftFirstViewController *leftFirstVC = [[LeftFirstViewController alloc] init];
    LeftSecondViewController *leftSecondVC = [[LeftSecondViewController alloc] init];
    MainViewController *mainVC = [[MainViewController alloc] init];
    RightFirstViewController *rightFirstVC = [[RightFirstViewController alloc] init];
    RightSecondViewController *rightSecondVC = [[RightSecondViewController alloc] init];
    
    
    CustomNavViewController *leftFirstNav = [[CustomNavViewController alloc] initWithRootViewController:leftFirstVC];
    CustomNavViewController *leftSecondNav = [[CustomNavViewController alloc] initWithRootViewController:leftSecondVC];
    CustomNavViewController *mainNav = [[CustomNavViewController alloc] initWithRootViewController:mainVC];
    CustomNavViewController *rightFirstNav = [[CustomNavViewController alloc] initWithRootViewController:rightFirstVC];
    CustomNavViewController *rightSecondNav = [[CustomNavViewController alloc] initWithRootViewController:rightSecondVC];
    
    
    [leftFirstVC release];
    [leftSecondVC release];
    [mainVC release];
    [rightFirstVC release];
    [rightSecondVC release];
    
    
    leftFirstNav.tabbarViewController = self.customTabbarViewController;
    leftSecondNav.tabbarViewController = self.customTabbarViewController;
    mainNav.tabbarViewController = self.customTabbarViewController;
    rightFirstNav.tabbarViewController = self.customTabbarViewController;
    rightSecondNav.tabbarViewController = self.customTabbarViewController;
    
    
    self.customTabbarViewController.arrayViewcontrollers = [NSArray arrayWithObjects:leftFirstNav,leftSecondNav,mainNav,rightFirstNav,rightSecondNav, nil];
    
    
    [leftFirstNav release];
    [leftSecondNav release];
    [mainNav release];
    [rightFirstNav release];
    [rightSecondNav release];
    
    
    self.window.rootViewController = self.customTabbarViewController;
    
    CustomBarButton *tabbarItem = [self.customTabbarViewController.arrayBarButtons objectAtIndex:3];
        tabbarItem.badgeValue = @"6";
    [self.customTabbarViewController touchBtnAtIndex:2];
    return YES;
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

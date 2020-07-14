//
//  AppDelegate.m
//  rootlessJB
//
//  Created by Jake James on 8/28/18.
//  Copyright © 2018 Jake James. All rights reserved.
//

#import "AppDelegate.h"
#import "Interface/ViewController.h"
#include "perception.h"

#define maxVersion(v)  ([[[UIDevice currentDevice] systemVersion] compare:@v options:NSNumericSearch] != NSOrderedDescending)


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    static dispatch_once_t once;
    dispatch_once(&once, ^ {
        printf("Starting up...");
        [ViewController sendToLog:@"Launched" withTick:"~"];
        
         [ViewController sendToLog:
         [NSString stringWithFormat:@"iOS Version: %@", [[UIDevice currentDevice] systemVersion]]
                         withTick:"i"];
        
        if (maxVersion("13.3"))
        {
            [ViewController sendToLog:@"1 Exploit compatible..." withTick:"~"];
        }
        else
        {
            [ViewController sendToLog:@"No compatible exploits in this project" withTick:"~"];
        }
        
        if (is_platform())
        {
            [ViewController sendToLog:@"Device already exploited with checkm8." withTick:"+"];
        }
        
    });
    return YES;
}




- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end

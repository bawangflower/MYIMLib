//
//  AppDelegate.m
//  DLIMiOSExample
//
//  Created by LiYanQin on 2018/10/10.
//  Copyright © 2018年 liyanqin. All rights reserved.
//

#import "AppDelegate.h"

#import "DLIMManager.h"

#define NIMSDKAppKey @"e61b1ef4279803763dd82117916572c8"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //注册APP，请将 NIMSDKAppKey 换成您自己申请的App Key
    [DLIMManager registerWithAppID:NIMSDKAppKey cerName:nil];
    
    
    //需要自定义消息时使用
//    [NIMCustomObject registerCustomDecoder:[[DLAttachmentDecoder alloc]init]];
    
    //开启控制台调试
//    [[NIMSDK sharedSDK] enableConsoleLog];
    
    //注入 NIMKit 布局管理器
//    [[NIMKit sharedKit] registerLayoutConfig:[DLCellLayoutConfig new]];
    
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

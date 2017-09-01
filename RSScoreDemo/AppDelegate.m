//
//  AppDelegate.m
//  RSScoreDemo
//
//  Created by WhatsXie on 2017/9/1.
//  Copyright © 2017年 StevenXie. All rights reserved.
//

#import "AppDelegate.h"

#import <Appirater.h> // Appirater 三方库评分
#import <StoreKit/StoreKit.h> // iOS 10.3 新增评分

#define Version [[UIDevice currentDevice].systemVersion floatValue]

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    // 根据 iOS 版本判断使用哪种机制
    Version >= 10.3 ? [SKStoreReviewController requestReview] : [self setupAppirater];
    
    return YES;
}

- (void)setupAppirater {
    [Appirater setAppId:@"YOUR_APP_ID"]; // 设定 App Id，使用者如果点击评分按钮的话，就会打开 AppStore，直接进入这个 App 頁面
    [Appirater setDaysUntilPrompt:1]; // 设定要使用多少天之后才跳出询问框
    [Appirater setUsesUntilPrompt:10]; //设定要使用多少次之后才跳出询问框
    [Appirater setSignificantEventsUntilPrompt:-1]; //设定使用者触发特定事件多少次之后才跳出
    [Appirater setTimeBeforeReminding:2]; //设定使用者选择<稍后>多少天之后再跳出
    [Appirater setDebug:YES]; //是否开启debug模式
    [Appirater appLaunched:YES]; //这行代码一定要放在这个方法的最后面
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

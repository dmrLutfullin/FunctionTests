//
//  AppDelegate.m
//  FunctionTests
//
//  Created by Дамир Лутфуллин on 05.01.2020.
//  Copyright © 2020 Damir Lutfullin. All rights reserved.
//

#import "AppDelegate.h"
#import "ParentClass.h"
#import "ChildClass.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    ParentClass* parent = [[ChildClass alloc] init]; // создание экземпляра класса
    
    [parent sayHello]; // вызов методов
    
    [parent say: @"Privet"];
    
    [parent say:@"I was worried about you" and:@"where have you been"];
    
    NSLog(@"%@", [parent saySomething]);
    
    [ChildClass whoAreYou];
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end

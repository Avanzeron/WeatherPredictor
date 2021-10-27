//
//  AppDelegate.m
//  WeatherPredictor
//
//  Created by zeyuan wang on 2021/10/27.
//

#import "AppDelegate.h"
#import "ViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window=[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];//创建一个Window
    self.window.backgroundColor=[UIColor whiteColor]; //
    self.viewController= [[ViewController alloc] init]; //创建一个VC
    UINavigationController *nav=[[UINavigationController alloc]initWithRootViewController:self.viewController];
        //    nav.navigationBar.hidden = YES;
    self.window.rootViewController=nav; //设置好根视图控制器
    [self.window makeKeyAndVisible]; //设置这个window为主(key)窗口并设置成为可见

    return YES;
}

@end

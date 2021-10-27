//
//  AppDelegate.h
//  WeatherPredictor
//
//  Created by zeyuan wang on 2021/10/27.
//

#import <UIKit/UIKit.h>
@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    UIWindow * window;
    ViewController * viewController;
}

@property (nonatomic, strong) UIWindow * window;
@property (nonatomic, strong) ViewController * viewController;



@end


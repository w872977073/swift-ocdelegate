//
//  ThirdViewController.h
//  swift代理
//
//  Created by wyf on 2017/8/17.
//  Copyright © 2017年 FanFanKJ. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ThirdViewControllerDelegate <NSObject>

-(void)acceptsome:(NSString *) name;

@end

@interface ThirdViewController : UIViewController

/**   */
@property (nonatomic, weak) id<ThirdViewControllerDelegate> delegate;



@end

//
//  GFDragerViewController.h
//  城觅
//
//  Created by xmg on 16/9/19.
//  Copyright © 2016年 gf. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GFDragerViewController : UIViewController

@property (nonatomic, weak, readonly)  UIView *mainV;
@property (nonatomic, weak, readonly)  UIView *leftV;

/**
 *  关闭抽屉
 */
- (void)close;

/**
 *  打开抽屉
 */
- (void)open;

@end

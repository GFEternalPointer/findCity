//
//  GFLeftView.h
//  城觅
//
//  Created by xmg on 16/9/19.
//  Copyright © 2016年 gf. All rights reserved.
//

#import <UIKit/UIKit.h>
//1.定义协议
@class GFLeftView;

@protocol GFLeftViewDelegate <NSObject>

-(void)leftView:(GFLeftView *)leftView preSelBtnIndex:(NSInteger)preIndex selBtnIndex:(NSInteger)selBtnIndex;

@end

@interface GFLeftView : UIView

+(instancetype)leftView;

//2.定义代理属性
@property (nonatomic, weak) id<GFLeftViewDelegate> delegate;
@end

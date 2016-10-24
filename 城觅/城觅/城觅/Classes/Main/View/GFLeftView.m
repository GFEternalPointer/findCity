//
//  GFLeftView.m
//  城觅
//
//  Created by xmg on 16/9/19.
//  Copyright © 2016年 gf. All rights reserved.
//

#import "GFLeftView.h"
#import "GFMenuBtn.h"

@interface GFLeftView ()

@property (nonatomic, strong)IBOutlet GFMenuBtn  *preSelBtn;

@end

@implementation GFLeftView

+(instancetype)leftView{

    return [[[NSBundle mainBundle]loadNibNamed:@"GFLeftView" owner:nil options:nil] lastObject];

}

//左侧按钮点击
- (IBAction)leftBtnClick:(GFMenuBtn *)btn {
    
    //通知上一级 我当前点击了哪个按钮, 让上一级切换控制器.
    //调用代理方法
    if ([self.delegate respondsToSelector:@selector(leftView:preSelBtnIndex:selBtnIndex:)]) {
        [self.delegate leftView:self preSelBtnIndex:self.preSelBtn.tag selBtnIndex:btn.tag];
    }
    
    self.preSelBtn.selected = NO;
    
    btn.selected = YES;
    
    self.preSelBtn = btn;
    
    
}


@end

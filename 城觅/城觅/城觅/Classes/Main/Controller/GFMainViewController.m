//
//  GFMainViewController.m
//  城觅
//
//  Created by xmg on 16/9/19.
//  Copyright © 2016年 gf. All rights reserved.
//

#import "GFMainViewController.h"
#import "GFLeftView.h"

@interface GFMainViewController ()<GFLeftViewDelegate>

@end

@implementation GFMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     //添加左侧的View
    [self addLeftView];
//    添加子控制器
    [self addChildVC];
}

/**
 *  添加左侧的View
 */

-(void)addLeftView{
   
    GFLeftView *leftView = [GFLeftView leftView];
    leftView.frame = self.leftV.bounds;
    
    //设置代理
    leftView.delegate = self;
    
    [self.leftV addSubview:leftView];

}


/**
 *  添加子控制器
 */
-(void)addChildVC{
   
    NSArray *childVCName = @[
                             @"GFHomeVC",
                             @"GFDiscoverVC",
                             @"GFMessageVC",
                             @"GFSettingVC"
                             ];
    for (NSString *name in childVCName) {
        //根据一个字符串转成类名
        //NSClassFromString(<#NSString * _Nonnull aClassName#>)
       UIViewController *vc = [[NSClassFromString(name) alloc]init];
         //添加子控制器
        [self addChildViewController:vc];
        
    }
    //默认把第一个添加的子控制器的View显示出来.
   UIViewController *vc = self.childViewControllers[0];
    vc.view.frame = self.mainV.bounds;
    [self.mainV addSubview:vc.view];


}

/**
 *  左侧按钮点击
 *
 *  @param leftV    XMGLeftView
 *  @param preIndex 上一个按钮的角标
 *  @param selBtnIndex    当前点击按钮的角标
 */

-(void)leftView:(GFLeftView *)leftView preSelBtnIndex:(NSInteger)preIndex selBtnIndex:(NSInteger)selBtnIndex{

//    NSLog(@"%ld----%ld",preIndex,selBtnIndex);
    //1.把上一个控制器的view给移除
    
    UIViewController *preVc = self.childViewControllers[preIndex];
    [preVc.view removeFromSuperview];
    //2.把当前控制器的View添加上去.
    UIViewController *vc = self.childViewControllers[selBtnIndex];
    vc.view.frame = self.mainV.bounds;
    [self.mainV addSubview:vc.view];

}


@end

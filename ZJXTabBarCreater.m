//
//  ZJXTabBarCreater.m
//  ICLibrary
//
//  Created by 曾健新 on 15/8/18.
//  Copyright (c) 2015年 曾健新. All rights reserved.
//

#import "ZJXTabBarCreater.h"

@implementation ZJXTabBarCreater

+(instancetype)addTabBarMemberWith:(Class)cls
                             image:(NSString*)imageName
                     selectedImage:(NSString*)selectedImageName
                             title:(NSString*)title
{
    UIViewController *VC = [[cls alloc]init];
    VC.tabBarItem.image = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    VC.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    VC.title = title;
//    VC.tabBarItem.imageInsets = UIEdgeInsetsMake(5, 0, -5, 0);
    return VC;
    
}

@end

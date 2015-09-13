//
//  ZJXTabBarCreater.h
//  ICLibrary
//
//  Created by 曾健新 on 15/8/18.
//  Copyright (c) 2015年 曾健新. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ZJXTabBarCreater : NSObject


+(instancetype)addTabBarMemberWith:(Class)cls
                             image:(NSString*)imageName
                     selectedImage:(NSString*)selectedImageName
                             title:(NSString*)title;



@end

//
//  UIView+ZJXUIView.h
//  FreeLimit
//
//  Created by 曾健新 on 15/8/14.
//  Copyright (c) 2015年 曾健新. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ZJXUIView)

-(UIImageView *)addImageViewWithFrame:(CGRect)ViewFrame imageNamed:(NSString*)imageNamed;

-(UILabel *)addLableWithFrame:(CGRect)lableFrame text:(NSString *)text font:(CGFloat)font;

-(UIButton *)addButtonWithFrame:(CGRect)buttonFrame
            backgroundImageName:(NSString *)backgroundImageName
                     imageNamed:(NSString *)imageNamed
                         title :(NSString *)title;

-(UIScrollView *)addPicScrollViewWithAllPicURLStr:(NSArray*)allPicURLStr
                                             picW:(CGFloat)picW
                                             picH:(CGFloat)picH;

-(UITableView *)addTableViewWithFrame:(CGRect)frame style:(UITableViewStyle)UITableViewStyle;

@end

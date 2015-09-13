//
//  UIView+ZJXUIView.m
//  FreeLimit
//
//  Created by 曾健新 on 15/8/14.
//  Copyright (c) 2015年 曾健新. All rights reserved.
//

//使用网络，注意添加AFNetworking头文件
#import "AFNetworking.h"
#import "UIKit+AFNetworking.h"

#import "UIView+ZJXUIView.h"

#define UIViewW self.bounds.size.width
#define UIViewH self.bounds.size.height

@implementation UIView (ZJXUIView)

#pragma mark - 添加ImageView
-(UIImageView *)addImageViewWithFrame:(CGRect)ViewFrame imageNamed:(NSString*)imageNamed
{
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:ViewFrame];
    imageView.image = [UIImage imageNamed:imageNamed];
    imageView.userInteractionEnabled = YES;
    [self addSubview:imageView];
    return imageView;
}

#pragma mark - 添加lable
-(UILabel *)addLableWithFrame:(CGRect)lableFrame text:(NSString *)text font:(CGFloat)font
{
    UILabel *lable = [[UILabel alloc]initWithFrame:lableFrame];
    lable.text = text;
    if (font != 0) {
        lable.font = [UIFont systemFontOfSize:font];
    }
    lable.numberOfLines = 0;
    [self addSubview:lable];
    return lable;
}

#pragma mark - 添加按键
-(UIButton *)addButtonWithFrame:(CGRect)buttonFrame
                          backgroundImageName:(NSString *)backgroundImageName
                          imageNamed:(NSString *)imageNamed
                          title :(NSString *)title
{
    UIButton *button = [[UIButton alloc]initWithFrame:buttonFrame];
    [button setBackgroundImage:[UIImage imageNamed:backgroundImageName] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:imageNamed] forState:UIControlStateNormal];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self addSubview:button];

    return button;
}


#pragma mark - 添加照片查看器
-(UIScrollView *)addPicScrollViewWithAllPicURLStr:(NSArray*)allPicURLStr
                                     picW:(CGFloat)picW
                                     picH:(CGFloat)picH
{
    //设置图片间隔
    CGFloat picInterval = 10;
    
    //ScrollView初始化
    CGRect picSCFrame = CGRectMake(0, 0, picW+2*picInterval, UIViewH);
    UIScrollView *picSC = [[UIScrollView alloc]initWithFrame:picSCFrame];
    picSC.scrollEnabled = YES;
    picSC.userInteractionEnabled = YES;
    picSC.pagingEnabled = YES;
    picSC.showsHorizontalScrollIndicator = YES;
    picSC.showsVerticalScrollIndicator = YES;
    picSC.minimumZoomScale = 0.5;
    picSC.maximumZoomScale = 3;
    [self addSubview:picSC];
    
    //添加图片
    unsigned long picNums = allPicURLStr.count;
    
    CGFloat SCH = picH;
    CGFloat SCW = (picW+2*picInterval) * picNums;
    
    CGSize contentSize = CGSizeMake(SCW, SCH);
    picSC.contentSize = contentSize;

    
    //相片位置偏移参数
    CGFloat x = picInterval;
    CGFloat y = (UIViewH - picH)/2;

    for (NSString *url in allPicURLStr) {
        CGRect picIVFrame = CGRectMake(x, y, picW, picH);
        UIImageView *picIV = [[UIImageView alloc]initWithFrame:picIVFrame];
        picIV.center = CGPointMake(x+picW/2, UIViewH/2);
    
        [picSC addSubview:picIV];
        //异步添加图片
        NSURL *URL = [NSURL URLWithString:url];
        [picIV setImageWithURL:URL];
        x += picW+picInterval*2;
    }
    
    return picSC;
}


#pragma mark - 添加表格视图
-(UITableView *)addTableViewWithFrame:(CGRect)frame style:(UITableViewStyle)UITableViewStyle
{
    UITableView *tableView = [[UITableView alloc]initWithFrame:frame style:UITableViewStyle];
    [self addSubview:tableView];
    return tableView;
}



@end

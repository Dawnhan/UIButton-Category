//
//  UIButton+Category.m
//  UIButton+Category
//
//  Created by 郑晗 on 2019/4/23.
//  Copyright © 2019年 郑晗. All rights reserved.
//

#import "UIButton+Category.h"

@implementation UIButton (Category)

- (void)setupButtonShowType:(ZHButtonType)type
{
    [self layoutIfNeeded];
    
    CGRect titleFrame = self.titleLabel.frame;
    CGRect imageFrame = self.imageView.frame;
    
    CGFloat space = titleFrame.origin.x - imageFrame.origin.x - imageFrame.size.width + 5;
    
    switch (type) {
        case ZHButtonTypeDefault:
        {
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0,imageFrame.size.width - space, 0, -(imageFrame.size.width - space))];
            
            [self setImageEdgeInsets:UIEdgeInsetsMake(0, -(titleFrame.origin.x - imageFrame.origin.x), 0, imageFrame.origin.x - titleFrame.origin.x)];
        }
            break;
        case ZHButtonTypeImageOnRight:
        {
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -(titleFrame.origin.x - imageFrame.origin.x), 0, titleFrame.origin.x - imageFrame.origin.x)];

            [self setImageEdgeInsets:UIEdgeInsetsMake(0,titleFrame.size.width + space, 0, -(titleFrame.size.width + space))];
        }
            break;
        case ZHButtonTypeImageOnTop:
        {
            [self setTitleEdgeInsets:UIEdgeInsetsMake(imageFrame.size.height + space, -(imageFrame.size.width), 0, 0)];

            [self setImageEdgeInsets:UIEdgeInsetsMake(0,0, titleFrame.size.height + space, -(titleFrame.size.width))];
            
        }
            break;
        case ZHButtonTypeImageOnBottom:
        {
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0,-(imageFrame.size.width), imageFrame.size.height + space, 0)];
            
            [self setImageEdgeInsets:UIEdgeInsetsMake(titleFrame.size.height + space,(titleFrame.size.width), 0, 0)];
        }
            break;
        default:
            break;
    }
    
}
@end

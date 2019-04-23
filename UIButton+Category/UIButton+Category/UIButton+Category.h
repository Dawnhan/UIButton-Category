//
//  UIButton+Category.h
//  UIButton+Category
//
//  Created by 郑晗 on 2019/4/23.
//  Copyright © 2019年 郑晗. All rights reserved.
//



#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger ,ZHButtonType) {
    //默认图片在左文字在右
    ZHButtonTypeDefault ,
    //图片在右文字在左
    ZHButtonTypeImageOnRight ,
    //图片在上文字在下
    ZHButtonTypeImageOnTop ,
    //图片在下文字在上
    ZHButtonTypeImageOnBottom ,


};

@interface UIButton (Category)

- (void)setupButtonShowType:(ZHButtonType)type;

@end

NS_ASSUME_NONNULL_END

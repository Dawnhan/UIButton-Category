//
//  ViewController.m
//  UIButton+Category
//
//  Created by 郑晗 on 2019/4/23.
//  Copyright © 2019年 郑晗. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+Category.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *defaultButton;
@property (weak, nonatomic) IBOutlet UIButton *imageOnRight;
@property (weak, nonatomic) IBOutlet UIButton *imageOnTop;
@property (weak, nonatomic) IBOutlet UIButton *imageOnBottom;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.defaultButton setupButtonShowType:(ZHButtonTypeDefault)];
    [self.imageOnRight setupButtonShowType:(ZHButtonTypeImageOnRight)];
    [self.imageOnTop setupButtonShowType:(ZHButtonTypeImageOnTop)];
    [self.imageOnBottom setupButtonShowType:(ZHButtonTypeImageOnBottom)];

}


@end

//
//  BanBoYongDianHeaderView.m
//  kq_banbo_app
//
//  Created by banbo on 2017/4/24.
//  Copyright © 2017年 yzChina. All rights reserved.
//

#import "BanBoYongDianHeaderView.h"
@interface BanBoYongDianHeaderView()
@property(strong,nonatomic)UILabel *label;
@end
@implementation BanBoYongDianHeaderView
- (instancetype)initWithFrame:(CGRect)frame
{
    frame.size=CGSizeMake(SCREEN_WIDTH, 64);
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor=[UIColor hcy_colorWithString:@"#f0f0f0"];
        [self setupSubviews];
    }
    return self;
}
-(void)setupSubviews{
    UIImageView *iconView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"用电管理头部图片"]];
    iconView.left=22;
    iconView.top=10;
    
    [self addSubview:iconView];
    
    UILabel *label=[YZLabelFactory grayLabel];
    label.textColor=[UIColor hcy_colorWithString:@"#666666"];
    label.centerY=iconView.centerY*.8;
    label.left=iconView.right+20;
    self.label=label;
    [self addSubview:label];
}
-(void)setText:(NSString *)text{
    if ([text isEqualToString:_text]) {
        return;
    }
    _text=[text copy];
    self.label.text=text;
    [self.label sizeToFit];
}


@end
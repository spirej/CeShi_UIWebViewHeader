//
//  WebViewHeader.m
//  CeShi_UIWebViewHeader
//
//  Created by SPIREJ on 16/4/5.
//  Copyright © 2016年 SPIREJ. All rights reserved.
//

#import "WebViewHeader.h"

@implementation WebViewHeader

- (instancetype)init{
    if (self = [super init]) {
        self.frame = CGRectMake(0, -300, [UIScreen mainScreen].bounds.size.width, 300);
        self.backgroundColor = [UIColor redColor];
        /**
         *  @author , 16-04-05 10:04:54
         *
         *  此处写你自己想要的视图的代码
         */
        UILabel *tipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 50)];
        tipLabel.center = CGPointMake(self.frame.size.width/2.0, self.frame.size.height/2.0);
        tipLabel.text = @"我是webView的头视图";
        tipLabel.textColor = [UIColor whiteColor];
        tipLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:tipLabel];
    }
    return self;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

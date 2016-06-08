//
//  FXJView.m
//  UIviewControl生命周期
//
//  Created by myApplePro01 on 16/6/7.
//  Copyright © 2016年 LSH. All rights reserved.
//

#import "FXJView.h"

@implementation FXJView

- (instancetype)init{
    
    if (self = [super init]) {
        NSLog(@"%@ init", self.class);

        
    }

    
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        NSLog(@"%@ initWithFrame", self.class);

        
    }
    return self;
}

+ (instancetype)lodXib
{
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class])
                                          owner:nil
                                        options:nil]
            lastObject];
}

- (void)dealloc
{
    NSLog(@"%@ 被释放", self.class);
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    NSLog(@"%@ awakeFromNib", self.class);

}

- (void)layoutSubviews{
    [super layoutSubviews];

}
@end

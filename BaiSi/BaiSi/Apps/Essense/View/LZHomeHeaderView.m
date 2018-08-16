//
//  LZHomeHeaderView.m
//  BaiSi
//
//  Created by jack on 2018/8/16.
//  Copyright © 2018年 jack. All rights reserved.
//

#import "LZHomeHeaderView.h"


@interface LZHomeHeaderView()<SDCycleScrollViewDelegate>

@end

@implementation LZHomeHeaderView

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        
        [self commonInit];
    }
    return self;
}

- (void)commonInit {
    self.backgroundColor = [UIColor whiteColor];
    [self addSubview:self.bannerView];
}

// MARK: - getter
- (SDCycleScrollView *)bannerView {
    if (!_bannerView) {
        _bannerView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 155) delegate:self placeholderImage:nil];
        _bannerView.pageControlAliment = SDCycleScrollViewPageContolAlimentCenter;
        _bannerView.currentPageDotColor = [UIColor whiteColor]; // 自定义分页控
        _bannerView.bannerImageViewContentMode = UIViewContentModeScaleAspectFill;
    }
    return _bannerView;
}

@end

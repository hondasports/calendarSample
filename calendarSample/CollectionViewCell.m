//
//  CollectionViewCell.m
//  calendarSample
//
//  Created by MIYAMOTO TATSUYA on 2012/11/22.
//  Copyright (c) 2012年 MIYAMOTO TATSUYA. All rights reserved.
//

#import "CollectionViewCell.h"

@implementation CollectionViewCell
@synthesize label = _label;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        UILabel* label = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, frame.size.width - 6, frame.size.height - 6)];
        label.backgroundColor = [UIColor redColor];
        [self.contentView addSubview:label];
        self.label = label;
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end

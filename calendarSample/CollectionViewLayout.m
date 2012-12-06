//
//  CollectionViewLayout.m
//  calendarSample
//
//  Created by MIYAMOTO TATSUYA on 2012/11/29.
//  Copyright (c) 2012年 MIYAMOTO TATSUYA. All rights reserved.
//

#import "CollectionViewLayout.h"

@implementation CollectionViewLayout

-(void) prepareLayout{
    [super prepareLayout];
    _cellCount = [[self collectionView] numberOfItemsInSection:0];
    
}

-(CGSize) collectionViewContentSize{
    
    return [self collectionView].frame.size;
    
}

-(NSArray*)layoutAttributesForElementsInRect:(CGRect)rect
{
    NSLog(@"__PRETTY_FUNCTION__ : %s" , __PRETTY_FUNCTION__);
    
    NSMutableArray* attributes = [NSMutableArray array];
    for(NSInteger i=0; i<self.cellCount; i++){
        NSIndexPath* indexPath = [NSIndexPath indexPathForItem:i inSection:0];
        [attributes addObject:[self layoutAttributesForItemAtIndexPath:indexPath]];
    }
    return attributes;
}

- (UICollectionViewLayoutAttributes *)layoutAttributesForItemAtIndexPath:(NSIndexPath *)path
{
    NSLog(@"__PRETTY_FUNCTION__ : %s" , __PRETTY_FUNCTION__);
    
    UICollectionViewLayoutAttributes* attributes = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:path];
    attributes.size = CGSizeMake(60, 60);
    attributes.center = CGPointMake(60*path.item,20);

    return attributes;
}



@end

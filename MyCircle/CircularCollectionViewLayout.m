//
//  CircularCollectionViewLayout.m
//  MyCircle
//
//  Created by Sofia Knezevic on 2017-04-30.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "CircularCollectionViewLayout.h"

@implementation CircularCollectionViewLayout

- (void)prepareLayout {
    
    [super prepareLayout];
    
    CGSize size = self.collectionView.frame.size;
    
    self.center = CGPointMake(size.width/2.0, size.height/2.0);
    self.radius = MIN(size.width, size.height) / 3;
}

- (CGSize)collectionViewContentSize {
    
    return [self collectionView].frame.size;
    
}

- (UICollectionViewLayoutAttributes *)layoutAttributesForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewLayoutAttributes *attributes = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:indexPath];
    
    attributes.size = CGSizeMake(70, 70);
    attributes.center = CGPointMake(self.center.x + self.radius * cosf(2 * indexPath.item * M_PI / 8), self.center.y + self.radius * sinf(2 * indexPath.item * M_PI / 8));
    
    return attributes;
    
}

- (NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect {
    
    NSMutableArray *attributes = [NSMutableArray array];
    for (int i = 0; i<8; i++) {
        
        NSIndexPath *indexPath = [NSIndexPath indexPathForItem:i inSection:0];
        [attributes addObject:[self layoutAttributesForItemAtIndexPath:indexPath]];
        
    }
    
    return attributes;
    
}

@end

//
//  UserCollectionViewCell.m
//  MyCircle
//
//  Created by Sofia Knezevic on 2017-04-30.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "UserCollectionViewCell.h"
#import "User.h"

@implementation UserCollectionViewCell

- (void)drawRect:(CGRect)rect {
    
    [super drawRect:rect];
    self.layer.cornerRadius = self.frame.size.width / 2;
    
}

@end

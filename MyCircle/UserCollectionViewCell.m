//
//  UserCollectionViewCell.m
//  MyCircle
//
//  Created by Sofia Knezevic on 2017-04-30.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "UserCollectionViewCell.h"
#import "User.h"

@interface UserCollectionViewCell()

@property (weak, nonatomic) IBOutlet UIImageView *userImageView;


@end

@implementation UserCollectionViewCell

#pragma mark - Configuration -
- (void)drawRect:(CGRect)rect {
    
    [super drawRect:rect];
    self.layer.cornerRadius = self.frame.size.width / 2;
    [self configureCellImageView];
    
}

- (void)configureCellImageView {
    
    self.userImageView.layer.masksToBounds = false;
    self.userImageView.layer.borderWidth = 5;
    self.userImageView.layer.borderColor = [UIColor whiteColor].CGColor;
}

@end

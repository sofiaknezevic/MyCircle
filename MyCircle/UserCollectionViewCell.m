//
//  UserCollectionViewCell.m
//  MyCircle
//
//  Created by Sofia Knezevic on 2017-04-30.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "UserCollectionViewCell.h"

@interface UserCollectionViewCell()

@property (weak, nonatomic) IBOutlet UIImageView *userImageView;
@property (weak, nonatomic) IBOutlet UIImageView *userHasAcceptedImageView;
@property (weak, nonatomic) IBOutlet UILabel *userNameLabel;


@end

@implementation UserCollectionViewCell

#pragma mark - Configuration -
- (void)drawRect:(CGRect)rect {
    
    [super drawRect:rect];
    self.layer.cornerRadius = self.frame.size.width / 2;
    
}

- (void)configureCellWithUser:(User *)myCircleUser {
    
    if (!myCircleUser.hasAccepted) {
        
        self.userHasAcceptedImageView.image = [UIImage imageNamed:@"notAcceptedClock"];
        
    }
    
    self.userImageView.image = [UIImage imageNamed:myCircleUser.userImageName];
    self.userNameLabel.text = myCircleUser.displayName;
    

}

@end

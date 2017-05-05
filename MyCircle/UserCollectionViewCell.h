//
//  UserCollectionViewCell.h
//  MyCircle
//
//  Created by Sofia Knezevic on 2017-04-30.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"

@interface UserCollectionViewCell : UICollectionViewCell

- (void)configureCellWithUser:(User *)myCircleUser;

@end

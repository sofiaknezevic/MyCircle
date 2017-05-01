//
//  User.h
//  MyCircle
//
//  Created by Sofia Knezevic on 2017-04-29.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property (nonatomic) NSString *displayName;
@property (nonatomic) BOOL isOnline;
@property (nonatomic) BOOL hasAccepted;
@property (nonatomic) int notificationCount;

@end

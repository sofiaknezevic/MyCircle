//
//  User.m
//  MyCircle
//
//  Created by Sofia Knezevic on 2017-04-29.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "User.h"

@interface User()

@end

@implementation User

- (instancetype)initWithName:(NSString *)displayName isOnlineIndicator:(BOOL)isOnline hasAcceptedIndicator:(BOOL)hasAccepted notificationCount:(NSNumber *)notificationCount userImageName:(NSString *)userImageName
{
    self = [super init];
    if (self) {
        
        self.displayName = displayName;
        self.isOnline = isOnline;
        self.hasAccepted = hasAccepted;
        self.notificationCount = notificationCount;
        self.userImageName = userImageName;
        
    }
    return self;
}

@end

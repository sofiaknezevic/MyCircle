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

//This imageName property is only for testing purposes. In production stage there would have to be logic added to incorporate users picking their own images.
@property (nonatomic) NSString *userImageName;

@end

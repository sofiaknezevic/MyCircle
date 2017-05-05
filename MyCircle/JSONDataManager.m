//
//  JSONDataManager.m
//  MyCircle
//
//  Created by Alex Pearce on 2017-05-02.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "JSONDataManager.h"

@implementation JSONDataManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        [self populateUserArrayWithJSON];
        
    }
    return self;
}

- (void)populateUserArrayWithJSON {
    
    NSString *pathForJSON = [[NSBundle mainBundle] pathForResource:@"TestingUsers" ofType:@"JSON"];
    NSData *jsonData = [[NSFileManager defaultManager] contentsAtPath:pathForJSON];
    
    NSDictionary *testingUsersJSONDictionary = [NSJSONSerialization JSONObjectWithData:jsonData options:0 error:nil];
    
    [testingUsersJSONDictionary[@"Testing Users"] enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        
        NSMutableArray *temporaryUserArray = [NSMutableArray array];
        
        for (NSDictionary *users in obj) {
            
            if ([key isEqualToString:@"Logged-In User"]) {
                
                self.loggedInUser = [[User alloc] initWithName:nil
                                             isOnlineIndicator:true
                                          hasAcceptedIndicator:true
                                             notificationCount:nil
                                                 userImageName:users[@"imageName"]];
                
                
            }else{
                
                User *myCircleTestingUser = [[User alloc] initWithName:users[@"name"]
                                                      isOnlineIndicator:[users[@"isOnline"] boolValue]
                                                   hasAcceptedIndicator:[users[@"hasAccepted"] boolValue]
                                                      notificationCount:users[@"notificationCount"]
                                                          userImageName:users[@"imageName"]];
                
                [temporaryUserArray addObject:myCircleTestingUser];
                
                self.userObjectsArray = [NSArray arrayWithArray:temporaryUserArray];
                
            }
            
        }
        
    }];
}

@end

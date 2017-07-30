//
//  MessagesModule.m
//  rctnative2js
//
//  Created by Dmitry on 7/31/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import "MessagesModule.h"

@implementation MessagesModule

@synthesize bridge = _bridge;

RCT_EXPORT_MODULE();

- (void) sendMessage: (NSString *)message
{
  RCTAssert(self.bridge != nil, @"bridge is not set in %@.", [self class]);
  
  [self.bridge enqueueJSCall:@"MessagesModule"
                      method:@"sendMessage"
                        args:@[message]
                  completion:nil];
}

@end

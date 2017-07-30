//
//  MessagesModule.h
//  rctnative2js
//
//  Created by Dmitry on 7/31/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <React/RCTBridge.h>
#import <React/RCTAssert.h>

@interface MessagesModule : NSObject <RCTBridgeModule>

- (void) sendMessage: (NSString *)message;

@end

//
//  MainUiViewController.m
//  rctnative2js
//
//  Created by Dmitry on 7/31/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import "MainUiViewController.h"

@interface MainUiViewCotroller ()

@end

@implementation MainUiViewCotroller

- (void) viewDidAppear:(BOOL)animated
{
  [super viewDidAppear:animated];
  
  RCTBridge *bridge = ((RCTRootView *) self.view).bridge;
  
  MessagesModule *module = [bridge moduleForClass: [MessagesModule class]];
  
  [module sendMessage:@"Hello from the 'Light Side' of iOS development"];
}

@end

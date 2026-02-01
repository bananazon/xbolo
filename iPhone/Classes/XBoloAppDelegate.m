//
//  XBoloAppDelegate.m
//  XBolo
//
//  Created by Robert Chrzanowski on 6/28/09.
//  Copyright Robert Chrzanowski 2009. All rights reserved.
//

#import "XBoloAppDelegate.h"
#import "XBoloViewController.h"

@implementation XBoloAppDelegate

- (void)applicationDidFinishLaunching:(UIApplication *)application {

    // Override point for customization after app launch
    [self.window addSubview:self.viewController.view];
    [self.window makeKeyAndVisible];
}

@end

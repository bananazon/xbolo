//
//  XBoloAppDelegate.h
//  XBolo
//
//  Created by Robert Chrzanowski on 6/28/09.
//  Copyright Robert Chrzanowski 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class XBoloViewController;

@interface XBoloAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    XBoloViewController *viewController;
}

@property (nonatomic, strong) IBOutlet UIWindow *window;
@property (nonatomic, strong) IBOutlet XBoloViewController *viewController;

@end


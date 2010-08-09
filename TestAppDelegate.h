//
//  TestAppDelegate.h
//  BSUIViewRearranger
//
//  Created by Karsten Kusche on 09.08.10.
//  Copyright 2010 Briksoftware.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MainViewController.h"

@interface TestAppDelegate : NSObject <UIApplicationDelegate> {
	UIWindow* window;
	MainViewController* mainController;
}

@property (nonatomic, retain) IBOutlet UIWindow* window;
@property (nonatomic, retain) IBOutlet MainViewController* mainController;

@end

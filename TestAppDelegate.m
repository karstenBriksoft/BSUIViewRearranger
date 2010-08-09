//
//  TestAppDelegate.m
//  BSUIViewRearranger
//
//  Created by Karsten Kusche on 09.08.10.
//  Copyright 2010 Briksoftware.com. All rights reserved.
//

#import "TestAppDelegate.h"


@implementation TestAppDelegate
@synthesize mainController;
@synthesize window;

- (BOOL)application:(UIApplication*)app didFinishLaunchingWithOptions:(NSDictionary*)options
{
	[window addSubview: mainController.view];
	[window makeKeyAndVisible];
	return YES;
}
@end

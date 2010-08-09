//
//  MainView.m
//  BSUIViewRearranger
//
//  Created by Karsten Kusche on 09.08.10.
//  Copyright 2010 Briksoftware.com. All rights reserved.
//

#import "MainViewController.h"
#import "BSUIViewRearranger.h"

@implementation MainViewController

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
	// using the animation is optional, but why not.
	
	[UIView animateWithDuration:duration animations:^(void) 
	{
		// pass the names of the nib file and my class.
		[BSUIViewRearranger rearrangeView: self.view
								   toMode: toInterfaceOrientation 
						usingLandscapeNib: @"MainViewLandscape" 
							  portraitNib: @"MainView"
						  controllerClass: [self class]];
	}];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation 
{
	// Yes, we need can rotate!
	return YES;
}


@end

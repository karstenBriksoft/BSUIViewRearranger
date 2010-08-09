#BSUIViewRearranger
_by @\_karsten\_ _

##About
The problem is simple: you create an app in portrait mode, think about the landscape UI and figure that all you want is the same controls, but just a different layout.

BSUIViewRearranger is a simple class that helps with exactly that. You create two nibs, one for portrait, one for landscape and then you let BSUIViewRearranger do all the figuring outs for you.

##Usage
In your view controller you implement the method to make your app work in landscape mode:

`- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation 
{
	return YES;
}
`

and the rotation method is implemented like that:

`- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
	[UIView animateWithDuration:duration animations:^(void) 
	{
		[BSUIViewRearranger rearrangeView: self.view
								   toMode: toInterfaceOrientation 
						usingLandscapeNib: @"MainViewLandscape" 
							  portraitNib: @"MainView"
						  controllerClass: [self class]];
	}];
}`

That's all you need to do. You pass the view, the orientation and the nib names. You also need to pass the view controller class that can open the nibs.

##Constrains
The algorithm to rearrange the views is no magic and doesn't have any heuristics about how to match the views. It only assumes one thing: both nibs create a view that has the __exact same structure__. Easiest thing to do is save your nib in portrait mode and then save it under a new name, rotate it and rearrange your controls. Do not nest views in one nib but not in the other!


Karsten
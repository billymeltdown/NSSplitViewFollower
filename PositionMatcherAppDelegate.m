//
//  PositionMatcherAppDelegate.m
//  PositionMatcher
//
//  Created by Billy Gray on 10/26/10.
//  Copyright 2010 Zetetic LLC. All rights reserved.
//

#import "PositionMatcherAppDelegate.h"

@interface PositionMatcherAppDelegate ()
- (void)repositionBottomBarButtons;
@end

@implementation PositionMatcherAppDelegate

@synthesize window, splitView, leftButton, rightButton, leftView, rightView;

// gets call after the NSSplitView is resized OR after the divider(s) are moved
- (void)splitViewDidResizeSubviews:(NSNotification *)aNotification
{
	[self repositionBottomBarButtons];
}

- (void)repositionBottomBarButtons
{
	// we don't actually have to do anything for the left-most button and the left pane
	// because we've got it pegged in IB to maintain it's position in relation to the
	// window's bottom and left bounds
	
	// first tell the superview that it will need to redraw the frame we'll be moving
	NSRect oldFrame = [rightButton frame];
	[[rightButton superview] setNeedsDisplayInRect:oldFrame];
	
	NSPoint newOrigin = rightView.frame.origin;
	
	NSRect newFrame = NSMakeRect(newOrigin.x, oldFrame.origin.y, oldFrame.size.width, oldFrame.size.height);
	[rightButton setFrame:newFrame];
	[rightButton setNeedsDisplay:YES];
}

@end

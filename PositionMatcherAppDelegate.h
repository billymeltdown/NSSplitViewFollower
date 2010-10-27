//
//  PositionMatcherAppDelegate.h
//  PositionMatcher
//
//  Created by Billy Gray on 10/26/10.
//  Copyright 2010 Zetetic LLC. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface PositionMatcherAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
	NSSplitView *splitView;
	NSButton *leftButton;
	NSButton *rightButton;
	NSView *leftView;
	NSView *rightView;
}

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSSplitView *splitView;
@property (assign) IBOutlet NSButton *leftButton;
@property (assign) IBOutlet NSButton *rightButton;
@property (assign) IBOutlet NSView *leftView;
@property (assign) IBOutlet NSView *rightView;

@end

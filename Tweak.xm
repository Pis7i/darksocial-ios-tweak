#import "SpringBoard/SpringBoard.h"
#import "igHeaders.h"
#import "basicHeaders.h"

%hook SpringBoard

	- (void)applicationDidFinishLaunching:(UIApplication *)application {
		%orig;

		NSLog(@"Application name: %@", application);

	}

%end

%hook IGMainAppHeaderView
	
	- (void)setBackgroundColor:(id)bgColor{
		bgColor = [UIColor colorWithRed:0.00 green:0.00 blue:0.00 alpha:1.0];
	}

%end

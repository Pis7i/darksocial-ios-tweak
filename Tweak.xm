#import "SpringBoard/SpringBoard.h"
#import "igHeaders.h"
#import "basicHeaders.h"

%hook SpringBoard

	- (void)applicationDidFinishLaunching:(UIApplication *)application {
		%orig;

		NSLog(@"Application name: %@", application);

	}

%end
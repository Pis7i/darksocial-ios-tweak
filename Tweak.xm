#import "SpringBoard/SpringBoard.h"
#import "igHeaders.h"
#import "basicHeaders.h"
#import "UIKit/UIView.h"
#import "UIKit/UIKit.h"

%hook SpringBoard

	- (void)applicationDidFinishLaunching:(UIApplication *)application {
		%orig;

		NSLog(@"Application name: %@", application);

	}

%end

%hook IGMainAppHeaderView
	
%end

%hook IGDirectInboxCellButtonConfig

- (id)initWithPrimaryText:(id)arg1 primaryTextColor:(id)arg2 primaryBackgroundColor:(id)arg3 destructiveText:(id)arg4 destructiveTextColor:(id)arg5 destructiveBackgroundColor:(id)arg6 {
	arg2 = [UIColor colorWithRed:0.00 green:0.38 blue:1.00 alpha:1.0];

		return %orig(arg1, arg2, arg3, arg4, arg5, arg6);
		NSLog(@"twst");

}

%end
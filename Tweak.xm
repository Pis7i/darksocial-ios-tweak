#import "SpringBoard/SpringBoard.h"
#import "igHeaders.h"
#import "basicHeaders.h"
#import "UIKit/UIView.h"
#import "UIKit/UIKit.h"

static UIColor *_hookedBGColor;

%hook SpringBoard

	- (void)applicationDidFinishLaunching:(UIApplication *)application {
		%orig;

		NSLog(@"Application name: %@", application);

	}

%end

%hook IGMainAppHeaderView
	- (void)layoutSubviews{
self.backgroundColor = [UIColor colorWithRed:0.00 green:0.00 blue:0.00 alpha:1.0];
}

%end

%hook IGPlainTableViewCell
	- (void)layoutSubviews {
		%orig();
		_hookedBGColor = MSHookIvar<UIColor *>(self, "_defaultBackgroundColor");

		_hookedBGColor = [UIColor colorWithRed:0.00 green:0.00 blue:0.00 alpha:1.0];
	}
%end
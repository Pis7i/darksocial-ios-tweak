#import "SpringBoard/SpringBoard.h"
#import "igHeaders.h"
#import "basicHeaders.h"
#import "UIKit/UIView.h"
#import "UIKit/UIKit.h"
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0x000000) >> 16))/255.0 green:((float)((rgbValue & 0x0000) >> 8))/255.0 blue:((float)(rgbValue & 0x00))/255.0 alpha:1.0];

static UIColor *_hookedBGColor;

%hook SpringBoard

	- (void)applicationDidFinishLaunching:(UIApplication *)application {
		%orig;

		NSLog(@"Application name: %@", application);

	}

%end

%hook IGMainAppHeaderView
	- (void)layoutSubviews{
self.backgroundColor = UIColorFromRGB(0x000000);
}

%end

%hook IGPlainTableViewCell
	- (void)layoutSubviews {
		%orig();
		_hookedBGColor = MSHookIvar<UIColor *>(self, "_defaultBackgroundColor");

		_hookedBGColor = [UIColor colorWithRed:0.00 green:0.00 blue:0.00 alpha:1.0];
	}
%end
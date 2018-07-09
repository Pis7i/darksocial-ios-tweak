#import "SpringBoard/SpringBoard.h"
#import "igHeaders.h"
#import "basicHeaders.h"
#import "UIKit/UIView.h"
#import <UIKit/UIKit.h>

//Ivars



//Hooks

%hook IGMainAppHeaderView

	- (void)setBackgroundColor:(UIColor *)color{
		%orig([UIColor colorWithRed:0.00 green:0.00 blue:0.00 alpha:1.0]);
	}

	- (void)setTintColor:(UIColor *)color{
		%orig([UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0]);
	}

	- (void)setImageColor:(UIColor *)color{
		%orig([UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0]);
	}
%end

%hook IGFeedItemHeader

- (void)setTextColor:(UIColor *)color{

%orig([UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0]);
}

	- (void)setBackgroundColor:(UIColor *)color{
		%orig([UIColor colorWithRed:0.00 green:0.00 blue:0.00 alpha:1.0]);
	}

%end


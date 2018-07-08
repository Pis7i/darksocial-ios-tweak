#import "SpringBoard/SpringBoard.h"
#import "igHeaders.h"
#import "basicHeaders.h"
#import "UIKit/UIView.h"
#import <UIKit/UIKit.h>

//Ivars



//Hooks

%hook IGNavigationBar
-(UIView *)contentOverlayView
{
	UIView *blankView = %orig;
	blankView.backgroundColor = [UIColor colorWithRed:0.00 green:0.00 blue:0.00 alpha:1.0];
	%log;
	return blankView;
}

%end
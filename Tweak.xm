#import "SpringBoard/SpringBoard.h"
#import "igHeaders.h"
#import "basicHeaders.h"
#import "UIKit/UIView.h"
#import <UIKit/UIKit.h>
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0x000000) >> 16))/255.0 green:((float)((rgbValue & 0x0000) >> 8))/255.0 blue:((float)(rgbValue & 0x00))/255.0 alpha:1.0];

//static UIColor *_hookedBGColor;
static UIView *_hookedUIViewHeader;
static UICollectionView *_hookedStoryTray;

%hook SpringBoard

	- (void)applicationDidFinishLaunching:(UIApplication *)application {
		%orig;

		NSLog(@"It Works!");

	}

%end


%hook IGMainAppHeaderView

	- (void)layoutSubviews{

		self.backgroundColor = UIColorFromRGB(0x000000);

		_hookedUIViewHeader = MSHookIvar<UIView *>(self, "_contentContainerView");
		_hookedUIViewHeader.interactionTintColor = UIColorFromRGB(0xFFFFFF);

		NSLog(@"Its Runned!");

		%orig;
}


%end

%hook IGStoryTrayCollectionViewCell

- (void)layoutSubviews {
   *_hookedStoryTray = MSHookIvar<UICollectionView *>(self, "*_collectionView");
   *_hookedStoryTray.backgroundColor = UIColorFromRGB(0x000000);
   
   %orig;
}

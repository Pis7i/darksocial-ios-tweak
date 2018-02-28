#import "SpringBoard/SpringBoard.h"
#import "igHeaders.h"
#import "basicHeaders.h"
#import "UIKit/UIView.h"
#import <UIKit/UIKit.h>

//Ivars
static UIView *_hookedUIViewHeader;
static UICollectionView *_hookedStoryTray;
static UILabel *hookedUILabelStoryTray;
static UIView *hookedUFICellView;

//Hooks
%hook IGMainAppHeaderView

	- (void)layoutSubviews{

		self.backgroundColor = UIColor.blackColor;

		_hookedUIViewHeader = MSHookIvar<UIView *>(self, "_contentContainerView");
		_hookedUIViewHeader.tintColor = UIColor.whiteColor;

		NSLog(@"Its Runned!");

		%orig;
}


%end

%hook IGStoryTrayCollectionViewCell

- (void)layoutSubviews {

   _hookedStoryTray = MSHookIvar<UICollectionView *>(self, "*_collectionView");
   _hookedStoryTray.backgroundColor = UIColor.blackColor;

   %orig;
}

%end

%hook IGStoryTrayCell

- (void)layoutSubviews {

	hookedUILabelStoryTray = MSHookIvar<UILabel *>(self, "titleLabel");

	hookedUILabelStoryTray.textColor = UIColor.whiteColor;

	%orig;
}

%end

%hook IGFeedItemHeader

- (void)layoutSubviews {
	self.backgroundColor = UIColor.blackColor;
	%orig;
}

%end

%hook IGFeedItemUFICell

- (void)layoutSubviews{
	hookedUFICellView = MSHookIvar<UIView *>(self, "contentView");
	hookedUFICellView.backgroundColor = UIColor.blackColor;

	%orig;
}

%end
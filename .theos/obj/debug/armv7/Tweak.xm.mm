#line 1 "Tweak.xm"
#import "SpringBoard/SpringBoard.h"
#import "igHeaders.h"
#import "basicHeaders.h"
#import "UIKit/UIView.h"
#import <UIKit/UIKit.h>
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0x000000) >> 16))/255.0 green:((float)((rgbValue & 0x0000) >> 8))/255.0 blue:((float)(rgbValue & 0x00))/255.0 alpha:1.0];


static UIView *_hookedUIViewHeader;
static UICollectionView *_hookedStoryTray;


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class SpringBoard; @class IGStoryTrayCollectionViewCell; @class IGMainAppHeaderView; 
static void (*_logos_orig$_ungrouped$SpringBoard$applicationDidFinishLaunching$)(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST, SEL, UIApplication *); static void _logos_method$_ungrouped$SpringBoard$applicationDidFinishLaunching$(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST, SEL, UIApplication *); static void (*_logos_orig$_ungrouped$IGMainAppHeaderView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL IGMainAppHeaderView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$IGMainAppHeaderView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL IGMainAppHeaderView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$IGStoryTrayCollectionViewCell$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL IGStoryTrayCollectionViewCell* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$IGStoryTrayCollectionViewCell$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL IGStoryTrayCollectionViewCell* _LOGOS_SELF_CONST, SEL); 

#line 12 "Tweak.xm"


	static void _logos_method$_ungrouped$SpringBoard$applicationDidFinishLaunching$(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIApplication * application) {
		_logos_orig$_ungrouped$SpringBoard$applicationDidFinishLaunching$(self, _cmd, application);

		NSLog(@"It Works!");

	}






	static void _logos_method$_ungrouped$IGMainAppHeaderView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL IGMainAppHeaderView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){

		self.backgroundColor = UIColorFromRGB(0x000000);

		_hookedUIViewHeader = MSHookIvar<UIView *>(self, "_contentContainerView");
		_hookedUIViewHeader._interactionTintColor = UIColorFromRGB(0xFFFFFF);

		NSLog(@"Its Runned!");

		_logos_orig$_ungrouped$IGMainAppHeaderView$layoutSubviews(self, _cmd);
}






static void _logos_method$_ungrouped$IGStoryTrayCollectionViewCell$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL IGStoryTrayCollectionViewCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
   *_hookedStoryTray = MSHookIvar<UICollectionView *>(self, "*_collectionView");
   *_hookedStoryTray.backgroundColor = UIColorFromRGB(0x000000);
   
   _logos_orig$_ungrouped$IGStoryTrayCollectionViewCell$layoutSubviews(self, _cmd);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SpringBoard = objc_getClass("SpringBoard"); MSHookMessageEx(_logos_class$_ungrouped$SpringBoard, @selector(applicationDidFinishLaunching:), (IMP)&_logos_method$_ungrouped$SpringBoard$applicationDidFinishLaunching$, (IMP*)&_logos_orig$_ungrouped$SpringBoard$applicationDidFinishLaunching$);Class _logos_class$_ungrouped$IGMainAppHeaderView = objc_getClass("IGMainAppHeaderView"); MSHookMessageEx(_logos_class$_ungrouped$IGMainAppHeaderView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$IGMainAppHeaderView$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$IGMainAppHeaderView$layoutSubviews);Class _logos_class$_ungrouped$IGStoryTrayCollectionViewCell = objc_getClass("IGStoryTrayCollectionViewCell"); MSHookMessageEx(_logos_class$_ungrouped$IGStoryTrayCollectionViewCell, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$IGStoryTrayCollectionViewCell$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$IGStoryTrayCollectionViewCell$layoutSubviews);} }
#line 51 "Tweak.xm"

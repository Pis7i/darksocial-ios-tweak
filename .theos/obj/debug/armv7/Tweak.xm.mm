#line 1 "Tweak.xm"
#import "SpringBoard/SpringBoard.h"
#import "igHeaders.h"
#import "basicHeaders.h"

static void 



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

@class IGMainAppHeaderView; @class SpringBoard; 
static void (*_logos_orig$_ungrouped$SpringBoard$applicationDidFinishLaunching$)(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST, SEL, UIApplication *); static void _logos_method$_ungrouped$SpringBoard$applicationDidFinishLaunching$(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST, SEL, UIApplication *); static id (*_logos_orig$_ungrouped$IGMainAppHeaderView$delegate)(_LOGOS_SELF_TYPE_NORMAL IGMainAppHeaderView* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$IGMainAppHeaderView$delegate(_LOGOS_SELF_TYPE_NORMAL IGMainAppHeaderView* _LOGOS_SELF_CONST, SEL); 

#line 8 "Tweak.xm"


	static void _logos_method$_ungrouped$SpringBoard$applicationDidFinishLaunching$(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIApplication * application) {
		_logos_orig$_ungrouped$SpringBoard$applicationDidFinishLaunching$(self, _cmd, application);

		NSLog(@"Application name: %@", application);

	}





    static id _logos_method$_ungrouped$IGMainAppHeaderView$delegate(_LOGOS_SELF_TYPE_NORMAL IGMainAppHeaderView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    _logos_orig$_ungrouped$IGMainAppHeaderView$delegate(self, _cmd);
    
    *_backgroundColor = [UIColor colorBlack];

    }
    

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SpringBoard = objc_getClass("SpringBoard"); MSHookMessageEx(_logos_class$_ungrouped$SpringBoard, @selector(applicationDidFinishLaunching:), (IMP)&_logos_method$_ungrouped$SpringBoard$applicationDidFinishLaunching$, (IMP*)&_logos_orig$_ungrouped$SpringBoard$applicationDidFinishLaunching$);Class _logos_class$_ungrouped$IGMainAppHeaderView = objc_getClass("IGMainAppHeaderView"); MSHookMessageEx(_logos_class$_ungrouped$IGMainAppHeaderView, @selector(delegate), (IMP)&_logos_method$_ungrouped$IGMainAppHeaderView$delegate, (IMP*)&_logos_orig$_ungrouped$IGMainAppHeaderView$delegate);} }
#line 29 "Tweak.xm"

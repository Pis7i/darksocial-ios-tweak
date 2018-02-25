#import "SpringBoard/SpringBoard.h"
#import "igHeaders.h"
#import "basicHeaders.h"

static void 


%hook SpringBoard

	- (void)applicationDidFinishLaunching:(UIApplication *)application {
		%orig;

		NSLog(@"Application name: %@", application);

	}

%end

%hook IGMainAppHeaderView

    - (id)delegate{
    %orig;
    
    *_backgroundColor = [UIColor colorWithRed:0.00 green:0.00 blue:0.00 alpha:1.0];

    }
    
%end

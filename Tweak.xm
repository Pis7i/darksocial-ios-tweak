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
    
    *_backgroundColor = [UIColor colorBlack];

    }
    
%end

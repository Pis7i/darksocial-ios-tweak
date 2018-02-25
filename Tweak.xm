#import "SpringBoard/SpringBoard.h"
#import "igHeaders.h"
#import "basicHeaders.h"

%hook SpringBoard

	- (void)applicationDidFinishLaunching:(UIApplication *)application {
		%orig;

		NSLog(@"Application name: %@", application);


       UIAlertView *alert1 = [[UIAlertView alloc] initWithTitle:@"Welcome"
        message:@"This is a test."
        delegate:self
        cancelButtonTitle:@"Testing"
        otherButtonTitles:nil];
    //Now show that alert
    [alert1 show];
    //And release it. We don't want any memory leaks ;)
    [alert1 release];

	}

%end
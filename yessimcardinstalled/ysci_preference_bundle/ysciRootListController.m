#include "ysciRootListController.h"
#include<spawn.h>





@implementation ysciRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
	}

	return _specifiers;

}\



-(void)respring {
	pid_t pid;
    int status;
    const char* args[] = {"killall", "SpringBoard", NULL};
    posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char* const*)args, NULL);
    waitpid(pid, &status, WEXITED);

      }


-(void)OpenGithub {
	[[UIApplication sharedApplication]
	openURL:[NSURL URLWithString:@"https://github.com/1DI4R/YesSIMCardInstalled/"]
	options:@{}
	completionHandler:nil];
	}

-(void)OpenTwitter {
	[[UIApplication sharedApplication]
	openURL:[NSURL URLWithString:@"https://twitter.com/1DI4R"]
	options:@{}
	completionHandler:nil];
		}
-(void)OpenWebsite {
	[[UIApplication sharedApplication]
	openURL:[NSURL URLWithString:@"https://1di4r.cf"]
	options:@{}
	completionHandler:nil];
		}

@end

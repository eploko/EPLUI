//
//  NSBundle+EPLUI.m
//  EPLUISample
//
//  Created by Andrey Subbotin on 12/16/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "NSBundle+EPLUI.h"

@implementation NSBundle (EPLUI)

+ (NSBundle *)EPLUI
{
	static NSBundle *bundle = nil;
	if (!bundle) {
		NSString *path = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"EPLUI.bundle"];
		bundle = [NSBundle bundleWithPath:path];
	}
	return bundle;
}

@end

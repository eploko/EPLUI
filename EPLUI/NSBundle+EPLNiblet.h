//
//  NSBundle+EPLNiblet.h
//  Karma World Kit
//
//  Created by Andrey Subbotin on 15.11.08.
//  Copyright 2008 Andrey Subbotin. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface NSBundle (EPLNiblet)

- (id)loadNibletOfClass:(Class)aClass
           fromNibNamed:(NSString *)name 
                  owner:(id)owner;

@end

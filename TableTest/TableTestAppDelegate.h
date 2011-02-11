//
//  TableTestAppDelegate.h
//  TableTest
//
//  Created by Samue Goodwin on 2/11/11.
//  Copyright 2011 Lead Engineer: ID345. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface TableTestAppDelegate : NSObject <NSApplicationDelegate> {
@private
    NSWindow *window;
    NSArray *items;
    NSTableView *tableView;
}

@property(assign)IBOutlet NSWindow *window;
@property(copy)NSArray *items;
@property(assign)IBOutlet NSTableView *tableView;
@end
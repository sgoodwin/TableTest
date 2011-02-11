//
//  TableTestAppDelegate.m
//  TableTest
//
//  Created by Samue Goodwin on 2/11/11.
//  Copyright 2011 Lead Engineer: ID345. All rights reserved.
//

#import "TableTestAppDelegate.h"
#import "TestItem.h"

@implementation TableTestAppDelegate

@synthesize window, items, tableView;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    
    TestItem *obj1 = [[TestItem alloc] init];
    obj1.title = @"A title!";
    obj1.subtitle = @"A longer subtitle!";
    obj1.anImage = [NSImage imageNamed:NSImageNameUser];
    
    TestItem *obj2 = [[TestItem alloc] init];
    obj2.title = @"Another title!";
    obj2.subtitle = @"An even much longer longer longer subtitle!";
    obj2.anImage = [NSImage imageNamed:NSImageNameEveryone];
    
    self.items = [NSArray arrayWithObjects:obj1, obj2, nil];
    [self.tableView reloadData];
}

#pragma mark -
#pragma mark NSTableViewDataSouce

- (CGFloat)tableView:(NSTableView *)tableView heightOfRow:(NSInteger)row{
    return 50.0f;
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)aTableView{
	return [self.items count];
}

- (id)tableView:(NSTableView *)aTableView objectValueForTableColumn:(NSTableColumn *)aTableColumn row:(NSInteger)rowIndex{
	return [self.items objectAtIndex:rowIndex];
}

- (BOOL)tableView:(NSTableView *)tableView isGroupRow:(NSInteger)row{
	return NO;
}


@end

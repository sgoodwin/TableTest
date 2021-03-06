//
//  TestItemCell.m
//  TableTest
//
//  Created by Samue Goodwin on 2/11/11.
//  Copyright 2011 Lead Engineer: ID345. All rights reserved.
//

#import "TestItemCell.h"
#import "TestItem.h"

@implementation TestItemCell
@synthesize imageCell, textAttributes, subtextAttributes;

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
        self.imageCell = [[NSImageCell alloc] init];
        self.textAttributes = [NSDictionary dictionaryWithObjectsAndKeys: [NSColor blackColor], NSForegroundColorAttributeName, [NSFont boldSystemFontOfSize:16], NSFontAttributeName, nil];
        self.subtextAttributes = [NSDictionary dictionaryWithObjectsAndKeys: [NSColor blackColor], NSForegroundColorAttributeName, [NSFont systemFontOfSize:10], NSFontAttributeName, nil];

    }
    
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

-(id) copyWithZone:(NSZone*) zone {
    TestItemCell *copy = [super copyWithZone:zone];
    copy.imageCell = self.imageCell;
    copy.textAttributes = self.textAttributes;
    copy.subtextAttributes = self.subtextAttributes;
    return copy;
}

- (void)setObjectValue:(id<NSCopying>)obj{
    [super setObjectValue:obj];
    TestItem *item = (TestItem*)obj;
    [self.imageCell setImage:[item anImage]];
}

- (void)drawWithFrame:(NSRect)cellFrame inView:(NSView *)controlView{
    TestItem *item = [self objectValue];
    NSPoint titlePoint, subtitlePoint;
	NSString *titleString = [item title];
    NSString *subtitleString = [item subtitle];
    
	titlePoint.x = 2.0f + NSHeight(cellFrame);
	titlePoint.y = cellFrame.origin.y;
    [titleString drawAtPoint:titlePoint withAttributes:self.textAttributes];
    
    subtitlePoint.x = titlePoint.x;
    subtitlePoint.y = titlePoint.y + 20.0f;
    [subtitleString drawAtPoint:subtitlePoint withAttributes:self.subtextAttributes];
    
    NSRect imageRect;
    imageRect.origin.x = cellFrame.origin.x + 1.0f;
    imageRect.origin.y = cellFrame.origin.y;
    imageRect.size.width = item.anImage.size.width;
    imageRect.size.height = item.anImage.size.height;
    [self.imageCell drawWithFrame:imageRect inView:controlView];
}
@end

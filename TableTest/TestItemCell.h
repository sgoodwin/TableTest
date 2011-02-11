//
//  TestItemCell.h
//  TableTest
//
//  Created by Samue Goodwin on 2/11/11.
//  Copyright 2011 Lead Engineer: ID345. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface TestItemCell : NSCell {
@private
    NSImageCell *imageCell;
    NSDictionary *textAttributes;
    NSDictionary *subtextAttributes;
}
@property(copy)NSImageCell *imageCell;
@property(copy)NSDictionary *textAttributes;
@property(copy)NSDictionary *subtextAttributes;
@end

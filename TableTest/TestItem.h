//
//  TestItem.h
//  TableTest
//
//  Created by Samue Goodwin on 2/11/11.
//  Copyright 2011 Lead Engineer: ID345. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface TestItem : NSObject <NSCopying>{
@private
    NSString *title;
    NSString *subtitle;
    NSImage *anImage;
}
@property(copy)NSString *title;
@property(copy)NSString *subtitle;
@property(copy)NSImage *anImage;
@end

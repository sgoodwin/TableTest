//
//  TestItem.m
//  TableTest
//
//  Created by Samue Goodwin on 2/11/11.
//  Copyright 2011 Lead Engineer: ID345. All rights reserved.
//

#import "TestItem.h"


@implementation TestItem
@synthesize title, subtitle, anImage;

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (id)copyWithZone:(NSZone *)zone{
    TestItem *copy = [[TestItem alloc] init];
    [copy setTitle:self.title];
    [copy setSubtitle:self.subtitle];
    [copy setAnImage:self.anImage];
    return copy;
}
@end

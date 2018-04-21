//
//  Test.m
//  PoRetain
//
//  Created by Dxc_iOS on 2018/4/20.
//  Copyright © 2018年 肖中旺. All rights reserved.
//

#import "Test.h"

@implementation Test
-(id)init
{
    self=[super init];
    if (self) {
        
    }
    return self;
}

- (id)copyWithZone:(NSZone *)zone{
    Test *p = [[[self class] allocWithZone:zone] init];
    return p;
}

-(void)dealloc
{
    [super dealloc];
}
@end

//
//  VSItem.m
//  VarietyStore
//
//  Created by jarenzhang on 2020/3/13.
//  Copyright © 2020 jarenzhang. All rights reserved.
//  俊哥说别动他的代码

#import "VSItem.h"

@implementation VSItem


- (instancetype)initWithName:(NSString *)name withSellDeadline:(NSInteger)sellDeadline withPrice:(NSInteger)price {
    
    if(self = [super init]) {
        _name = name;
        _sellDeadline = sellDeadline;
        _price = price;
    }
    
    return self;
    
}

- (NSString *)description {
    
    return [NSString stringWithFormat:@"%@, %@, %@", self.name, @(self.sellDeadline), @(self.price)];
    
}

@end

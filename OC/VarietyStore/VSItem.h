//
//  VSItem.h
//  VarietyStore
//
//  Created by jarenzhang on 2020/3/13.
//  Copyright © 2020 jarenzhang. All rights reserved.
//  俊哥说别动他的代码

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface VSItem : NSObject

@property (copy) NSString *name;
@property (assign) NSInteger sellDeadline;
@property (assign) NSInteger price;

- (instancetype)initWithName:(NSString *)name withSellDeadline:(NSInteger)sellDeadline withPrice:(NSInteger)price;

@end

NS_ASSUME_NONNULL_END

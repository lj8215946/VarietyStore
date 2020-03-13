//
//  VSVarietyStore.h
//  VarietyStore
//
//  Created by 芦佶 on 2020/3/13.
//  Copyright © 2020 芦佶. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VSItem.h"

NS_ASSUME_NONNULL_BEGIN

@interface VSVarietyStore : NSObject

@property (strong) NSArray<VSItem *> *items;

- (instancetype)initWithitems:(NSArray<VSItem *> *)items;

- (void) updateItems;

@end

NS_ASSUME_NONNULL_END

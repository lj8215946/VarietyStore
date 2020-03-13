//
//  VSVarietyStore.m
//  VarietyStore
//
//  Created by 芦佶 on 2020/3/13.
//  Copyright © 2020 芦佶. All rights reserved.
//

#import "VSVarietyStore.h"

@implementation VSVarietyStore

- (instancetype)initWithitems:(NSArray<VSItem *> *)items {
    
    if(self = [super init]) {
        self.items = items;
    }
    
    return self;
}

- (void) updateItems {
    for (int i = 0; i < self.items.count; i++) {
        if (![self.items[i].name isEqualToString:@"茅台"]
            && ![self.items[i].name isEqualToString:@"奇异果"]) {
            if (self.items[i].price > 0) {
                if (![self.items[i].name isEqualToString:@"钻戒"]) {
                    self.items[i].price = self.items[i].price - 1;
                }
            }
        } else {
            if (self.items[i].price < 50) {
                self.items[i].price = self.items[i].price + 1;
                
                if ([self.items[i].name isEqualToString:@"奇异果"]) {
                    if (self.items[i].sellDeadline < 11) {
                        if (self.items[i].price < 50) {
                            self.items[i].price = self.items[i].price + 1;
                        }
                    }
                    
                    if (self.items[i].sellDeadline < 6) {
                        if (self.items[i].price < 50) {
                            self.items[i].price = self.items[i].price + 1;
                        }
                    }
                }
            }
        }
        
        if (![self.items[i].name isEqualToString:@"钻戒"]) {
            self.items[i].sellDeadline = self.items[i].sellDeadline - 1;
        }
        
        if (self.items[i].sellDeadline < 0) {
            if (![self.items[i].name isEqualToString:@"茅台"]) {
                if (![self.items[i].name isEqualToString:@"奇异果"]) {
                    if (self.items[i].price > 0) {
                        if (![self.items[i].name isEqualToString:@"钻戒"]) {
                            self.items[i].price = self.items[i].price - 1;
                        }
                    }
                } else {
                    self.items[i].price = self.items[i].price - self.items[i].price;
                }
            } else {
                if (self.items[i].price < 50) {
                    self.items[i].price = self.items[i].price + 1;
                }
            }
        }
    }
}


@end


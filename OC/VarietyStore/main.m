//
//  main.m
//  VarietyStore
//
//  Created by 芦佶 on 2020/3/13.
//  Copyright © 2020 芦佶. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VSItem.h"
#import "VSVarietyStore.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"欢迎来到 8-12 便利店!");
        
        NSArray<VSItem *> *items = @[
            [[VSItem alloc] initWithName:@"面包" withSellDeadline:10 withPrice:20],
            [[VSItem alloc] initWithName:@"茅台"  withSellDeadline:2 withPrice:0],
            [[VSItem alloc] initWithName:@"方便面" withSellDeadline:5 withPrice:7],
            [[VSItem alloc] initWithName:@"钻戒" withSellDeadline:0 withPrice:80],
            [[VSItem alloc] initWithName:@"钻戒"  withSellDeadline:-1 withPrice:80],
            [[VSItem alloc] initWithName:@"奇异果" withSellDeadline:15 withPrice:20],
            [[VSItem alloc] initWithName:@"奇异果" withSellDeadline:10 withPrice:49],
            [[VSItem alloc] initWithName:@"奇异果" withSellDeadline:5 withPrice:49],
            //TODO 香蕉 这个商品的管理逻辑还没有完成
            [[VSItem alloc] initWithName:@"香蕉" withSellDeadline:3 withPrice:6]];
        
        VSVarietyStore *app = [[VSVarietyStore alloc] initWithitems:items];


        NSInteger days = 2;
        
        if (argc > 1) {
            days = [[[NSString alloc] initWithCString:argv[1] encoding:NSUTF8StringEncoding] intValue] + 1;
        }

        for (NSInteger i = 0; i < days; i++) {
            NSLog(@"-------- 第 %@ 天 --------", @(i));
            NSLog(@"名称, 保质期, 价钱");
            [items enumerateObjectsUsingBlock:^(VSItem * _Nonnull item, NSUInteger idx, BOOL * _Nonnull stop) {
                NSLog(@"%@", item);
            }];
            NSLog(@"\n");
            [app updateItems];
        }
        
    }
    return 0;
}

//
//  ListNode.m
//  LinkedList
//
//  Created by Oniityann on 2018/10/19.
//  Copyright © 2018 Oniityann. All rights reserved.
//

#import "ListNode.h"

@implementation ListNode

- (instancetype)initWithValue:(NSInteger)value next:(ListNode *)next {
    self = [super init];
    if (self) {
        _value = value;
        if (next) {
            _next = next;
        }
    }
    return self;
}

- (NSString *)description {
    
    if (self.next) {
        return [NSString stringWithFormat:@"%ld -> %@ ", self.value, self.next];
    } else {
        return [NSString stringWithFormat:@"%ld", self.value];
    }
}

@end

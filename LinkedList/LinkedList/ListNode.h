//
//  ListNode.h
//  LinkedList
//
//  Created by Oniityann on 2018/10/19.
//  Copyright © 2018 Oniityann. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class ListNode;

@interface ListNode : NSObject

@property (assign, nonatomic) NSInteger value;
@property (strong, nonatomic) ListNode * __nullable next;

- (instancetype)initWithValue:(NSInteger)value next:(ListNode * _Nullable)next;

@end

NS_ASSUME_NONNULL_END

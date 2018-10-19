//
//  LinkedList.h
//  LinkedList
//
//  Created by Oniityann on 2018/10/19.
//  Copyright © 2018 Oniityann. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListNode.h"

@interface LinkedList : NSObject

@property (strong, nonatomic) ListNode *head;
@property (strong, nonatomic) ListNode *tail;
@property (assign, nonatomic, readonly) BOOL isEmpty;

/// Push: 在链表头部添加值
- (void)push:(NSInteger)value;

/// Append: 在链表尾部添加值
- (void)append:(NSInteger)value;

/// NodeAt: 在某一个 index 的节点
- (ListNode *)nodeAt:(NSInteger)index;

/// InsertValue:After: 在某一个节点后插入
- (ListNode *)insertValue:(NSInteger)value After:(ListNode *)node;

/// Pop: 移除头节点
- (NSInteger)pop;

/// RemoveLast: 移除尾节点
- (NSInteger)removeLast;

/// RemoveAfter: 移除某个节点之后的一个节点
- (NSInteger)removeAter:(ListNode *)node;

@end

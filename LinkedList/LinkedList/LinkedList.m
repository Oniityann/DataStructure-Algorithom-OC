//
//  LinkedList.m
//  LinkedList
//
//  Created by Oniityann on 2018/10/19.
//  Copyright © 2018 Oniityann. All rights reserved.
//

#import "LinkedList.h"

@implementation LinkedList

- (BOOL)isEmpty {
    return self.head == nil;
}

/// Push: 在链表头部添加值
- (void)push:(NSInteger)value {
    self.head = [[ListNode alloc] initWithValue:value next:self.head];
    if (!self.tail) {
        self.tail = self.head;
    }
}

/// Append: 在链表尾部添加值
- (void)append:(NSInteger)value {
    if ([self isEmpty]) {
        [self push:value];
    } else {
        self.tail.next = [[ListNode alloc] initWithValue:value next:nil];
        self.tail = self.tail.next;
    }
}

/// NodeAt: 在某一个 index 的节点
- (ListNode *)nodeAt:(NSInteger)index {
    ListNode *currentNode = self.head;
    NSInteger currentIndex = 0;
    
    while (currentNode && currentIndex < index) {
        currentNode = currentNode.next;
        currentIndex++;
    }
    
    return currentNode;
}

/// InsertValue:After: 在某一个节点后插入
- (ListNode *)insertValue:(NSInteger)value After:(ListNode *)node {
    
    // 尾插
    if (self.tail == node) {
        [self append:value];
        return self.tail;
    }
    
    // 中间节点插入
    else {
        node.next = [[ListNode alloc] initWithValue:value next:node.next];
        return node.next;
    }
}

/// Pop: 移除头节点
- (NSInteger)pop {
    NSInteger value = self.head.value;
    self.head = self.head.next;
    if ([self isEmpty]) {
        self.tail = nil;
    }
    return value;
}

/// RemoveLast: 移除尾节点
- (NSInteger)removeLast {
    /// 只有一个节点
    if (!self.head.next) {
        return [self pop];
    }
    
    /// 有两个和以上节点
    else {
        ListNode *previous = self.head;
        ListNode *current = self.head;
        
        while (current.next) {
            previous = current;
            current = current.next;
        }
        
        NSInteger value = current.value;
        
        previous.next = nil;
        self.tail = previous;
        return value;
    }
}

/// RemoveAfter: 移除某个节点之后的一个节点
- (NSInteger)removeAter:(ListNode *)node {
    NSInteger removedValue = node.next.value;
    if (node.next == self.tail) {
        self.tail = node;
    }
    node.next = node.next.next;
    return removedValue;
}

- (NSString *)description {
    if (self.head) {
        return [self.head description];
    } else {
        return @"This is an empty list";
    }
}

@end

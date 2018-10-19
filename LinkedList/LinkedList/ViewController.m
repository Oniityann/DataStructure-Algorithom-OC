//
//  ViewController.m
//  LinkedList
//
//  Created by Oniityann on 2018/10/19.
//  Copyright © 2018 Oniityann. All rights reserved.
//

#import "ViewController.h"
#import "ListNode.h"
#import "LinkedList.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ListNode *node1 = [[ListNode alloc] initWithValue:1 next:nil];
    ListNode *node2 = [[ListNode alloc] initWithValue:2 next:nil];
    ListNode *node3 = [[ListNode alloc] initWithValue:3 next:nil];
    node1.next = node2;
    node2.next = node3;
    NSLog(@"%@", node1);
    
    LinkedList *list = [[LinkedList alloc] init];
    [list push:3];
    [list push:2];
    [list push:1];
    
    [list append:2];
    [list append:3];
    NSLog(@"%@", list);
    
    ListNode *target = [list nodeAt:1];
    ListNode *result = [list insertValue:9 After:target];
    NSLog(@"Target: %@\nResult: %@\nList:%@\n", target, result, list);
    
    NSInteger poppedValue = [list pop];
    NSLog(@"Popped value: %ld\nList: %@\n", poppedValue, list);
    
    NSInteger removedValue = [list removeLast];
    NSLog(@"Removed value: %ld\nList: %@\n", removedValue, list);
    
    ListNode *node = [list nodeAt:2];
    NSInteger removeAfterValue = [list removeAter:node];
    NSLog(@"Removed after value: %ld\nList: %@\n", removeAfterValue, list);
}


@end

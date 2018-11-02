//
//  Node.m
//  DataStrucutureEx
//
//  Created by Daniel Yo on 11/1/18.
//  Copyright © 2018 Daniel Yo. All rights reserved.
//

#import "Node.h"

// Delegates

// Utilities

// Globals

// Classes

// Classes - Models

// Classes - Views

// Classes - View Controllers

// Class Extensions

// Definitions


@interface Node ()



@end



@implementation Node


#pragma mark - Initialization
- (void)customInitNode {
    
}
- (instancetype)init {
    if (self = [super init]) {
        [self customInitNode];
        
    }
    return self;
}

- (instancetype)initWithValue:(NSNumber *)value {
    if (self = [super init]) {
        self.value = value;
    }
    return self;
}

#pragma mark - IBOutlets



#pragma mark - Properties



#pragma mark - Private API



#pragma mark - Public API
// binary search tree
+ (Node *)insertWithNode:(Node *)node value:(NSNumber *)value {
    
    if (!node) {
        return [[Node alloc] initWithValue:value];
    }
    
    if (value.integerValue < node.value.integerValue) {
        node.left = [self insertWithNode:node.left value:value];
    } else {
        node.right = [self insertWithNode:node.right value:value];
    }
    
    return node;
}

// regular binary tree
+ (Node *)insertLevelOrderWithArray:(NSArray *)array root:(Node *)root index:(NSInteger)index {
    
    if (index < array.count) {
        Node *temp = [[Node alloc] initWithValue:array[index]];
        root = temp;
        
        // insert left child
        root.left = [self insertLevelOrderWithArray:array root:root.left index:2 * index + 1];
        
        // insert right child
        root.right =  [self insertLevelOrderWithArray:array root:root.right index:2 * index + 2];
    }
    return root;
    
}

- (void)insertWithValue:(NSNumber *)newValue {
    // insertion in level order binary search tree
    [Node insertWithNode:self value:newValue];
}


#pragma mark - Delegate Methods



@end

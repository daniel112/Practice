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

- (instancetype)initWithValue:(NSString *)value {
    if (self = [super init]) {
        self.value = value;
    }
    return self;
}

#pragma mark - IBOutlets



#pragma mark - Properties



#pragma mark - Private API



#pragma mark - Public API
- (void)insertWithNode:(Node *)newNode {
    
}
- (void)insertWithValue:(NSString *)newValue {
    // insertion in level order
    // if we find a node whose left child is empty, we make new key as left child of the node. Else if we find a node whose right child is empty, we make new key as right child.
    if (!self.left) {
        self.left = [[Node alloc] initWithValue:newValue];
    }
}


#pragma mark - Delegate Methods



@end

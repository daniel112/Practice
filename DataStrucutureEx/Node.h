//
//  Node.h
//  DataStrucutureEx
//
//  Created by Daniel Yo on 11/1/18.
//  Copyright © 2018 Daniel Yo. All rights reserved.
//

#import <Foundation/Foundation.h>

// Delegates

// Utilities

// Globals

// Classes

// Classes - Models

// Classes - Views

// Classes - View Controllers

// Class Extensions

// Definitions


@interface Node : NSObject


#pragma mark - Custom Delegates


#pragma mark - Initialization
- (instancetype)initWithValue:(NSNumber *)value;

#pragma mark - IBOutlets


#pragma mark - Properties
@property (strong, nonatomic) NSNumber *value;
@property (strong, nonatomic) Node *parent;
@property (strong, nonatomic) Node *left;
@property (strong, nonatomic) Node *right;

#pragma mark - Public API
+ (Node *)insertWithNode:(Node *)node value:(NSNumber *)value;
+ (Node *)insertLevelOrderWithArray:(NSArray *)array root:(Node *)root index:(NSInteger)index;
- (void)insertWithValue:(NSNumber *)newValue;


@end

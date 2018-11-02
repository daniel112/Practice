//
//  ViewController.m
//  DataStrucutureEx
//
//  Created by Daniel Yo on 11/1/18.
//  Copyright © 2018 Daniel Yo. All rights reserved.
//

#import "ViewController.h"
#import "Node.h"

@interface ViewController ()

@property (strong, nonatomic) NSArray *array;

@end

@implementation ViewController

- (NSArray *)array {
    if (!_array) {
        _array = @[@1, @33, @2, @4, @3, @23];
    }
    return _array;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self binaryTree];
}

- (void)binaryTree {
    
    Node *root = [Node insertLevelOrderWithArray:self.array root:root index:0];
    
    
//    for (NSNumber *item in self.array) {
//        root = [Node insertWithNode:root value:item];
//    }
    
    //NSInteger index = 1;
//    while (index < self.array.count) {
//        [root insertWithValue:self.array[index]];
//        index++;
//    }
    NSLog(@"%@", root);
    
}

@end

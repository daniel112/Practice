//
//  ViewController.m
//  DataStrucutureEx
//
//  Created by Daniel Yo on 11/1/18.
//  Copyright © 2018 Daniel Yo. All rights reserved.
//

#import "ViewController.h"
#import "Node.h"
#import "Person.h"

@interface ViewController ()

@property (strong, nonatomic) NSArray *array;
@property (strong, nonatomic) NSMutableArray *people;

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
    
    Node *root = [[Node alloc] initWithValue:[self.array firstObject]];
    NSInteger index = 1;
    while (index < self.array.count) {
        [root insertWithValue:self.array[index]];
        index++;
    }
}


- (void)fbProblem {
    // given a list of people with their birth and death years, find the year with the highest population
    NSMutableDictionary *dict = [NSMutableDictionary new];
    for (Person *person in self.people) {
        for (NSInteger i = person.birthYear.integerValue; i < person.deathYear.integerValue; i++) {
            [dict valueForKey:[NSString stringWithFormat:@"%li", (long)i]];
            [dict setValue:person.birthYear forKey:[NSString stringWithFormat:@"%li", (long)i]];
        }
    }
    
    
}
@end

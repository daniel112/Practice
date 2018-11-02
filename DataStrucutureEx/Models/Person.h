//
//  Person.h
//  DataStrucutureEx
//
//  Created by Daniel Yo on 11/2/18.
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


@interface Person : NSObject


#pragma mark - Custom Delegates


#pragma mark - Initialization
- (instancetype)initWithBirthYear:(NSNumber *)birthYear deathYear:(NSNumber *)deathYear name:(NSString *)name;

#pragma mark - IBOutlets


#pragma mark - Properties
@property (strong, nonatomic) NSNumber *birthYear;
@property (strong, nonatomic) NSNumber *deathYear;
@property (strong, nonatomic) NSString *name;


#pragma mark - Public API



@end

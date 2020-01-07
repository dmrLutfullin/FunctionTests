//
//  ChildClass.m
//  FunctionTests
//
//  Created by Дамир Лутфуллин on 07.01.2020.
//  Copyright © 2020 Damir Lutfullin. All rights reserved.
//

#import "ChildClass.h"

@implementation ChildClass


- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Clild class is initialized!");
    }
    return self;
}

// свой метод
- (NSString*) saySomeNumberString {
    return @"SomeNumber!";
}


// переопределяем родительский метод
- (NSString*) saySomething {
    
    return [super saySomeNumberString]; // вызывает метод у родителя из за указателя super
}

@end

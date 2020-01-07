//
//  ParentClass.m
//  FunctionTests
//
//  Created by Дамир Лутфуллин on 05.01.2020.
//  Copyright © 2020 Damir Lutfullin. All rights reserved.
//

#import "ParentClass.h"

@implementation ParentClass

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Parent class is initialized!");
    }
    return self;
}

// метод самого класса
+ (void) whoAreYou {
    NSLog(@"I am parent class");
}

// возращает дату в строковом формате
// приватный метод так как его нет в хедере
- (NSString*) saySomeNumberString {
    return [NSString stringWithFormat :@"%@", [NSDate date]];
}

- (void) sayHello {
    NSLog(@"Parent says hello!");
}

- (void) say: (NSString*) string  {
    NSLog(@"%@", string);
}

- (void) say: (NSString*) string and: (NSString*) string2  {
    NSLog(@"%@, %@", string, string2);
}

// метод возвращает результат работы другого метода
- (NSString*) saySomething {

    NSString* string = [self saySomeNumberString]; // создаем переменную, которой присваеваем значение, возвращаемое методом этого же класса

    return string;
}


@end

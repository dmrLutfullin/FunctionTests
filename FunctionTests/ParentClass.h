//
//  ParentClass.h
//  FunctionTests
//
//  Created by Дамир Лутфуллин on 05.01.2020.
//  Copyright © 2020 Damir Lutfullin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ParentClass : NSObject

+ (void) whoAreYou;

- (NSString*) saySomeNumberString;
- (void) sayHello;
- (void) say: (NSString*) string;
- (void) say: (NSString*) string and: (NSString*) string2;
- (NSString*) saySomething;

@end

NS_ASSUME_NONNULL_END

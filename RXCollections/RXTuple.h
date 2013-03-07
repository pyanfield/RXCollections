//  RXTuple.h
//  Created by Rob Rix on 2013-03-06.
//  Copyright (c) 2013 Rob Rix. All rights reserved.

#import <Foundation/Foundation.h>

@interface RXTuple : NSObject <NSFastEnumeration>

+(instancetype)tupleWithArray:(NSArray *)array;

-(id)objectAtIndexedSubscript:(NSUInteger)subscript;

@property (nonatomic, readonly) NSUInteger count;

@end

@interface RXTuple ()

+(instancetype)allocWithZone:(NSZone *)zone __attribute__((unavailable));
-(instancetype)init __attribute__((unavailable));
//+(instancetype)alloc __attribute__((unavailable));

@end
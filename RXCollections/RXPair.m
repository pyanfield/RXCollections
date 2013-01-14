//  RXPair.m
//  Created by Rob Rix on 2013-01-12.
//  Copyright (c) 2013 Rob Rix. All rights reserved.

#import "RXPair.h"

@implementation RXPair

+(instancetype)pairWithLeft:(id)left right:(id)right {
	return [[self alloc] initWithLeft:left right:right];
}

-(instancetype)initWithLeft:(id)left right:(id)right {
	if ((self = [super init])) {
		_left = left;
		_right = right;
	}
	return self;
}


-(instancetype)copyWithZone:(NSZone *)zone {
	return self;
}

@end


@implementation RXPair (RXPairNSDictionaryConvenience)

+(instancetype)pairWithKey:(id<NSCopying>)key value:(id)value {
	return [[self alloc] initWithLeft:key right:value];
}


-(id<NSCopying>)key {
	return self.left;
}

-(id)value {
	return self.right;
}

@end
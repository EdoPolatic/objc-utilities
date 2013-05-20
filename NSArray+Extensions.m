//
//  NSArray+Extensions.m
//
//  Created by Karthik on 1/25/13.
// A bunch of simple category methods on NSArray

#import "NSArray+Extensions.h"

@implementation NSArray (Extensions)

- (NSMutableString*)commaSeperatedList
{
  NSMutableString *list = [[NSMutableString alloc] init];
  NSEnumerator *objEnum = [self objectEnumerator];
  id obj;
  while (obj = [objEnum nextObject]) {
    [list appendString:[NSString stringWithFormat:@"%@, ", obj]];
  }
  return list;
}

- (BOOL)isEmptyOrNil
{
	NSEnumerator *objEnum = [self objectEnumerator];
  id obj;
  while (obj = [objEnum nextObject])
	{
		if (obj && [(NSString*)obj length] > 0)
			return NO;
	}
	return YES;
}

- (BOOL)isEmptyOrNone
{
	NSEnumerator *objEnum = [self objectEnumerator];
  id obj;
  while (obj = [objEnum nextObject])
	{
		if (obj && ![(NSString*)obj isEqualToString:@"None"])
			return NO;
	}
	return YES;
}

@end

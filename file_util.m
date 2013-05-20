//
//  file_util.m
//
//  Created by Karthik on 1/4/13.
// A bunch of file utility functions in Objective C

#import "file_util.h"

@implementation FileUtility

+ (NSString *)readFromFile:(NSString *)fileName ofType:(NSString *)type
{
	NSString *filePath = [[NSBundle mainBundle] pathForResource:fileName ofType:type];
	NSString *stringFromFile = [[NSString alloc] initWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
	return stringFromFile;
}

+ (NSArray *)readFromJson:(NSString *)filename
{
  NSString *jsonPath = [[NSBundle mainBundle] pathForResource:filename ofType:@"json"];
  NSArray* jsonArr = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:jsonPath]
                                                         options:kNilOptions
                                                           error:nil];
  return jsonArr;
}

end

//
//  file_util.h
//
//  Created by Karthik on 1/4/13.
//
// A bunch of simple file utility functions in Objective C

#import <Foundation/Foundation.h>

@interface FileUtility : NSObject

+(NSString*)readFromFile:(NSString *)fileName ofType:(NSString *)type;
+(NSArray*)readFromJson:(NSString *)filename;

@end

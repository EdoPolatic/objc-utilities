//
//  date_util.h
//
//
// Collection of simple Date utility methods

#import <Foundation/Foundation.h>

@interface DateUtility : NSObject

+(NSString*)createHumanizedDateString:(NSDate*)date;
+(int)compareDateWithCurrent:(NSDate*)date;
+(NSDate*)extractDateComponent:(NSDate *)date;
+(NSString*)createShortTimeString:(NSDate *)date;
+(int)extractDayComponent:(NSDate *)date;
+(NSString*)createMediumDateString:(NSDate *)date;
+(NSString*)createMediumDateTimeString:(NSDate *)date;
+(NSMutableArray*)constructMonthYearArray:(NSDate *)date;
+(NSString*)extractMonthAndYear:(NSDate*)date;
+(NSDate*)lastDayOfMonthYear:(NSString*)monthYear;
+(NSString*)abbreviateWeekdays:(NSArray*)days;
+(NSArray*)weekDays;
+(NSDate*)findNextDateForDay:(NSString*)day;
+(NSDate*)findYesterdaysDateForDate:(NSDate*)date;
+(NSDate*)findTomorrowsDateForDate:(NSDate*)date;
+(NSDate*)getCurrentTimeForDate:(NSDate*)date;

@end

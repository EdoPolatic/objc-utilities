//
//  date_util.m
//
//  Created by Karthik on 1/4/13.
//
// Collection of Simple Date utility functions in Objective C

#import "date_util.h"

@implementation DateUtility

+ (NSString *)createHumanizedDateString:(NSDate *)date
{
	NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
  switch ([DateUtility compareDateWithCurrent:date]) {
    case 0:
      [formatter setDateFormat:@"'Today at' h:mm a"];
      break;
    case 1:
      [formatter setDateFormat:@"'Tomorrow at' h:mm a"];
      break;
    case -1:
      [formatter setDateFormat:@"'Yesterday at' h:mm a"];
      break;
    case 100:
      [formatter setDateFormat:@"MMM d, YYYY 'at' h:mm a"];
      break;
    default:
      break;
  }
	return [formatter stringFromDate:date];
}

+ (int)compareDateWithCurrent:(NSDate *)date
{
  NSDate* enddate = date;
  
  NSDate* theMidnightHour = [DateUtility extractDateComponent:[NSDate date]];
  NSTimeInterval distanceBetweenDates = [enddate timeIntervalSinceDate:theMidnightHour];
  double secondsInHour = 3600;
  NSInteger hoursBetweenDates = distanceBetweenDates / secondsInHour;
  
  if (hoursBetweenDates >= 0 && hoursBetweenDates <= 23)
    return 0;
  else if (hoursBetweenDates >= 24 && hoursBetweenDates <= 47)
    return 1;
  else if (hoursBetweenDates >= -24 && hoursBetweenDates < 0)
    return -1;
  else

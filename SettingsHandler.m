//
//  SettingsHandler.m
//  MusicQuiz
//
//  Created by Alexander Rummel on 01.01.14.
//  Copyright (c) 2014 Alexander Rummel. All rights reserved.
//

#import "SettingsHandler.h"


@implementation SettingsHandler

- (Setting *) getSetting
{
    Setting *setting = [[Setting alloc] init];
    @try
    {
        NSFileManager *fileMgr = [NSFileManager defaultManager];
        NSString *dbPath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"MusicQuiz.sqlite"];
        BOOL success = [fileMgr fileExistsAtPath:dbPath];
        if(!success)
            NSLog(@"Cannot locate database file '%@'", dbPath);
        if(!(sqlite3_open([dbPath UTF8String], &db) == SQLITE_OK))
            NSLog(@"An error has occured.");
        
        NSString *sqlString = @"SELECT AvailableAnswers, AvailableJokers FROM Settings";
        const char *sql = [sqlString UTF8String];
        
        sqlite3_stmt *sqlStatement;
        
        if(sqlite3_prepare_v2(db, sql, -1, &sqlStatement, NULL) != SQLITE_OK)
        {
            NSLog(@"Problem with Prepare Statement");
        }
        
        while(sqlite3_step(sqlStatement) == SQLITE_ROW)
        {
            setting.availableAnswers = sqlite3_column_int(sqlStatement, 0);
            setting.availableJokers = sqlite3_column_int(sqlStatement, 1);
            return setting;
        }
    }
    @catch (NSException *exception)
    {
        NSLog(@"An exception occured: %@", [exception reason]);
    }
    @finally
    {
        return setting;
    }
}

@end

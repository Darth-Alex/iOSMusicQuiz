//
//  SettingsHandler.h
//  MusicQuiz
//
//  Created by Alexander Rummel on 01.01.14.
//  Copyright (c) 2014 Alexander Rummel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>
#import "Setting.h"

@interface SettingsHandler : NSObject
{
    sqlite3 *db;
}

- (Setting *) getSetting;

@end

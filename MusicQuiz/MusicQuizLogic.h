//
//  MusicQuizLogic.h
//  MusicQuiz
//
//  Created by Alexander Rummel on 17.04.13.
//  Copyright (c) 2013 Alexander Rummel. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum { playlist, genre, artis } GameMode;

@interface MusicQuizLogic : NSObject

-(void)setJokerEnabled : (bool *) enabled;

-(NSArray *) GetPlaylists;

-(void)setGameMode : (GameMode *) mode;

@end

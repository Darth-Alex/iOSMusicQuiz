//
//  MusicQuizLogic.m
//  MusicQuiz
//
//  Created by Alexander Rummel on 17.04.13.
//  Copyright (c) 2013 Alexander Rummel. All rights reserved.
//

#import "MusicQuizLogic.h"
#import <MediaPlayer/MPMediaPlaylist.h>
#import <MediaPlayer/MPMediaQuery.h>

@implementation MusicQuizLogic

-(id)init
{
    if(self == [super init])
    {
       //Additional things
    }
    return self;
}

-(void)setGameMode:(GameMode *)mode
{
}

-(NSArray*)GetPlaylists
{
    MPMediaQuery *playListsQuery = [MPMediaQuery playlistsQuery];
    return [playListsQuery collections];
}

-(void)setJokerEnabled:(bool *)enabled
{
    
}

@end

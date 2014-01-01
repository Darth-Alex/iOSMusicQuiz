//
//  Setting.h
//  MusicQuiz
//
//  Created by Alexander Rummel on 01.01.14.
//  Copyright (c) 2014 Alexander Rummel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Setting : NSObject
{
    NSInteger *availableAnswers;
    NSInteger *availableJokers;
    BOOL *facebookSharing;
    BOOL *twitterSharing;
}

@property(nonatomic, assign)NSInteger *availableAnswers;
@property(nonatomic, assign)NSInteger *availableJokers;
@property(nonatomic, assign)BOOL *facebookSharing;
@property(nonatomic, assign)BOOL *twitterSharing;


@end

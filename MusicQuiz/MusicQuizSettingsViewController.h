//
//  MusicQuizSettingsViewController.h
//  MusicQuiz
//
//  Created by Alexander Rummel on 16.04.13.
//  Copyright (c) 2013 Alexander Rummel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MusicQuizSettingsViewController : UIViewController
{
    NSString *settingsPath;
    NSMutableArray *array;
}

@property (weak, nonatomic) IBOutlet UILabel *lbAnswers;
@property (weak, nonatomic) IBOutlet UILabel *lbJokers;

@end

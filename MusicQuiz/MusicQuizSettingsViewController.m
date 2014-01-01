//
//  MusicQuizSettingsViewController.m
//  MusicQuiz
//
//  Created by Alexander Rummel on 16.04.13.
//  Copyright (c) 2013 Alexander Rummel. All rights reserved.
//

#import "MusicQuizSettingsViewController.h"
#import "SettingsHandler.h"


@implementation MusicQuizSettingsViewController


- (IBAction)answerChanger_ValueChanged:(id)sender
{
    int oldValue = (int)self.lbAnswers.text;
    oldValue++;
    self.lbAnswers.text = [NSString stringWithFormat:@"%d", oldValue];
    [self storeAvailableAnswers:oldValue];
}

- (IBAction)jokerChanger_ValueChanged:(id)sender
{
    int oldValue = (int)self.lbJokers.text;
    oldValue ++;
    self.lbJokers.text = [NSString stringWithFormat:@"%d", oldValue];
    [self storeAvailableJokers:oldValue];
}

- (id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        self.title = NSLocalizedString(@"Einstellungen", @"Settings");
        self.tabBarItem.image = [UIImage imageNamed:@"First.png"];
        
    }
    return self;
}

-(void)loadInitialStates
{
    SettingsHandler *handler = [[SettingsHandler alloc] init];
    Setting *setting = [handler getSetting];
    self.lbAnswers.text = [NSString stringWithFormat:@"%d", (int) setting.availableAnswers];
    self.lbJokers.text = [NSString stringWithFormat:@"%d", (int) setting.availableJokers];
}

-(void)storeAvailableJokers:(int)value
{
    
}

-(void)storeAvailableAnswers:(int)value
{
    
}

-(void)viewDidLoad
{
    [super viewDidLoad];
    [self loadInitialStates];
}

-(void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

@end

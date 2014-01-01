//
//  MusicQuizStatistikViewController.m
//  MusicQuiz
//
//  Created by Alexander Rummel on 16.04.13.
//  Copyright (c) 2013 Alexander Rummel. All rights reserved.
//

#import "MusicQuizStatistikViewController.h"

@interface MusicQuizStatistikViewController ()

@end

@implementation MusicQuizStatistikViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Statistik", @"StatisktikModul");
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

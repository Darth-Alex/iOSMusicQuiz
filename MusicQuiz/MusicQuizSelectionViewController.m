//
//  MusicQuizSelectionViewController.m
//  MusicQuiz
//
//  Created by Alexander Rummel on 21.04.13.
//  Copyright (c) 2013 Alexander Rummel. All rights reserved.
//

#import "MusicQuizSelectionViewController.h"
#import "MusicQuizLogic.m"

@interface MusicQuizSelectionViewController ()

@end

@implementation MusicQuizSelectionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Auswahl der Musik";
    }
    return self;
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    MusicQuizLogic *logic = [[MusicQuizLogic alloc]init];
    NSArray *playlists = [logic GetPlaylists];
    return [playlists count];
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MusicQuizLogic *logic = [[MusicQuizLogic alloc]init];
    NSArray *playlists = [logic GetPlaylists];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCellIdentifier"];
    
    if (cell == NULL)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"myCellIdentifier"];
    }
    
    cell.textLabel.text = [[playlists objectAtIndex:indexPath.row]valueForProperty:MPMediaPlaylistPropertyName];
    
    return cell;
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

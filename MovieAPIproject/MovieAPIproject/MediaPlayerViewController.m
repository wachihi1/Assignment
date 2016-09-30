//
//  MediaPlayerViewController.m
//  MovieAPIproject
//
//  Created by ilabafrica on 30/09/2016.
//  Copyright © 2016 ilabafrica. All rights reserved.
//

#import "MediaPlayerViewController.h"

@interface MediaPlayerViewController ()

@end

@implementation MediaPlayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)playAudio:(UIButton *)sender {
    NSString *path =[[NSBundle mainBundle] pathForResource:@"trouble" ofType:@"mp3"];
    audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path ] error:NULL];
    [audioPlayer play];
}

- (IBAction)playVideo:(UIButton *)sender {
    NSString *path =[[NSBundle mainBundle] pathForResource:@"troubleV" ofType:@"mp4"];
    moviePlayer =[[MPMoviePlayerViewController alloc] initWithContentURL:[NSURL  fileURLWithPath:path]];
    [self presentModalViewController:moviePlayer animated:NO];

}
@end

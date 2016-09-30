//
//  MediaPlayerViewController.h
//  MovieAPIproject
//
//  Created by ilabafrica on 30/09/2016.
//  Copyright © 2016 ilabafrica. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>

@interface MediaPlayerViewController : UIViewController{
    AVAudioPlayer *audioPlayer;
    MediaPlayerViewController *moviePlayer;

}

- (IBAction)playAudio:(UIButton *)sender;
- (IBAction)playVideo:(UIButton *)sender;

@end

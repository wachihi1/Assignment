//
//  PreviewViewController.h
//  MovieAPIproject
//
//  Created by ilabafrica on 28/07/2016.
//  Copyright © 2016 ilabafrica. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "Film.h"
#import "PreviewFilm.h"
#import "BaseViewController.h"
#import "Movie.h"
#import "AppDelegate.h"

@interface PreviewViewController : BaseViewController
{
   NSString *noResultText;
}
@property (weak, nonatomic) IBOutlet UIImageView *imgPoster;
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;
@property (weak, nonatomic) IBOutlet UILabel *lblDescription;

@property(nonatomic,retain) Film *film;
@property(nonatomic,retain) PreviewFilm *filmPreview;
@property (nonatomic, strong) Movie *filmSaved;



//data persistent with core data
@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;


-(void)fetchData:(NSString *)urlParameter;
-(void) designUI:(PreviewFilm *) preview;- (IBAction)bookmarkFilm:(id)sender;

@end

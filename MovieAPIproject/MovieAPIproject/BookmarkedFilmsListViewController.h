//
//  BookmarkedFilmsListViewController.h
//  MovieAPIproject
//
//  Created by ilabafrica on 04/08/2016.
//  Copyright © 2016 ilabafrica. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Movie.h"
#import "AppDelegate.h"
#import "BaseViewController.h"
#import "Film.h"

@interface BookmarkedFilmsListViewController : BaseViewController

@property (weak, nonatomic) IBOutlet UITableView *myTableView;

//data persistent
@property(nonatomic,retain) NSManagedObjectContext *managedObjectContext;
@property(strong,nonatomic) NSMutableArray *masterFilmList;
@property(nonatomic, strong) NSArray* fetchedRecordsArray;
-(Film *)objectInListAtIndex:(NSUInteger)theIndex;


@end

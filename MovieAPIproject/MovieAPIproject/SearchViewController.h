//
//  SearchViewController.h
//  MovieAPIproject
//
//  Created by ilabafrica on 28/07/2016.
//  Copyright © 2016 ilabafrica. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"


@interface SearchViewController : BaseViewController
{
    NSString *noResultText;
}
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (weak, nonatomic) IBOutlet UITableView *myTableView;

@property(strong, nonatomic) NSMutableArray *masterFilmList;

-(void) fetchData: (NSString *)parameters;

@end

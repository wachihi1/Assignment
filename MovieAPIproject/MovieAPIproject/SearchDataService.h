//
//  SearchDataService.h
//  MovieAPIproject
//
//  Created by ilabafrica on 28/07/2016.
//  Copyright © 2016 ilabafrica. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseDataService.h"

@interface SearchDataService : BaseDataService
   -(NSMutableArray *) getSearchedFilmFromAPI:(NSString *)searchParam;

@end

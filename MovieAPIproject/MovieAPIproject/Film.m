//
//  Film.m
//  MovieAPIproject
//
//  Created by ilabafrica on 28/07/2016.
//  Copyright © 2016 ilabafrica. All rights reserved.
//

#import "Film.h"

@implementation Film
@synthesize title=_title, year=_year, imdbID=_imdbID, type=_type, poster=_poster;

-(NSMutableArray *)films{
    if (!_films) {
        _films = [[NSMutableArray alloc] init];
    }
    return _films;
}

-(instancetype) initWithAttributes:(NSDictionary *)attributes{
    self = [super init];
    
    if (self) {
        self.title = [attributes objectForKey:@"Title"];
        self.year = [attributes objectForKey:kYear];
        self.poster = [attributes objectForKey:kPoster];
        self.type = [attributes objectForKey:kType];
        self.imdbID = [attributes objectForKey:kImdbID];
        
        
    }
    
    return self;
}


@end

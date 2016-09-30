                                                                                                                                                                                                                                                                    //
//  PreviewDataService.h
//  MovieAPIproject
//
//  Created by ilabafrica on 28/07/2016.
//  Copyright © 2016 ilabafrica. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "BaseDataService.h"
#import "PreviewFilm.h"

@interface PreviewDataService : BaseDataService

-(PreviewFilm *) getFilmPreviewFromAPI:(NSString *)urlParameter;

@end

//
//  TPDAppleMapsApp.m
//
//  Created by Mark Ferlatte on 9/11/13.
//  Copyright © 2013 Tetherpad. All rights reserved.
//

// Citymapper URL documentation:
// http://blog.citymapper.com/post/59578777734/launching-citymapper-directions-from-apps-and-the

@import UIKit;

#import "TPDCitymapperApp.h"
#import "TPDURLUtilities.h"

@implementation TPDCitymapperApp

static NSString *const mapsBaseURLString = @"citymapper://directions";

- (NSString *)name {
    return @"Citymapper";
}

- (BOOL)isInstalled {
    return [[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:mapsBaseURLString]];
}

- (NSString *)identifier {
    return mapsBaseURLString;
}

- (BOOL)openWithQuery:(NSString *)query {
    NSDictionary *params = @{
                             @"endcoord" : query
                             };
    return OpenNSURLWithBaseURLStringAndParams(mapsBaseURLString, params);
}

- (BOOL)openForDirectionsWithStart:(NSString *)start
                       destination:(NSString *)destination
                        travelMode:(enum TPDMapsAppTravelMode)travelMode {
    NSDictionary *params = @{
                             @"startcoord" : start,
                             @"endcoord" : destination
                             };
    return OpenNSURLWithBaseURLStringAndParams(mapsBaseURLString, params);
}

@end

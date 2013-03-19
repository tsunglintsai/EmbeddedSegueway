//
//  MyMapVC.h
//  EmbeddedSegueway
//
//  Created by Daniela on 3/19/13.
//  Copyright (c) 2013 Pyrogusto. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MyMapVC : UIViewController
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (nonatomic) BOOL makeMapSmaller;

@end

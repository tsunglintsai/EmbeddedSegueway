//
//  MyMapVC.m
//  EmbeddedSegueway
//
//  Created by Daniela on 3/19/13.
//  Copyright (c) 2013 Pyrogusto. All rights reserved.
//

#import "MyMapVC.h"

@interface MyMapVC () <MKMapViewDelegate>
@property (nonatomic,strong) MyMapVC *minimapVC;
@end

@implementation MyMapVC


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    if(self.makeMapSmaller){
        [self.mapView setRegion:MKCoordinateRegionMake(  CLLocationCoordinate2DMake(0, 0) , MKCoordinateSpanMake(0.05, 0.05)) animated:YES];
    }
}

- (void)setMapView:(MKMapView *)mapView{
    _mapView = mapView;
    _mapView.delegate = self;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showMiniMap"]) {
        //NSLog(@"pusing to PickRoomSegue");
        UIViewController *destinationViewController = segue.destinationViewController;
        if([destinationViewController isKindOfClass:[MyMapVC class]]){
            self.minimapVC = (MyMapVC*) destinationViewController;
            self.minimapVC.makeMapSmaller = YES;
            NSLog(@"set");
            
        }
    }
}
- (IBAction)setBtnClicked:(id)sender {
    
}

- (void)mapView:(MKMapView *)mapView regionDidChangeAnimated:(BOOL)animated{
    self.minimapVC.mapView.centerCoordinate = self.mapView.centerCoordinate;
}
@end

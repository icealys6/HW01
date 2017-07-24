//
//  detailedLandmarkViewController.m
//  sc00-Landmarks
//
//  Created by shfrc101b8 on 2016-11-05.
//  Copyright © 2016 shfrc101b8. All rights reserved.
//

#import "detailedLandmarkViewController.h"
#import "UIkit/UIkit.h"

@interface detailedLandmarkViewController ()

@property (strong, nonatomic) IBOutlet UIImageView *detailedImg;
@property (strong, nonatomic) IBOutlet UILabel *yearBuilt;
@property (strong, nonatomic) IBOutlet UILabel *address;
@property (strong, nonatomic) IBOutlet UILabel *detailedSummary;

@end

@implementation detailedLandmarkViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.detailedImg.image = [UIImage imageNamed:self.detailedLm.img];
    
    
    if([self.detailedLm.name  isEqual: @"Villa Vizcaya"])
    {
        self.yearBuilt.text = @"1914-1923";
        self.address.text = @"3251 S Miami Ave, Miami, FL 33129";
        self.detailedSummary.text = @"The landscape and architecture were influenced by Veneto and Tuscan Italian Renaissance models and designed in the Mediterranean Revival architecture style, with Baroque elements";
    }
    else if([self.detailedLm.name  isEqual: @"Fairchild Tropical Gardens"])
    {
        self.yearBuilt.text = @"1872-1953";
        self.address.text = @"10901 Old Cutler Road, Miami, FL 33156";
        self.detailedSummary.text = @"Fairchild Tropical Botanic Garden is an 83-acre (34 ha) botanic garden, with extensive collections of rare tropical plants including palms, cycads, flowering trees and vines.";
    }
    else if([self.detailedLm.name  isEqual: @"Bayfront Park"])
    {
        self.yearBuilt.text = @"1925";
        self.address.text = @"Bayfront Park, Miami, FL 33132";
        self.detailedSummary.text = @"Bayfront Park is bordered on the north by Bayside Marketplace and the American Airlines Arena, on the south by Chopin Plaza, on the west by Biscayne Boulevard and on the east by Biscayne Bay.";
    }
    else if([self.detailedLm.name  isEqual: @"Venetian Pool"])
    {
        self.yearBuilt.text = @"1924";
        self.address.text = @"2701 De Soto Blvd, Coral Gables, FL 33134";
        self.detailedSummary.text = @"The Venetian Pool has gone through several phases. A large additional island was created to allow Venetian style gondolas to dock alongside though the gondolas were later removed. A high diving platform was constructed above the grand waterfall and was also later torn down.";
    }
    else if([self.detailedLm.name  isEqual: @"Marlins Park"])
    {
        self.yearBuilt.text = @"2012";
        self.address.text = @"501 Marlins Way, Miami, FL 33125";
        self.detailedSummary.text = @"Marlins Park is a baseball park located in Miami, Florida. It is the current home of the Miami Marlins, the city's Major League Baseball franchise.";
    }
    else if([self.detailedLm.name  isEqual: @"Freedom Tower"])
    {
        self.yearBuilt.text = @"1925";
        self.address.text = @"600 Biscayne Blvd, Miami, FL 33132";
        self.detailedSummary.text = @" It is currently used as a contemporary art museum and a central office to different disciplines in the arts associated with Miami Dade College.";
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

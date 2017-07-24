//
//  landmarkTableViewController.m
//  sc00-Landmarks
//
//  Created by shfrc101b8 on 2016-11-04.
//  Copyright © 2016 shfrc101b8. All rights reserved.
//

#import "landmarkTableViewController.h"
#import "landmarks.h"
#import "landmarkTableViewCell.h"
#import "detailedLandmarkViewController.h"
@interface landmarkTableViewController ()
@property (nonatomic, strong) NSMutableArray *landmarkData;@end

@implementation landmarkTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    landmarks *villa = [[landmarks alloc]init];
    villa.img = @"villa_vizcaya.jpg";
    villa.name = @"Villa Vizcaya";
    villa.location = @"3251 South Miami Avenue";
    
    landmarks *fairchild = [[landmarks alloc]init];
    fairchild.img = @"fairchild.jpg";
    fairchild.name = @"Fairchild Tropical Gardens";
    fairchild.location = @"Coral Gables";
    
    landmarks *bayfront = [[landmarks alloc]init];
    bayfront.img = @"bayfront.jpg";
    bayfront.name = @"Bayfront Park";
    bayfront.location = @"Downtown Miami";
    
    landmarks *venetian = [[landmarks alloc]init];
    venetian.img = @"Venetianpool.jpg";
    venetian.name = @"Venetian Pool";
    venetian.location = @"Coral Gables";
    
    landmarks *marlins = [[landmarks alloc]init];
    marlins.img = @"marlins.jpg";
    marlins.name = @"Marlins Park";
    marlins.location = @"501 Marlins Way";
    
    landmarks *freedom = [[landmarks alloc]init];
    freedom.img = @"freedom.jpg";
    freedom.name = @"Freedom Tower";
    freedom.location = @"Downtown Miami";
    
    self.landmarkData = [NSMutableArray arrayWithObjects:villa,fairchild,bayfront,venetian,marlins,freedom, nil];
    // Uncomment the follnueowing line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [self.landmarkData count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *reuseIdentifier = @"landmarkCell";
    landmarkTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    [cell.landmarkName setFont:[UIFont boldSystemFontOfSize:10]];
    [cell.landmarkLocation setFont:[UIFont systemFontOfSize:6]];    // Configure the cell...
   /* if (cell == nil){
        cell = [[landmarkTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier];
        
    }*/

    landmarks *celldata = [self.landmarkData objectAtIndex:indexPath.row];

    cell.landmarkIMG.image = [UIImage imageNamed:celldata.img];
    cell.landmarkName.text = celldata.name;
    cell.landmarkLocation.text = celldata.location;
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using
    detailedLandmarkViewController * destViewController = [segue destinationViewController];
    
    // get the selection
    NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
    
    landmarks* aLandmark = [self.landmarkData objectAtIndex:myIndexPath.row];
    
    // Pass the selected object to the new view controller.
    destViewController.detailedLm = aLandmark;
    
}


@end

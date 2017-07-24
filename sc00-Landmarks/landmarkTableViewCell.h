//
//  landmarkTableViewCell.h
//  sc00-Landmarks
//
//  Created by shfrc101b8 on 2016-11-04.
//  Copyright © 2016 shfrc101b8. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface landmarkTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *landmarkIMG;
@property (strong, nonatomic) IBOutlet UILabel *landmarkName;
@property (strong, nonatomic) IBOutlet UILabel *landmarkLocation;

@end

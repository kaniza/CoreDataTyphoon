//
//  DetailViewController.h
//  CoreDataTyphoon
//
//  Created by Tetsuya Kaneuchi on 2013/06/02.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end

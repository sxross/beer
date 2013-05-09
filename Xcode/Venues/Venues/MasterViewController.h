//
//  MasterViewController.h
//  Venues
//
//  Created by Martin Stabenfeldt on 5/9/13.
//  Copyright (c) 2013 Martin Stabenfeldt. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface MasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end

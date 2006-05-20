#include <Foundation/Foundation.h>
#include <AppKit/AppKit.h>

@interface MyTableDataSource : NSObject
@end

@implementation MyTableDataSource
- (id) init
{
  self = [super init];
  if(self != nil)
    {
      NSLog(@"Outline data source initialized.");
    }
  return self;
}

- (int) numberOfRowsInTableView: (NSTableView *)tv
{
  return 100;
}

- (id) tableView: (NSTableView*)tv objectValueForTableColumn: (NSTableColumn *)tc row: (int)row
{
  return [NSString stringWithFormat: @"%d",row];
}
@end

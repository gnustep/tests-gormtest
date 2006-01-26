#include <Foundation/Foundation.h>
#include <AppKit/AppKit.h>

@interface MyTableDataSource : NSObject
@end

@implementation MyTableDataSource
- (int) numberOfRowsInTableView
{
  return 10;
}

- (id) tableView: (NSTableView*)tv objectValueForTableColumn: (NSTableColumn *)tc row: (int)row
{
  return [NSString stringWithFormat: @"%d",row];
}
@end

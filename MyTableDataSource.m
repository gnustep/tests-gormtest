#include <Foundation/Foundation.h>
#include <AppKit/AppKit.h>

@interface MyTableDataSource : NSObject
@end

@implementation MyTableDataSource
- (int) numberOfRowsInTableView: (NSTableView *)tv
{
  return 100;
}

- (id) tableView: (NSTableView*)tv objectValueForTableColumn: (NSTableColumn *)tc row: (int)row
{
  return [NSString stringWithFormat: @"%d",row];
}
@end

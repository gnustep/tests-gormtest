#include <Foundation/Foundation.h>
#include <AppKit/AppKit.h>

@interface MyBrowserDelegate : NSObject
@end

@implementation MyBrowserDelegate
- (id) init
{
  self = [super init];
  if(self != nil)
    {
      NSLog(@"browser delegate initialized.");
    }
  return self;
}

- (int) browser: (NSBrowser *)sender numberOfRowsInColumn: (int)column
{
  int result = 0;

  if(column == 0)
    result = 4;
  // else
  //  if(column == 1)
  //    result = 1;

  return result;
}

- (NSString *) browser: (NSBrowser *)sender titleOfColumn: (int)column
{
  return @"Test";
}

- (void) browser: (NSBrowser *)sender willDisplayCell: (id)cell 
	   atRow: (int)row column: (int)column
{
  NSString *value = [NSString stringWithFormat: @"%d,%d",row,column];
  [cell setStringValue: value];
}
@end

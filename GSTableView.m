#include "GSTableView.h"

@implementation GSTableView
- (id) initWithFrame: (NSRect)frame
{
  self = [super initWithFrame: frame];
  NSLog(@"Created custom class GSTableView");
  return self;
} 

- (id) initWithCoder: (NSCoder *)coder
{
  NSLog(@"Decoding custom class %@",NSStringFromClass([self class]));
  return [super initWithCoder: coder];
}
@end

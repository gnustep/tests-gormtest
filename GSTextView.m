#include "GSTextView.h"

@implementation GSTextView
- (id) initWithFrame: (NSRect)frame
{
  NSLog(@"Called designated init %@",self);
  return [super initWithFrame: frame];
}

- (id) initWithCoder: (NSCoder *)coder
{
  NSLog(@"Decoding custom class %@",NSStringFromClass([self class]));
  return [super initWithCoder: coder];
}
@end

#include "GSOutlineView.h"

@implementation GSOutlineView
- (id) initWithFrame: (NSRect)frame
{
  self = [super initWithFrame: frame];
  NSLog(@"Created custom class GSOutlineView");
  return self;
} 

- (id) initWithCoder: (NSCoder *)coder
{
  NSLog(@"Decoding custom class %@",[self class]);
  return [super initWithCoder: coder];
}
@end

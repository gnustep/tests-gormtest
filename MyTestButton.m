#include "MyTestButton.h"

@implementation MyTestButton
- (id) initWithCoder: (NSCoder *)coder
{
  self = [super initWithCoder: coder];
  if(self != nil)
    {
      NSLog(@"Created custom class %@",NSStringFromClass([self class]));
      [self setTitle: @"My Test"];
    }
  return self;
} 
@end

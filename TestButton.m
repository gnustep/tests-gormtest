#include "TestButton.h"

@implementation TestButton
- (id) initWithCoder: (NSCoder *)coder
{
  self = [super initWithCoder: coder];
  if(self != nil)
    {
      NSLog(@"Created custom class %@",NSStringFromClass([self class]));
      [self setTitle: @"Test"];
    }
  return self;
} 
@end

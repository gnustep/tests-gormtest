#include "GSScrollView.h"

@implementation GSScrollView
- (id) initWithFrame: (NSRect)frame
{
  // self = [super initWithFrame: frame];
  NSLog(@"Created custom class GSScrollView");
  NSLog(@"Here is the document view %@",[self documentView]);
  return self;
} 

- (id) initWithCoder: (NSCoder *)coder
{
  NSLog(@"Decoding custom class %@",NSStringFromClass([self class]));
  return [super initWithCoder: coder];
}
@end

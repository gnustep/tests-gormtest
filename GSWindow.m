#include "GSWindow.h"

@implementation GSWindow
- (id)initWithContentRect:(NSRect)contentRect
		styleMask:(unsigned int)styleMask
		  backing:(NSBackingStoreType)bufferingType
		    defer:(BOOL)flag
{
  // It was neccesary to override this method to get the borderless
  // window since it is not available from InterfaceBuilder.
  NSLog(@"GSWindow class has been instantiated... -- DESIGNATED INIT CALLED.");
  return self;
}

- (id) initWithCoder: (NSCoder *)coder
{
  NSLog(@"Decoding custom class %@",NSStringFromClass([self class]));
  return [super initWithCoder: coder];
}
@end

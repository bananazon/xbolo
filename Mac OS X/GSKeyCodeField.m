#import "GSKeyCodeField.h"

NSMutableDictionary *nameDictionary;

@implementation GSKeyCodeFieldCell

+ (void)initialize {
  if (self == [GSKeyCodeFieldCell class]) {
    nameDictionary = [[NSMutableDictionary alloc] init];
    [nameDictionary setObject:@"A" forKey:[NSString stringWithFormat:@"%d", 0]];
    [nameDictionary setObject:@"S" forKey:[NSString stringWithFormat:@"%d", 1]];
    [nameDictionary setObject:@"D" forKey:[NSString stringWithFormat:@"%d", 2]];
    [nameDictionary setObject:@"F" forKey:[NSString stringWithFormat:@"%d", 3]];
    [nameDictionary setObject:@"H" forKey:[NSString stringWithFormat:@"%d", 4]];
    [nameDictionary setObject:@"G" forKey:[NSString stringWithFormat:@"%d", 5]];
    [nameDictionary setObject:@"Z" forKey:[NSString stringWithFormat:@"%d", 6]];
    [nameDictionary setObject:@"X" forKey:[NSString stringWithFormat:@"%d", 7]];
    [nameDictionary setObject:@"C" forKey:[NSString stringWithFormat:@"%d", 8]];
    [nameDictionary setObject:@"V" forKey:[NSString stringWithFormat:@"%d", 9]];

    [nameDictionary setObject:@"B" forKey:[NSString stringWithFormat:@"%d", 11]];
    [nameDictionary setObject:@"Q" forKey:[NSString stringWithFormat:@"%d", 12]];
    [nameDictionary setObject:@"W" forKey:[NSString stringWithFormat:@"%d", 13]];
    [nameDictionary setObject:@"E" forKey:[NSString stringWithFormat:@"%d", 14]];
    [nameDictionary setObject:@"R" forKey:[NSString stringWithFormat:@"%d", 15]];
    [nameDictionary setObject:@"Y" forKey:[NSString stringWithFormat:@"%d", 16]];
    [nameDictionary setObject:@"T" forKey:[NSString stringWithFormat:@"%d", 17]];
    [nameDictionary setObject:@"1" forKey:[NSString stringWithFormat:@"%d", 18]];
    [nameDictionary setObject:@"2" forKey:[NSString stringWithFormat:@"%d", 19]];
    [nameDictionary setObject:@"3" forKey:[NSString stringWithFormat:@"%d", 20]];
    [nameDictionary setObject:@"4" forKey:[NSString stringWithFormat:@"%d", 21]];
    [nameDictionary setObject:@"6" forKey:[NSString stringWithFormat:@"%d", 22]];
    [nameDictionary setObject:@"5" forKey:[NSString stringWithFormat:@"%d", 23]];
    [nameDictionary setObject:@"=" forKey:[NSString stringWithFormat:@"%d", 24]];
    [nameDictionary setObject:@"9" forKey:[NSString stringWithFormat:@"%d", 25]];
    [nameDictionary setObject:@"7" forKey:[NSString stringWithFormat:@"%d", 26]];
    [nameDictionary setObject:@"-" forKey:[NSString stringWithFormat:@"%d", 27]];
    [nameDictionary setObject:@"8" forKey:[NSString stringWithFormat:@"%d", 28]];
    [nameDictionary setObject:@"0" forKey:[NSString stringWithFormat:@"%d", 29]];
    [nameDictionary setObject:@"]" forKey:[NSString stringWithFormat:@"%d", 30]];
    [nameDictionary setObject:@"O" forKey:[NSString stringWithFormat:@"%d", 31]];
    [nameDictionary setObject:@"U" forKey:[NSString stringWithFormat:@"%d", 32]];
    [nameDictionary setObject:@"[" forKey:[NSString stringWithFormat:@"%d", 33]];
    [nameDictionary setObject:@"I" forKey:[NSString stringWithFormat:@"%d", 34]];
    [nameDictionary setObject:@"P" forKey:[NSString stringWithFormat:@"%d", 35]];
    [nameDictionary setObject:@"Return" forKey:[NSString stringWithFormat:@"%d", 36]];
    [nameDictionary setObject:@"L" forKey:[NSString stringWithFormat:@"%d", 37]];
    [nameDictionary setObject:@"J" forKey:[NSString stringWithFormat:@"%d", 38]];
    [nameDictionary setObject:@"'" forKey:[NSString stringWithFormat:@"%d", 39]];
    [nameDictionary setObject:@"K" forKey:[NSString stringWithFormat:@"%d", 40]];
    [nameDictionary setObject:@";" forKey:[NSString stringWithFormat:@"%d", 41]];
    [nameDictionary setObject:@"\\" forKey:[NSString stringWithFormat:@"%d", 42]];
    [nameDictionary setObject:@"," forKey:[NSString stringWithFormat:@"%d", 43]];
    [nameDictionary setObject:@"/" forKey:[NSString stringWithFormat:@"%d", 44]];
    [nameDictionary setObject:@"N" forKey:[NSString stringWithFormat:@"%d", 45]];
    [nameDictionary setObject:@"M" forKey:[NSString stringWithFormat:@"%d", 46]];
    [nameDictionary setObject:@"." forKey:[NSString stringWithFormat:@"%d", 47]];
    [nameDictionary setObject:@"Tab" forKey:[NSString stringWithFormat:@"%d", 48]];
    [nameDictionary setObject:@"Spacebar" forKey:[NSString stringWithFormat:@"%d", 49]];
    [nameDictionary setObject:@"`" forKey:[NSString stringWithFormat:@"%d", 50]];
    [nameDictionary setObject:@"Delete" forKey:[NSString stringWithFormat:@"%d", 51]];
    [nameDictionary setObject:@"Enter" forKey:[NSString stringWithFormat:@"%d", 52]];
    [nameDictionary setObject:@"Escape" forKey:[NSString stringWithFormat:@"%d", 53]];

    [nameDictionary setObject:@"Command" forKey:[NSString stringWithFormat:@"%d", 55]];
    [nameDictionary setObject:@"Shift" forKey:[NSString stringWithFormat:@"%d", 56]];
    [nameDictionary setObject:@"Caps Lock" forKey:[NSString stringWithFormat:@"%d", 57]];
    [nameDictionary setObject:@"Option" forKey:[NSString stringWithFormat:@"%d", 58]];
    [nameDictionary setObject:@"Control" forKey:[NSString stringWithFormat:@"%d", 59]];
    [nameDictionary setObject:@"Fn Shift" forKey:[NSString stringWithFormat:@"%d", 60]];

    [nameDictionary setObject:@"Function" forKey:[NSString stringWithFormat:@"%d", 63]];

    [nameDictionary setObject:@"." forKey:[NSString stringWithFormat:@"%d", 65]];

    [nameDictionary setObject:@"*" forKey:[NSString stringWithFormat:@"%d", 67]];

    [nameDictionary setObject:@"+" forKey:[NSString stringWithFormat:@"%d", 69]];

    [nameDictionary setObject:@"Clear" forKey:[NSString stringWithFormat:@"%d", 71]];

    [nameDictionary setObject:@"/" forKey:[NSString stringWithFormat:@"%d", 75]];
    [nameDictionary setObject:@"Enter" forKey:[NSString stringWithFormat:@"%d", 76]];

    [nameDictionary setObject:@"-" forKey:[NSString stringWithFormat:@"%d", 78]];

    [nameDictionary setObject:@"=" forKey:[NSString stringWithFormat:@"%d", 81]];
    [nameDictionary setObject:@"0" forKey:[NSString stringWithFormat:@"%d", 82]];
    [nameDictionary setObject:@"1" forKey:[NSString stringWithFormat:@"%d", 83]];
    [nameDictionary setObject:@"2" forKey:[NSString stringWithFormat:@"%d", 84]];
    [nameDictionary setObject:@"3" forKey:[NSString stringWithFormat:@"%d", 85]];
    [nameDictionary setObject:@"4" forKey:[NSString stringWithFormat:@"%d", 86]];
    [nameDictionary setObject:@"5" forKey:[NSString stringWithFormat:@"%d", 87]];
    [nameDictionary setObject:@"6" forKey:[NSString stringWithFormat:@"%d", 88]];
    [nameDictionary setObject:@"7" forKey:[NSString stringWithFormat:@"%d", 89]];

    [nameDictionary setObject:@"8" forKey:[NSString stringWithFormat:@"%d", 91]];
    [nameDictionary setObject:@"9" forKey:[NSString stringWithFormat:@"%d", 92]];

    [nameDictionary setObject:@"F5" forKey:[NSString stringWithFormat:@"%d", 96]];
    [nameDictionary setObject:@"F6" forKey:[NSString stringWithFormat:@"%d", 97]];
    [nameDictionary setObject:@"F7" forKey:[NSString stringWithFormat:@"%d", 98]];
    [nameDictionary setObject:@"F3" forKey:[NSString stringWithFormat:@"%d", 99]];
    [nameDictionary setObject:@"F8" forKey:[NSString stringWithFormat:@"%d", 100]];
    [nameDictionary setObject:@"F9" forKey:[NSString stringWithFormat:@"%d", 101]];

    [nameDictionary setObject:@"F11" forKey:[NSString stringWithFormat:@"%d", 103]];

    [nameDictionary setObject:@"F10" forKey:[NSString stringWithFormat:@"%d", 109]];
    [nameDictionary setObject:@"Fn Enter" forKey:[NSString stringWithFormat:@"%d", 110]];
    [nameDictionary setObject:@"F12" forKey:[NSString stringWithFormat:@"%d", 111]];

    [nameDictionary setObject:@"Home" forKey:[NSString stringWithFormat:@"%d", 115]];
    [nameDictionary setObject:@"Page Up" forKey:[NSString stringWithFormat:@"%d", 116]];
    [nameDictionary setObject:@"Fn Delete" forKey:[NSString stringWithFormat:@"%d", 117]];
    [nameDictionary setObject:@"F4" forKey:[NSString stringWithFormat:@"%d", 118]];
    [nameDictionary setObject:@"End" forKey:[NSString stringWithFormat:@"%d", 119]];
    [nameDictionary setObject:@"F2" forKey:[NSString stringWithFormat:@"%d", 120]];
    [nameDictionary setObject:@"Page Down" forKey:[NSString stringWithFormat:@"%d", 121]];
    [nameDictionary setObject:@"F1" forKey:[NSString stringWithFormat:@"%d", 122]];
    [nameDictionary setObject:@"Left Arrow" forKey:[NSString stringWithFormat:@"%d", 123]];
    [nameDictionary setObject:@"Right Arrow" forKey:[NSString stringWithFormat:@"%d", 124]];
    [nameDictionary setObject:@"Down Arrow" forKey:[NSString stringWithFormat:@"%d", 125]];
    [nameDictionary setObject:@"Up Arrow" forKey:[NSString stringWithFormat:@"%d", 126]];
    [nameDictionary setObject:@"Num Lock" forKey:[NSString stringWithFormat:@"%d", 127]];
  }
}

// ---------------------------------------------------------
//  Initialization
// ---------------------------------------------------------

- (id)init {
  return [self initWithKeyCode:(unsigned short)-1];
}

- (id)initWithKeyCode:(unsigned short)aKeyCode {
  if ((self = [super init]) != nil) {
    keyCode = aKeyCode;
  }
  return self;
}

- (id)initWithCoder:(NSCoder *)decoder {
  self = [super initWithCoder:decoder];
  if ([decoder allowsKeyedCoding]) {
    keyCode = [decoder decodeIntForKey:@"GSKeyCode"];
  }
  else {
    [decoder decodeValueOfObjCType:@encode(unsigned short) at:&keyCode];
  }
  return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
  [super encodeWithCoder:coder];
  if ([coder allowsKeyedCoding]) {
    [coder encodeInt:keyCode forKey:@"GSKeyCode"];
  }
  else {
    [coder encodeValueOfObjCType:@encode(unsigned short) at:&keyCode];
  }
}

- (id)copyWithZone:(NSZone *)zone {
  return [[GSKeyCodeFieldCell allocWithZone:zone] initWithKeyCode:[self keyCode]];
}

- (void)sendActionToTarget {
  if ([self target] && [self action]) {
    [(NSControl *)[self controlView] sendAction:[self action] to:[self target]];
  }
}

// ---------------------------------------------------------
//  Setting and getting values
// ---------------------------------------------------------

- (void)setKeyCode:(unsigned short)aKeyCode {
  if (keyCode != aKeyCode) {
    keyCode = aKeyCode;
    [(NSControl *)[self controlView] updateCell:self];
    [self sendActionToTarget];
  }
}

- (unsigned short)keyCode {
  return keyCode;
}

- (void)setObjectValue:(id)object {
  if ([object isMemberOfClass:[NSString class]]) {
    [self setStringValue:object];
  }
  else {
    [NSException raise: NSInvalidArgumentException format: @"%@ Invalid object %@", NSStringFromSelector(_cmd), object];
  }
}

- (id)objectValue {
  return [self stringValue];
}

- (void)setStringValue:(NSString *)string {
  int aKeyCode;
  NSScanner *scanner;
  scanner = [NSScanner scannerWithString:string];
  if ([scanner scanInt:&aKeyCode] && [scanner isAtEnd]) {
    [self setKeyCode:aKeyCode];
  }
  else {
    [NSException raise: NSInvalidArgumentException format: @"%@ Invalid string %@", NSStringFromSelector(_cmd), string];
  }
}

- (NSString *)stringValue {
  return [NSString stringWithFormat:@"%d", keyCode];
}

// ---------------------------------------------------------
//  Target / action methods
// ---------------------------------------------------------

- (IBAction)takeKeyValueFrom:(id)sender {
  if ([sender isMemberOfClass:[GSKeyCodeFieldCell class]]) {
    [self setKeyCode:[sender keyCode]];
  }
  else {
    [self setStringValue:[sender stringValue]];
  }
}

// ---------------------------------------------------------
//  Drawing Routines
// ---------------------------------------------------------

- (void)drawWithFrame:(NSRect)cellFrame inView:(NSView *)controlView {
  NSString *string;
  NSRect insetRect;

  insetRect = NSInsetRect(cellFrame, 5.0, 3.0);

  if (keyCode == (unsigned short)-1) {
    string = [NSString string];
  }
  else {
    string = [nameDictionary objectForKey:[NSString stringWithFormat:@"%hu", keyCode]];
    if (string == nil) {
      string = [NSString stringWithFormat:@"%hu", keyCode];
    }
  }

  NSDrawWhiteBezel(cellFrame, cellFrame);

  if ([self showsFirstResponder]) {
    if ([string length] == 0) {
      [[NSColor selectedTextBackgroundColor] set];
      NSRectFill(insetRect);
    }
    else {
      NSDictionary *attributes;
      NSSize textSize;
      NSRect textRect, drawRect;
      attributes = [NSDictionary dictionaryWithObjectsAndKeys:[NSFont systemFontOfSize:[NSFont systemFontSizeForControlSize:[self controlSize]]], NSFontAttributeName, [NSColor selectedTextBackgroundColor], NSBackgroundColorAttributeName, [NSColor selectedTextColor], NSForegroundColorAttributeName, nil];
      textSize = [string sizeWithAttributes:attributes];
      textRect = NSMakeRect(NSMinX(insetRect), NSMaxY(insetRect) - textSize.height + 5.0, textSize.width, textSize.height);
      drawRect = NSIntersectionRect(NSUnionRect(insetRect, textRect), insetRect);
      [string drawInRect:drawRect withAttributes:attributes];
    }

    [NSGraphicsContext saveGraphicsState];
    NSSetFocusRingStyle(NSFocusRingOnly);
    [[NSBezierPath bezierPathWithRect:NSMakeRect(cellFrame.origin.x, cellFrame.origin.y, cellFrame.size.width, cellFrame.size.height)] fill];
    [NSGraphicsContext restoreGraphicsState];
  }
  else {
    NSDictionary *attributes;
    NSSize textSize;
    NSRect textRect, drawRect;
    attributes = [NSDictionary dictionaryWithObjectsAndKeys:[NSFont systemFontOfSize:[NSFont systemFontSizeForControlSize:[self controlSize]]], NSFontAttributeName, [NSColor textBackgroundColor], NSBackgroundColorAttributeName, [NSColor selectedTextColor], NSForegroundColorAttributeName, nil];
    textSize = [string sizeWithAttributes:attributes];
    textRect = NSMakeRect(NSMinX(insetRect), NSMaxY(insetRect) - textSize.height + 5.0, textSize.width, textSize.height);
    drawRect = NSIntersectionRect(NSUnionRect(insetRect, textRect), insetRect);
    [string drawInRect:drawRect withAttributes:attributes];
  }
}

// ---------------------------------------------------------
//  Mouse Tracking
// ---------------------------------------------------------

- (BOOL)trackMouse:(NSEvent *)theEvent inRect:(NSRect)cellFrame ofView:(NSView *)controlView untilMouseUp:(BOOL)flag {
	[(NSControl *)controlView updateCell:self];
  return YES;
}

// ---------------------------------------------------------
//  Context Menu
// ---------------------------------------------------------

- (NSMenu *)menuForEvent:(NSEvent *)theEvent inRect:(NSRect)cellFrame ofView:(NSView *)controlView {
  return nil;
}

// ---------------------------------------------------------
//  Keyboard Event Handling : Binding Methods
// ---------------------------------------------------------

- (void)performClick:(id)sender {
}

@end

@implementation GSKeyCodeField

+ (void)initialize {
  if (self == [GSKeyCodeField class]) {
    [self setCellClass:[GSKeyCodeFieldCell class]];
  }
}

+ (Class)cellClass {
  return [GSKeyCodeFieldCell class];
}

- (id)initWithFrame:(NSRect)frameRect {
  if ((self = [super initWithFrame:frameRect]) != nil) {
  }
  return self;
}

- (void)dealloc {
  [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)performClick:(id)sender {
  [[self cell] performClick:sender];
}

- (void)setKeyCode:(unsigned short)aKeyCode {
  [[self cell] setKeyCode:aKeyCode];
}

- (unsigned short)keyCode {
  return [[self cell] keyCode];
}

- (IBAction)takeKeyValueFrom:(id)sender {
  [[self cell] takeKeyValueFrom:sender];
}

// ---------------------------------------------------------
//  Focus ring maintenance
// ---------------------------------------------------------

- (BOOL)becomeFirstResponder {
  BOOL okToChange;
  if ((okToChange = [super becomeFirstResponder])) {
    [super setKeyboardFocusRingNeedsDisplayInRect:[self bounds]];
    modifiers = [NSEvent modifierFlags] & (NSEventModifierFlagCapsLock | NSEventModifierFlagShift | NSEventModifierFlagControl | NSEventModifierFlagOption | NSEventModifierFlagCommand | NSEventModifierFlagNumericPad | NSEventModifierFlagHelp | NSEventModifierFlagFunction);
  }
  return okToChange;
}

- (BOOL)resignFirstResponder {
  BOOL okToChange;
  okToChange = [super resignFirstResponder];
  if (okToChange) {
    [super setKeyboardFocusRingNeedsDisplayInRect:[self bounds]];
  }
  return okToChange;
}

- (void)windowKeyStateDidChange:(NSNotification *)notif {
  if ([[self window] firstResponder] == self) {
    [super setKeyboardFocusRingNeedsDisplayInRect:[self bounds]];
  }
}

- (void)viewDidMoveToWindow {
  NSNotificationCenter *notifCenter = [NSNotificationCenter defaultCenter];
  SEL callback = @selector(windowKeyStateDidChange:);

  // If we've been installed in a new window, unregister for notificaions in the old window...
  [notifCenter removeObserver:self];

  // ... then register for notifications in the new window.
  [notifCenter addObserver:self selector:callback name:NSWindowDidBecomeKeyNotification object:[self window]];
  [notifCenter addObserver:self selector:callback name:NSWindowDidResignKeyNotification object:[self window]];
}

- (BOOL)acceptsFirstResponder {
  return YES;
}

- (BOOL)needsPanelToBecomeKey {
  return YES;		// Clicking and tabbing to us will makes us key
}

- (void)keyDown:(NSEvent *)theEvent {
  if (![theEvent isARepeat]) {
    [[self cell] setKeyCode:[theEvent keyCode]];
    [[self window] selectNextKeyView:self];
  }
}

- (void)keyUp:(NSEvent *)theEvent {
  if (![theEvent isARepeat]) {
    // do nothing
  }
}

- (void)flagsChanged:(NSEvent *)theEvent {
  unsigned int oldModifiers;
  oldModifiers = modifiers;
    modifiers = [theEvent modifierFlags] & (NSEventModifierFlagCapsLock | NSEventModifierFlagShift | NSEventModifierFlagControl | NSEventModifierFlagOption | NSEventModifierFlagCommand | NSEventModifierFlagNumericPad | NSEventModifierFlagHelp | NSEventModifierFlagFunction);
  if (modifiers & (oldModifiers ^ modifiers)) {
    [[self cell] setKeyCode:[theEvent keyCode]];
    [[self window] selectNextKeyView:self];
  }
  else {
    // do nothing
  }
}

@end

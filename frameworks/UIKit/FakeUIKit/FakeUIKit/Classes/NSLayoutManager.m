
#import "NSLayoutManager.h"

@implementation NSLayoutManager

- (void)addTextContainer:(NSTextContainer *)container
{
    
}

- (void)insertTextContainer:(NSTextContainer *)container atIndex:(NSUInteger)index
{
    
}

- (void)removeTextContainerAtIndex:(NSUInteger)index
{
    
}

- (void)textContainerChangedGeometry:(NSTextContainer *)container
{
    
}

- (void)invalidateGlyphsForCharacterRange:(NSRange)charRange changeInLength:(NSInteger)delta actualCharacterRange:(NSRangePointer)actualCharRange
{
    
}

- (void)invalidateLayoutForCharacterRange:(NSRange)charRange actualCharacterRange:(NSRangePointer)actualCharRange
{
    
}

- (void)invalidateDisplayForCharacterRange:(NSRange)charRange
{
    
}

- (void)invalidateDisplayForGlyphRange:(NSRange)glyphRange
{
    
}

- (void)processEditingForTextStorage:(NSTextStorage *)textStorage edited:(NSTextStorageEditActions)editMask range:(NSRange)newCharRange changeInLength:(NSInteger)delta invalidatedRange:(NSRange)invalidatedCharRange
{
    
}

- (void)ensureGlyphsForCharacterRange:(NSRange)charRange
{
    
}

- (void)ensureGlyphsForGlyphRange:(NSRange)glyphRange
{
    
}

- (void)ensureLayoutForCharacterRange:(NSRange)charRange
{
    
}

- (void)ensureLayoutForGlyphRange:(NSRange)glyphRange
{
    
}

- (void)ensureLayoutForTextContainer:(NSTextContainer *)container
{
    
}

- (void)ensureLayoutForBoundingRect:(CGRect)bounds inTextContainer:(NSTextContainer *)container
{
    
}

- (void)setGlyphs:(const CGGlyph *)glyphs properties:(const NSGlyphProperty *)props characterIndexes:(const NSUInteger *)charIndexes font:(UIFont *)aFont forGlyphRange:(NSRange)glyphRange
{
    
}

- (CGGlyph)glyphAtIndex:(NSUInteger)glyphIndex isValidIndex:(BOOL *)isValidIndex
{
    return (CGGlyph){};
}

- (CGGlyph)glyphAtIndex:(NSUInteger)glyphIndex
{
    return (CGGlyph){};
}

- (BOOL)isValidGlyphIndex:(NSUInteger)glyphIndex
{
    return 0;
}

- (NSGlyphProperty)propertyForGlyphAtIndex:(NSUInteger)glyphIndex
{
    return 0;
}

- (NSUInteger)characterIndexForGlyphAtIndex:(NSUInteger)glyphIndex
{
    return (NSUInteger){};
}

- (NSUInteger)glyphIndexForCharacterAtIndex:(NSUInteger)charIndex
{
    return (NSUInteger){};
}

- (NSUInteger)getGlyphsInRange:(NSRange)glyphRange glyphs:(CGGlyph *)glyphBuffer properties:(NSGlyphProperty *)props characterIndexes:(NSUInteger *)charIndexBuffer bidiLevels:(unsigned char *)bidiLevelBuffer
{
    return (NSUInteger){};
}

- (void)setTextContainer:(NSTextContainer *)container forGlyphRange:(NSRange)glyphRange
{
    
}

- (void)setLineFragmentRect:(CGRect)fragmentRect forGlyphRange:(NSRange)glyphRange usedRect:(CGRect)usedRect
{
    
}

- (void)setExtraLineFragmentRect:(CGRect)fragmentRect usedRect:(CGRect)usedRect textContainer:(NSTextContainer *)container
{
    
}

- (void)setLocation:(CGPoint)location forStartOfGlyphRange:(NSRange)glyphRange
{
    
}

- (void)setNotShownAttribute:(BOOL)flag forGlyphAtIndex:(NSUInteger)glyphIndex
{
    
}

- (void)setDrawsOutsideLineFragment:(BOOL)flag forGlyphAtIndex:(NSUInteger)glyphIndex
{
    
}

- (void)setAttachmentSize:(CGSize)attachmentSize forGlyphRange:(NSRange)glyphRange
{
    
}

- (void)getFirstUnlaidCharacterIndex:(NSUInteger *)charIndex glyphIndex:(NSUInteger *)glyphIndex
{
    
}

- (NSUInteger)firstUnlaidCharacterIndex
{
    return (NSUInteger){};
}

- (NSUInteger)firstUnlaidGlyphIndex
{
    return (NSUInteger){};
}

- (NSTextContainer *)textContainerForGlyphAtIndex:(NSUInteger)glyphIndex effectiveRange:(NSRangePointer)effectiveGlyphRange
{
    return nil;
}

- (CGRect)usedRectForTextContainer:(NSTextContainer *)container
{
    return (CGRect){};
}

- (CGRect)lineFragmentRectForGlyphAtIndex:(NSUInteger)glyphIndex effectiveRange:(NSRangePointer)effectiveGlyphRange
{
    return (CGRect){};
}

- (CGRect)lineFragmentUsedRectForGlyphAtIndex:(NSUInteger)glyphIndex effectiveRange:(NSRangePointer)effectiveGlyphRange
{
    return (CGRect){};
}

- (CGPoint)locationForGlyphAtIndex:(NSUInteger)glyphIndex
{
    return (CGPoint){};
}

- (BOOL)notShownAttributeForGlyphAtIndex:(NSUInteger)glyphIndex
{
    return 0;
}

- (BOOL)drawsOutsideLineFragmentForGlyphAtIndex:(NSUInteger)glyphIndex
{
    return 0;
}

- (CGSize)attachmentSizeForGlyphAtIndex:(NSUInteger)glyphIndex
{
    return (CGSize){};
}

- (NSRange)truncatedGlyphRangeInLineFragmentForGlyphAtIndex:(NSUInteger)glyphIndex
{
    return (NSRange){};
}

- (NSRange)glyphRangeForCharacterRange:(NSRange)charRange actualCharacterRange:(NSRangePointer)actualCharRange
{
    return (NSRange){};
}

- (NSRange)characterRangeForGlyphRange:(NSRange)glyphRange actualGlyphRange:(NSRangePointer)actualGlyphRange
{
    return (NSRange){};
}

- (NSRange)glyphRangeForTextContainer:(NSTextContainer *)container
{
    return (NSRange){};
}

- (NSRange)rangeOfNominallySpacedGlyphsContainingIndex:(NSUInteger)glyphIndex
{
    return (NSRange){};
}

- (CGRect)boundingRectForGlyphRange:(NSRange)glyphRange inTextContainer:(NSTextContainer *)container
{
    return (CGRect){};
}

- (NSRange)glyphRangeForBoundingRect:(CGRect)bounds inTextContainer:(NSTextContainer *)container
{
    return (NSRange){};
}

- (NSRange)glyphRangeForBoundingRectWithoutAdditionalLayout:(CGRect)bounds inTextContainer:(NSTextContainer *)container
{
    return (NSRange){};
}

- (NSUInteger)glyphIndexForPoint:(CGPoint)point inTextContainer:(NSTextContainer *)container fractionOfDistanceThroughGlyph:(CGFloat *)partialFraction
{
    return (NSUInteger){};
}

- (NSUInteger)glyphIndexForPoint:(CGPoint)point inTextContainer:(NSTextContainer *)container
{
    return (NSUInteger){};
}

- (CGFloat)fractionOfDistanceThroughGlyphForPoint:(CGPoint)point inTextContainer:(NSTextContainer *)container
{
    return (CGFloat){};
}

- (NSUInteger)characterIndexForPoint:(CGPoint)point inTextContainer:(NSTextContainer *)container fractionOfDistanceBetweenInsertionPoints:(CGFloat *)partialFraction
{
    return (NSUInteger){};
}

- (NSUInteger)getLineFragmentInsertionPointsForCharacterAtIndex:(NSUInteger)charIndex alternatePositions:(BOOL)aFlag inDisplayOrder:(BOOL)dFlag positions:(CGFloat *)positions characterIndexes:(NSUInteger *)charIndexes
{
    return (NSUInteger){};
}

- (void)enumerateLineFragmentsForGlyphRange:(NSRange)glyphRange usingBlock:(void (^)(CGRect rect, CGRect usedRect, NSTextContainer *textContainer, NSRange glyphRange, BOOL *stop))block
{
    
}

- (void)enumerateEnclosingRectsForGlyphRange:(NSRange)glyphRange withinSelectedGlyphRange:(NSRange)selectedRange inTextContainer:(NSTextContainer *)textContainer usingBlock:(void (^)(CGRect rect, BOOL *stop))block
{
    
}

- (void)drawBackgroundForGlyphRange:(NSRange)glyphsToShow atPoint:(CGPoint)origin
{
    
}

- (void)drawGlyphsForGlyphRange:(NSRange)glyphsToShow atPoint:(CGPoint)origin
{
    
}

- (void)showCGGlyphs:(const CGGlyph *)glyphs positions:(const CGPoint *)positions count:(NSUInteger)glyphCount font:(UIFont *)font matrix:(CGAffineTransform)textMatrix attributes:(NSDictionary *)attributes inContext:(CGContextRef)graphicsContext
{
    
}

- (void)fillBackgroundRectArray:(const CGRect *)rectArray count:(NSUInteger)rectCount forCharacterRange:(NSRange)charRange color:(UIColor *)color
{
    
}

- (void)drawUnderlineForGlyphRange:(NSRange)glyphRange underlineType:(NSUnderlineStyle)underlineVal baselineOffset:(CGFloat)baselineOffset lineFragmentRect:(CGRect)lineRect lineFragmentGlyphRange:(NSRange)lineGlyphRange containerOrigin:(CGPoint)containerOrigin
{
    
}

- (void)underlineGlyphRange:(NSRange)glyphRange underlineType:(NSUnderlineStyle)underlineVal lineFragmentRect:(CGRect)lineRect lineFragmentGlyphRange:(NSRange)lineGlyphRange containerOrigin:(CGPoint)containerOrigin
{
    
}

- (void)drawStrikethroughForGlyphRange:(NSRange)glyphRange strikethroughType:(NSUnderlineStyle)strikethroughVal baselineOffset:(CGFloat)baselineOffset lineFragmentRect:(CGRect)lineRect lineFragmentGlyphRange:(NSRange)lineGlyphRange containerOrigin:(CGPoint)containerOrigin
{
    
}

- (void)strikethroughGlyphRange:(NSRange)glyphRange strikethroughType:(NSUnderlineStyle)strikethroughVal lineFragmentRect:(CGRect)lineRect lineFragmentGlyphRange:(NSRange)lineGlyphRange containerOrigin:(CGPoint)containerOrigin
{
    
}

@end

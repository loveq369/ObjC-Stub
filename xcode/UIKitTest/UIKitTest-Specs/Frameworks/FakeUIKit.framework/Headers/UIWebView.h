//
//  UIWebView.h
//  UIKit
//
//  Copyright (c) 2007-2014 Apple Inc. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <FakeUIKit/UIView.h>
#import <FakeUIKit/UIKitDefines.h>
#import <FakeUIKit/UIDataDetectors.h>
#import <FakeUIKit/UIScrollView.h>

typedef NS_ENUM(NSInteger, UIWebViewNavigationType) {
    UIWebViewNavigationTypeLinkClicked,
    UIWebViewNavigationTypeFormSubmitted,
    UIWebViewNavigationTypeBackForward,
    UIWebViewNavigationTypeReload,
    UIWebViewNavigationTypeFormResubmitted,
    UIWebViewNavigationTypeOther
};

typedef NS_ENUM(NSInteger, UIWebPaginationMode) {
    UIWebPaginationModeUnpaginated,
    UIWebPaginationModeLeftToRight,
    UIWebPaginationModeTopToBottom,
    UIWebPaginationModeBottomToTop,
    UIWebPaginationModeRightToLeft
};

typedef NS_ENUM(NSInteger, UIWebPaginationBreakingMode) {
    UIWebPaginationBreakingModePage,
    UIWebPaginationBreakingModeColumn
};

@class UIWebViewInternal;
@protocol UIWebViewDelegate;

NS_CLASS_AVAILABLE_IOS(2_0) @interface UIWebView : UIView <NSCoding, UIScrollViewDelegate> { 
 @private
    UIWebViewInternal *_internal;
}

@property (nonatomic, assign) id <UIWebViewDelegate> delegate;

@property (nonatomic, readonly, retain) UIScrollView *scrollView NS_AVAILABLE_IOS(5_0);

- (void)loadRequest:(NSURLRequest *)request;
- (void)loadHTMLString:(NSString *)string baseURL:(NSURL *)baseURL;
- (void)loadData:(NSData *)data MIMEType:(NSString *)MIMEType textEncodingName:(NSString *)textEncodingName baseURL:(NSURL *)baseURL;

@property (nonatomic, readonly, retain) NSURLRequest *request;

- (void)reload;
- (void)stopLoading;

- (void)goBack;
- (void)goForward;

@property (nonatomic, readonly, getter=canGoBack) BOOL canGoBack;
@property (nonatomic, readonly, getter=canGoForward) BOOL canGoForward;
@property (nonatomic, readonly, getter=isLoading) BOOL loading;

- (NSString *)stringByEvaluatingJavaScriptFromString:(NSString *)script;

@property (nonatomic) BOOL scalesPageToFit;

@property (nonatomic) BOOL detectsPhoneNumbers NS_DEPRECATED_IOS(2_0, 3_0);
@property (nonatomic) UIDataDetectorTypes dataDetectorTypes NS_AVAILABLE_IOS(3_0);

@property (nonatomic) BOOL allowsInlineMediaPlayback NS_AVAILABLE_IOS(4_0); // iPhone Safari defaults to NO. iPad Safari defaults to YES
@property (nonatomic) BOOL mediaPlaybackRequiresUserAction NS_AVAILABLE_IOS(4_0); // iPhone and iPad Safari both default to YES

@property (nonatomic) BOOL mediaPlaybackAllowsAirPlay NS_AVAILABLE_IOS(5_0); // iPhone and iPad Safari both default to YES

@property (nonatomic) BOOL suppressesIncrementalRendering NS_AVAILABLE_IOS(6_0); // iPhone and iPad Safari both default to NO

@property (nonatomic) BOOL keyboardDisplayRequiresUserAction NS_AVAILABLE_IOS(6_0); // default is YES

@property (nonatomic) UIWebPaginationMode paginationMode NS_AVAILABLE_IOS(7_0);
@property (nonatomic) UIWebPaginationBreakingMode paginationBreakingMode NS_AVAILABLE_IOS(7_0);
@property (nonatomic) CGFloat pageLength NS_AVAILABLE_IOS(7_0);
@property (nonatomic) CGFloat gapBetweenPages NS_AVAILABLE_IOS(7_0);
@property (nonatomic, readonly) NSUInteger pageCount NS_AVAILABLE_IOS(7_0);

@end

@protocol UIWebViewDelegate <NSObject>

@optional
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType;
- (void)webViewDidStartLoad:(UIWebView *)webView;
- (void)webViewDidFinishLoad:(UIWebView *)webView;
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error;

@end

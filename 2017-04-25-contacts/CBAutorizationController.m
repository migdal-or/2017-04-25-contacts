//
//  CBAutorizationController.m
//  2017-04-25-contacts
//
//  Created by iOS-School-1 on 27.04.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

#import <WebKit/WebKit.h>
#import "CBAutorizationController.h"
#import "CBAuthToken.h"

static NSString *const CBAuthURL = @"https://oauth.vk.com/authorize?client_id=5932466&display=page&redirect_uri=https://oauth.vk.com/blank.html&scope=friends&response_type=token&v=5.63&state=123456";

@interface CBAutorizationController () <WKNavigationDelegate>
@property (nonatomic,strong) WKWebView *webView;
@end

@implementation CBAutorizationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if(!self.webView)
    {
        self.webView = [[WKWebView alloc]initWithFrame: self.view.bounds];
        self.webView.navigationDelegate=self;
        [self.view addSubview:self.webView];
        [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    }
    
    NSURLRequest *nsurlRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:CBAuthURL]];
    [self.webView loadRequest:nsurlRequest];
}

- (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation {
     [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation {
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    
    if (![self.webView.URL.absoluteString isEqualToString:CBAuthURL]) {
        
        NSString *url = self.webView.URL.absoluteString;
        NSRegularExpression *tokenParseExpression = [NSRegularExpression regularExpressionWithPattern:@"access_token=(.*?)&"
                                                                                              options:NSRegularExpressionCaseInsensitive error:nil];
        
        NSArray *matches = [tokenParseExpression matchesInString:url
                                                         options:0
                                                           range:NSMakeRange(0, url.length)];
        NSTextCheckingResult *result  = matches.firstObject;
        
        NSString *accessToken = nil;
        if (result) {
            accessToken = [url substringWithRange:[result rangeAtIndex:1]];
            [CBAuthToken saveAccessToken:accessToken];
            NSLog(@"Access token %@", accessToken);
            [self dismissViewControllerAnimated:YES completion:nil];
        }
    }
}

@end

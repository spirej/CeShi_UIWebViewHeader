//
//  ViewController.m
//  CeShi_UIWebViewHeader
//
//  Created by SPIREJ on 16/4/5.
//  Copyright © 2016年 SPIREJ. All rights reserved.
//

#import "ViewController.h"
#import "WebViewHeader.h"

@interface ViewController ()<UIScrollViewDelegate>
@property(nonatomic, strong)UIWebView *webView;
@property(nonatomic, strong)WebViewHeader *headerView;
@end

@implementation ViewController

- (UIWebView *)webView{
    if (!_webView) {
        _webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
        _webView.backgroundColor = [UIColor whiteColor];
        _webView.scrollView.contentInset = UIEdgeInsetsMake(300, 0, 0, 0);
        _webView.scrollView.contentOffset = CGPointMake(0, -300);
        _webView.scrollView.backgroundColor = [UIColor lightGrayColor];
        _webView.scrollView.delegate = self;
        _webView.opaque = NO;
        [self.view addSubview:_webView];
    }
    return _webView;
}

- (WebViewHeader *)headerView{
    if (!_headerView) {
        _headerView = [[WebViewHeader alloc] init];
        [_webView.scrollView addSubview:_headerView];
    }
    return _headerView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor cyanColor];
    self.navigationItem.title = @"首页";
    [self webView];
    [self headerView];
    [self loadWebViewRequest];
}

- (void)loadWebViewRequest{
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:@"https://www.baidu.com"]];
    [self.webView loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end

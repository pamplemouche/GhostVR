.class public Lcom/facebook/react/views/webview/ReactWebViewManager;
.super Lcom/facebook/react/uimanager/SimpleViewManager;
.source "ReactWebViewManager.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RCTWebView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/webview/ReactWebViewManager$CustomClientCertRequestHandler;,
        Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;,
        Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebViewClient;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/SimpleViewManager",
        "<",
        "Landroid/webkit/WebView;",
        ">;"
    }
.end annotation


# static fields
.field private static customClientCertRequestHandler:Lcom/facebook/react/views/webview/ReactWebViewManager$CustomClientCertRequestHandler;


# instance fields
.field private mFBSessionCookies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mLogger:Lcom/facebook/analytics/structuredlogger/base/Logger;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected mPictureListener:Landroid/webkit/WebView$PictureListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected mWebViewConfig:Lcom/facebook/react/views/webview/WebViewConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/react/views/webview/ReactWebViewManager;->customClientCertRequestHandler:Lcom/facebook/react/views/webview/ReactWebViewManager$CustomClientCertRequestHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 454
    invoke-direct {p0, v0, v0, v0}, Lcom/facebook/react/views/webview/ReactWebViewManager;-><init>(Lcom/facebook/react/views/webview/WebViewConfig;Lcom/facebook/analytics/structuredlogger/base/Logger;Ljava/util/List;)V

    .line 455
    return-void
.end method

.method public constructor <init>(Lcom/facebook/analytics/structuredlogger/base/Logger;Ljava/util/List;)V
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/analytics/structuredlogger/base/Logger;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 462
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/react/views/webview/ReactWebViewManager;-><init>(Lcom/facebook/react/views/webview/WebViewConfig;Lcom/facebook/analytics/structuredlogger/base/Logger;Ljava/util/List;)V

    .line 463
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/views/webview/WebViewConfig;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 458
    invoke-direct {p0, p1, v0, v0}, Lcom/facebook/react/views/webview/ReactWebViewManager;-><init>(Lcom/facebook/react/views/webview/WebViewConfig;Lcom/facebook/analytics/structuredlogger/base/Logger;Ljava/util/List;)V

    .line 459
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/views/webview/WebViewConfig;Lcom/facebook/analytics/structuredlogger/base/Logger;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/facebook/react/views/webview/WebViewConfig;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/analytics/structuredlogger/base/Logger;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/views/webview/WebViewConfig;",
            "Lcom/facebook/analytics/structuredlogger/base/Logger;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 468
    invoke-direct {p0}, Lcom/facebook/react/uimanager/SimpleViewManager;-><init>()V

    .line 469
    if-nez p1, :cond_0

    .line 470
    new-instance v0, Lcom/facebook/react/views/webview/ReactWebViewManager$1;

    invoke-direct {v0, p0}, Lcom/facebook/react/views/webview/ReactWebViewManager$1;-><init>(Lcom/facebook/react/views/webview/ReactWebViewManager;)V

    iput-object v0, p0, Lcom/facebook/react/views/webview/ReactWebViewManager;->mWebViewConfig:Lcom/facebook/react/views/webview/WebViewConfig;

    .line 478
    :goto_0
    iput-object p2, p0, Lcom/facebook/react/views/webview/ReactWebViewManager;->mLogger:Lcom/facebook/analytics/structuredlogger/base/Logger;

    .line 479
    iput-object p3, p0, Lcom/facebook/react/views/webview/ReactWebViewManager;->mFBSessionCookies:Ljava/util/List;

    .line 480
    return-void

    .line 476
    :cond_0
    iput-object p1, p0, Lcom/facebook/react/views/webview/ReactWebViewManager;->mWebViewConfig:Lcom/facebook/react/views/webview/WebViewConfig;

    goto :goto_0
.end method

.method static synthetic access$000()Lcom/facebook/react/views/webview/ReactWebViewManager$CustomClientCertRequestHandler;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/facebook/react/views/webview/ReactWebViewManager;->customClientCertRequestHandler:Lcom/facebook/react/views/webview/ReactWebViewManager$CustomClientCertRequestHandler;

    return-object v0
.end method

.method protected static dispatchEvent(Landroid/webkit/WebView;Lcom/facebook/react/uimanager/events/Event;)V
    .locals 2

    .prologue
    .line 869
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    .line 870
    const-class v1, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 871
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIManagerModule;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    .line 872
    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 873
    return-void
.end method

.method private setSessionCookiesForFacebookURL(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 668
    if-nez p1, :cond_1

    .line 682
    :cond_0
    return-void

    .line 672
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 673
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ghostvr.pamplemouche.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".ghostvr.pamplemouche.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    :cond_2
    iget-object v0, p0, Lcom/facebook/react/views/webview/ReactWebViewManager;->mFBSessionCookies:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/facebook/react/views/webview/ReactWebViewManager;->mFBSessionCookies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 679
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 86
    check-cast p2, Landroid/webkit/WebView;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/webview/ReactWebViewManager;->addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/webkit/WebView;)V

    return-void
.end method

.method protected addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/webkit/WebView;)V
    .locals 2

    .prologue
    .line 740
    new-instance v0, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebViewClient;

    iget-object v1, p0, Lcom/facebook/react/views/webview/ReactWebViewManager;->mLogger:Lcom/facebook/analytics/structuredlogger/base/Logger;

    invoke-direct {v0, v1}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebViewClient;-><init>(Lcom/facebook/analytics/structuredlogger/base/Logger;)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 741
    return-void
.end method

.method protected createReactWebViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;
    .locals 1

    .prologue
    .line 488
    new-instance v0, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;

    invoke-direct {v0, p1}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;-><init>(Lcom/facebook/react/uimanager/ThemedReactContext;)V

    return-object v0
.end method

.method protected bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/webview/ReactWebViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/webkit/WebView;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 494
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/webview/ReactWebViewManager;->createReactWebViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;

    move-result-object v0

    .line 495
    new-instance v1, Lcom/facebook/react/views/webview/ReactWebViewManager$2;

    invoke-direct {v1, p0}, Lcom/facebook/react/views/webview/ReactWebViewManager$2;-><init>(Lcom/facebook/react/views/webview/ReactWebViewManager;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 512
    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 513
    iget-object v1, p0, Lcom/facebook/react/views/webview/ReactWebViewManager;->mWebViewConfig:Lcom/facebook/react/views/webview/WebViewConfig;

    invoke-interface {v1, v0}, Lcom/facebook/react/views/webview/WebViewConfig;->configWebView(Landroid/webkit/WebView;)V

    .line 514
    invoke-virtual {v0}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 515
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 516
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 517
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 519
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 520
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 521
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 522
    invoke-virtual {p0, v0, v2}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setAllowUniversalAccessFromFileURLs(Landroid/webkit/WebView;Z)V

    .line 523
    const-string v1, "never"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setMixedContentMode(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 526
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 528
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setGeolocationEnabled(Landroid/webkit/WebView;Ljava/lang/Boolean;)V

    .line 529
    sget-boolean v1, Lcom/facebook/react/common/build/ReactBuildConfig;->DEBUG:Z

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 530
    invoke-static {v3}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 532
    :cond_0
    return-object v0
.end method

.method public getCommandsMap()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 745
    const-string v0, "goBack"

    const/4 v1, 0x1

    .line 746
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "goForward"

    const/4 v3, 0x2

    .line 747
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "reload"

    const/4 v5, 0x3

    .line 748
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "stopLoading"

    const/4 v7, 0x4

    .line 749
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "postMessage"

    const/4 v9, 0x5

    .line 750
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "injectJavaScript"

    const/4 v11, 0x6

    .line 751
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 745
    invoke-static/range {v0 .. v11}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 484
    const-string v0, "RCTWebView"

    return-object v0
.end method

.method protected getPictureListener()Landroid/webkit/WebView$PictureListener;
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/facebook/react/views/webview/ReactWebViewManager;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    if-nez v0, :cond_0

    .line 854
    new-instance v0, Lcom/facebook/react/views/webview/ReactWebViewManager$3;

    invoke-direct {v0, p0}, Lcom/facebook/react/views/webview/ReactWebViewManager$3;-><init>(Lcom/facebook/react/views/webview/ReactWebViewManager;)V

    iput-object v0, p0, Lcom/facebook/react/views/webview/ReactWebViewManager;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/webview/ReactWebViewManager;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    return-object v0
.end method

.method public bridge synthetic onDropViewInstance(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 86
    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Lcom/facebook/react/views/webview/ReactWebViewManager;->onDropViewInstance(Landroid/webkit/WebView;)V

    return-void
.end method

.method public onDropViewInstance(Landroid/webkit/WebView;)V
    .locals 2

    .prologue
    .line 846
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/SimpleViewManager;->onDropViewInstance(Landroid/view/View;)V

    .line 847
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/ThemedReactContext;

    move-object v1, p1

    check-cast v1, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;

    .line 848
    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/ThemedReactContext;->removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 849
    check-cast p1, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;

    invoke-virtual {p1}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;->cleanupCallbacksAndDestroy()V

    .line 850
    return-void
.end method

.method public bridge synthetic receiveCommand(Landroid/view/View;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p3    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 86
    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/react/views/webview/ReactWebViewManager;->receiveCommand(Landroid/webkit/WebView;ILcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public bridge synthetic receiveCommand(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p3    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 86
    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/react/views/webview/ReactWebViewManager;->receiveCommand(Landroid/webkit/WebView;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public receiveCommand(Landroid/webkit/WebView;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 3
    .param p3    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 756
    packed-switch p2, :pswitch_data_0

    .line 797
    :goto_0
    return-void

    .line 758
    :pswitch_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 761
    :pswitch_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0

    .line 764
    :pswitch_2
    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    .line 767
    :pswitch_3
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    goto :goto_0

    .line 771
    :pswitch_4
    :try_start_0
    check-cast p1, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;

    .line 772
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 773
    const-string v1, "data"

    const/4 v2, 0x0

    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(function () {var event;var data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 778
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "try {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "event = new MessageEvent(\'message\', data);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} catch (e) {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "event = document.createEvent(\'MessageEvent\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "event.initMessageEvent(\'message\', true, true, data.data, data.origin, data.lastEventId, data.source);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "document.dispatchEvent(event);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "})();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 774
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;->evaluateJavascriptWithFallback(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 788
    :catch_0
    move-exception v0

    .line 789
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 793
    :pswitch_5
    check-cast p1, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;

    .line 794
    invoke-interface {p3, v0}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;->evaluateJavascriptWithFallback(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 756
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public receiveCommand(Landroid/webkit/WebView;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 3
    .param p3    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 801
    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 842
    :goto_1
    return-void

    .line 801
    :sswitch_0
    const-string v2, "goBack"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v2, "goForward"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "reload"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "stopLoading"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "postMessage"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "injectJavaScript"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 803
    :pswitch_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_1

    .line 806
    :pswitch_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->goForward()V

    goto :goto_1

    .line 809
    :pswitch_2
    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    goto :goto_1

    .line 812
    :pswitch_3
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    goto :goto_1

    .line 816
    :pswitch_4
    :try_start_0
    check-cast p1, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;

    .line 817
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 818
    const-string v1, "data"

    const/4 v2, 0x0

    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 819
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(function () {var event;var data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 823
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "try {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "event = new MessageEvent(\'message\', data);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} catch (e) {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "event = document.createEvent(\'MessageEvent\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "event.initMessageEvent(\'message\', true, true, data.data, data.origin, data.lastEventId, data.source);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "document.dispatchEvent(event);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "})();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 819
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;->evaluateJavascriptWithFallback(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 833
    :catch_0
    move-exception v0

    .line 834
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 838
    :pswitch_5
    check-cast p1, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;

    .line 839
    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;->evaluateJavascriptWithFallback(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 801
    :sswitch_data_0
    .sparse-switch
        -0x4a012e11 -> :sswitch_0
        -0x38833526 -> :sswitch_3
        -0x37b57e67 -> :sswitch_2
        -0x12f8b743 -> :sswitch_1
        0x58d00b47 -> :sswitch_4
        0x7d7149fe -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setAllowFileAccess(Landroid/webkit/WebView;Ljava/lang/Boolean;)V
    .locals 2
    .param p2    # Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "allowFileAccess"
    .end annotation

    .prologue
    .line 717
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 718
    return-void

    .line 717
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAllowUniversalAccessFromFileURLs(Landroid/webkit/WebView;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "allowUniversalAccessFromFileURLs"
    .end annotation

    .prologue
    .line 586
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 587
    return-void
.end method

.method public setDomStorageEnabled(Landroid/webkit/WebView;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "domStorageEnabled"
    .end annotation

    .prologue
    .line 567
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 568
    return-void
.end method

.method public setGeolocationEnabled(Landroid/webkit/WebView;Ljava/lang/Boolean;)V
    .locals 2
    .param p2    # Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "geolocationEnabled"
    .end annotation

    .prologue
    .line 722
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 723
    return-void

    .line 722
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInjectedJavaScript(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "injectedJavaScript"
    .end annotation

    .prologue
    .line 596
    check-cast p1, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;

    invoke-virtual {p1, p2}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;->setInjectedJavaScript(Ljava/lang/String;)V

    .line 597
    return-void
.end method

.method public setJavaScriptEnabled(Landroid/webkit/WebView;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "javaScriptEnabled"
    .end annotation

    .prologue
    .line 550
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 551
    return-void
.end method

.method public setMediaPlaybackRequiresUserAction(Landroid/webkit/WebView;Z)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "mediaPlaybackRequiresUserAction"
    .end annotation

    .prologue
    .line 581
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 582
    return-void
.end method

.method public setMessagingEnabled(Landroid/webkit/WebView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "messagingEnabled"
    .end annotation

    .prologue
    .line 601
    check-cast p1, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;

    invoke-virtual {p1, p2}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;->setMessagingEnabled(Z)V

    .line 602
    return-void
.end method

.method public setMixedContentMode(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "mixedContentMode"
    .end annotation

    .prologue
    .line 695
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 696
    if-eqz p2, :cond_0

    const-string v0, "never"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 697
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 704
    :cond_1
    :goto_0
    return-void

    .line 698
    :cond_2
    const-string v0, "always"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 699
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    goto :goto_0

    .line 700
    :cond_3
    const-string v0, "compatibility"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 701
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    goto :goto_0
.end method

.method public setOnContentSizeChange(Landroid/webkit/WebView;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onContentSizeChange"
    .end annotation

    .prologue
    .line 686
    if-eqz p2, :cond_0

    .line 687
    invoke-virtual {p0}, Lcom/facebook/react/views/webview/ReactWebViewManager;->getPictureListener()Landroid/webkit/WebView$PictureListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 691
    :goto_0
    return-void

    .line 689
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    goto :goto_0
.end method

.method public setOriginWhitelist(Landroid/webkit/WebView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 4
    .param p2    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "originWhitelist"
    .end annotation

    .prologue
    .line 727
    check-cast p1, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;

    invoke-virtual {p1}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;->getReactWebViewClient()Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebViewClient;

    move-result-object v1

    .line 728
    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 729
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 730
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 731
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 730
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 733
    :cond_0
    invoke-virtual {v1, v2}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebViewClient;->setOriginWhitelist(Ljava/util/List;)V

    .line 735
    :cond_1
    return-void
.end method

.method public setSaveFormDataDisabled(Landroid/webkit/WebView;Z)V
    .locals 2
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "saveFormDataDisabled"
    .end annotation

    .prologue
    .line 591
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 592
    return-void

    .line 591
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScalesPageToFit(Landroid/webkit/WebView;Z)V
    .locals 2
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "scalesPageToFit"
    .end annotation

    .prologue
    .line 562
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 563
    return-void

    .line 562
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSource(Landroid/webkit/WebView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 7
    .param p2    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "source"
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 606
    if-eqz p2, :cond_9

    .line 607
    const-string v0, "html"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 608
    const-string v0, "html"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 609
    const-string v0, "baseUrl"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 610
    const-string v0, "baseUrl"

    .line 611
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v0, p1

    .line 610
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    const-string v0, "text/html"

    const-string v1, "UTF-8"

    invoke-virtual {p1, v2, v0, v1}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 617
    :cond_2
    const-string v0, "uri"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 618
    const-string v0, "uri"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 620
    invoke-direct {p0, v1}, Lcom/facebook/react/views/webview/ReactWebViewManager;->setSessionCookiesForFacebookURL(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 623
    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 626
    :cond_3
    const-string v0, "method"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 627
    const-string v0, "method"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 628
    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 630
    const-string v0, "body"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 631
    const-string v0, "body"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 633
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 638
    :goto_1
    if-nez v0, :cond_4

    .line 639
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 641
    :cond_4
    invoke-virtual {p1, v1, v0}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    goto :goto_0

    .line 634
    :catch_0
    move-exception v2

    .line 635
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_1

    .line 645
    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 646
    const-string v2, "headers"

    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 647
    const-string v2, "headers"

    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    .line 648
    invoke-interface {v2}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v3

    .line 649
    :cond_6
    :goto_2
    invoke-interface {v3}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 650
    invoke-interface {v3}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v4

    .line 651
    const-string v5, "user-agent"

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 652
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 653
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-interface {v2, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_2

    .line 656
    :cond_7
    invoke-interface {v2, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 660
    :cond_8
    invoke-virtual {p1, v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 664
    :cond_9
    const-string v0, "about:blank"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    move-object v0, v5

    goto :goto_1
.end method

.method public setThirdPartyCookiesEnabled(Landroid/webkit/WebView;Z)V
    .locals 2
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "thirdPartyCookiesEnabled"
    .end annotation

    .prologue
    .line 555
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 556
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 558
    :cond_0
    return-void
.end method

.method public setUrlPrefixesForDefaultIntent(Landroid/webkit/WebView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .param p2    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "urlPrefixesForDefaultIntent"
    .end annotation

    .prologue
    .line 709
    check-cast p1, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;

    invoke-virtual {p1}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;->getReactWebViewClient()Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebViewClient;

    move-result-object v0

    .line 710
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 711
    invoke-virtual {v0, p2}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebViewClient;->setUrlPrefixesForDefaultIntent(Lcom/facebook/react/bridge/ReadableArray;)V

    .line 713
    :cond_0
    return-void
.end method

.method public setUserAgent(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "userAgent"
    .end annotation

    .prologue
    .line 572
    if-eqz p2, :cond_0

    .line 574
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 576
    :cond_0
    return-void
.end method

.method public sethardwareAccelerationEnabledExperimental(Landroid/webkit/WebView;Z)V
    .locals 2
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = true
        name = "hardwareAccelerationEnabledExperimental"
    .end annotation

    .prologue
    .line 543
    if-nez p2, :cond_0

    .line 544
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 546
    :cond_0
    return-void
.end method

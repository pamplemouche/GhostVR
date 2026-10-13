.class final Lcom/facebook/analytics/structuredlogger/events/ReactNativeWebviewLoadingUrlImpl;
.super Lcom/facebook/analytics/structuredlogger/base/TypedEventBase;
.source "ReactNativeWebviewLoadingUrlImpl.java"

# interfaces
.implements Lcom/facebook/analytics/structuredlogger/events/ReactNativeWebviewLoadingUrl;
.implements Lcom/facebook/analytics/structuredlogger/events/ReactNativeWebviewLoadingUrl$Loggable;
.implements Lcom/facebook/analytics/structuredlogger/events/ReactNativeWebviewLoadingUrl$Scheme;


# direct methods
.method private constructor <init>(Lcom/facebook/analytics/structuredlogger/base/TypedEvent;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/facebook/analytics/structuredlogger/base/TypedEventBase;-><init>(Lcom/facebook/analytics/structuredlogger/base/TypedEvent;)V

    .line 19
    return-void
.end method

.method static newInstance(Lcom/facebook/analytics/structuredlogger/base/Logger;)Lcom/facebook/analytics/structuredlogger/events/ReactNativeWebviewLoadingUrlImpl;
    .locals 2

    .prologue
    .line 22
    const-string v0, "react_native_webview_loading_url"

    invoke-interface {p0, v0}, Lcom/facebook/analytics/structuredlogger/base/Logger;->acquireEvent(Ljava/lang/String;)Lcom/facebook/analytics/structuredlogger/base/TypedEvent;

    move-result-object v0

    .line 23
    new-instance v1, Lcom/facebook/analytics/structuredlogger/events/ReactNativeWebviewLoadingUrlImpl;

    invoke-direct {v1, v0}, Lcom/facebook/analytics/structuredlogger/events/ReactNativeWebviewLoadingUrlImpl;-><init>(Lcom/facebook/analytics/structuredlogger/base/TypedEvent;)V

    return-object v1
.end method


# virtual methods
.method public isSampled()Z
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/facebook/analytics/structuredlogger/base/TypedEventBase;->isSampled()Z

    move-result v0

    return v0
.end method

.method public log()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Lcom/facebook/analytics/structuredlogger/base/TypedEventBase;->log()V

    .line 52
    return-void
.end method

.method public bridge synthetic setAuthority(Ljava/lang/String;)Lcom/facebook/analytics/structuredlogger/events/ReactNativeWebviewLoadingUrl$Scheme;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/facebook/analytics/structuredlogger/events/ReactNativeWebviewLoadingUrlImpl;->setAuthority(Ljava/lang/String;)Lcom/facebook/analytics/structuredlogger/events/ReactNativeWebviewLoadingUrlImpl;

    move-result-object v0

    return-object v0
.end method

.method public setAuthority(Ljava/lang/String;)Lcom/facebook/analytics/structuredlogger/events/ReactNativeWebviewLoadingUrlImpl;
    .locals 1

    .prologue
    .line 37
    const-string v0, "authority"

    invoke-virtual {p0, v0, p1}, Lcom/facebook/analytics/structuredlogger/events/ReactNativeWebviewLoadingUrlImpl;->addString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-object p0
.end method

.method public bridge synthetic setScheme(Ljava/lang/String;)Lcom/facebook/analytics/structuredlogger/events/ReactNativeWebviewLoadingUrl$Loggable;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/facebook/analytics/structuredlogger/events/ReactNativeWebviewLoadingUrlImpl;->setScheme(Ljava/lang/String;)Lcom/facebook/analytics/structuredlogger/events/ReactNativeWebviewLoadingUrlImpl;

    move-result-object v0

    return-object v0
.end method

.method public setScheme(Ljava/lang/String;)Lcom/facebook/analytics/structuredlogger/events/ReactNativeWebviewLoadingUrlImpl;
    .locals 1

    .prologue
    .line 43
    const-string v0, "scheme"

    invoke-virtual {p0, v0, p1}, Lcom/facebook/analytics/structuredlogger/events/ReactNativeWebviewLoadingUrlImpl;->addString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-object p0
.end method

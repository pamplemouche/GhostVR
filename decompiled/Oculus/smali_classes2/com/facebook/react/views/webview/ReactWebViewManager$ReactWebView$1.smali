.class Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView$1;
.super Ljava/lang/Object;
.source "ReactWebViewManager.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;->linkBridge()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;


# direct methods
.method constructor <init>(Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView$1;->this$0:Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 420
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/facebook/react/views/webview/ReactWebViewManager$ReactWebView$1;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 423
    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    const-string v0, "ReactNative"

    const-string v1, "Setting onMessage on a WebView overrides existing values of window.postMessage, but a previous value was defined"

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_0
    return-void
.end method

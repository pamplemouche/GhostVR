.class public Lcom/facebook/secure/webkit/WebView;
.super Landroid/webkit/WebView;
.source "WebView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BadSuperClassWebView.ProxyWebView",
        "DeprecatedSuperclass"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0}, Lcom/facebook/secure/webkit/WebView;->secureSettings()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0}, Lcom/facebook/secure/webkit/WebView;->secureSettings()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0}, Lcom/facebook/secure/webkit/WebView;->secureSettings()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 41
    invoke-direct {p0}, Lcom/facebook/secure/webkit/WebView;->secureSettings()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 48
    invoke-direct {p0}, Lcom/facebook/secure/webkit/WebView;->secureSettings()V

    .line 49
    return-void
.end method

.method private secureSettings()V
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/facebook/secure/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/facebook/secure/webkit/SecureWebViewSettingsHelper;->applySecureSettings(Landroid/webkit/WebSettings;)V

    .line 54
    return-void
.end method

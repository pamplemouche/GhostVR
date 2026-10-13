.class public Lcom/facebook/catalyst/modules/useragent/FbUserAgentModule;
.super Lcom/facebook/fbreact/specs/NativeFBUserAgentSpec;
.source "FbUserAgentModule.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "FBUserAgent"
.end annotation


# instance fields
.field private final mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/facebook/fbreact/specs/NativeFBUserAgentSpec;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 22
    iput-object p1, p0, Lcom/facebook/catalyst/modules/useragent/FbUserAgentModule;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 23
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "FBUserAgent"

    return-object v0
.end method

.method public getWebViewLikeUserAgent(Lcom/facebook/react/bridge/Callback;)V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/catalyst/modules/useragent/FbUserAgentModule;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {v2}, Lcom/facebook/catalyst/modules/useragent/FbUserAgentUtil;->generateWebViewLikeUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 33
    return-void
.end method

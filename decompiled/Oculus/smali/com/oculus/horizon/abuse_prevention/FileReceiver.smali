.class public Lcom/oculus/horizon/abuse_prevention/FileReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FileReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFileReceiverManager:Lcom/oculus/horizon/abuse_prevention/FileReceiverManager;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/abuse_prevention/FileReceiver;)V
    .locals 1

    .prologue
    .line 16
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/abuse_prevention/FileReceiver;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/abuse_prevention/FileReceiver;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/abuse_prevention/FileReceiver;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/abuse_prevention/FileReceiver;)V
    .locals 1

    .prologue
    .line 16
    invoke-static {p0}, Lcom/oculus/horizon/abuse_prevention/FileReceiverManager;->$ul_$xXXcom_oculus_horizon_abuse$x5Fprevention_FileReceiverManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/abuse_prevention/FileReceiverManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/abuse_prevention/FileReceiver;->mFileReceiverManager:Lcom/oculus/horizon/abuse_prevention/FileReceiverManager;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/oculus/horizon/abuse_prevention/FileReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/abuse_prevention/FileReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 16
    invoke-static {p1, p0}, Lcom/oculus/horizon/abuse_prevention/FileReceiver;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/abuse_prevention/FileReceiver;)V

    .line 26
    iget-object v0, p0, Lcom/oculus/horizon/abuse_prevention/FileReceiver;->mFileReceiverManager:Lcom/oculus/horizon/abuse_prevention/FileReceiverManager;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/horizon/abuse_prevention/FileReceiverManager;->onRequestEvidenceVideo(Landroid/content/Context;Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    sget-object v0, Lcom/oculus/horizon/abuse_prevention/FileReceiver;->TAG:Ljava/lang/String;

    const-string v1, "error in FileReceiverManager"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :goto_0
    return-void

    .line 32
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 33
    const-string v2, "URI"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, v1}, Lcom/oculus/horizon/abuse_prevention/FileReceiver;->setResultExtras(Landroid/os/Bundle;)V

    goto :goto_0
.end method

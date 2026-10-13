.class public Lcom/oculus/horizon/service/result/RegisterProcessTokenResultBuilder;
.super Lcom/oculus/horizon/service/result/ResultBuilder;
.source "RegisterProcessTokenResultBuilder.java"


# annotations
.annotation runtime Lcom/facebook/ultralight/Dependencies;
.end annotation


# instance fields
.field private final mProcessTokenTracker:Lcom/oculus/processtokentracker/ProcessTokenTracker;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/service/OVRService;)V
    .locals 1
    .param p2    # Lcom/oculus/horizon/service/OVRService;
        .annotation runtime Lcom/facebook/inject/Assisted;
        .end annotation
    .end param
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p2}, Lcom/oculus/horizon/service/result/ResultBuilder;-><init>(Lcom/oculus/horizon/service/OVRService;)V

    .line 24
    invoke-static {p1}, Lcom/oculus/processtokentracker/ProcessTokenTracker;->$ul_$xXXcom_oculus_processtokentracker_ProcessTokenTracker$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/processtokentracker/ProcessTokenTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service/result/RegisterProcessTokenResultBuilder;->mProcessTokenTracker:Lcom/oculus/processtokentracker/ProcessTokenTracker;

    .line 26
    return-void
.end method


# virtual methods
.method public getResult(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 30
    const-string v0, "token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Required argument not found: %s"

    const-string v2, "token"

    .line 32
    invoke-static {v1, v2}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    const-string v0, "token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/oculus/horizon/service/result/RegisterProcessTokenResultBuilder;->mProcessTokenTracker:Lcom/oculus/processtokentracker/ProcessTokenTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, p2, v2, v0}, Lcom/oculus/processtokentracker/ProcessTokenTracker;->register(Ljava/lang/String;ILandroid/os/IBinder;)V

    .line 40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

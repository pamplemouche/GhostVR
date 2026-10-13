.class public Lcom/oculus/horizon/accountlinking/dropbox/DropboxAPIHelperAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "DropboxAPIHelperAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/accountlinking/dropbox/DropboxAPIHelper;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/oculus/horizon/accountlinking/dropbox/DropboxAPIHelper;
    .locals 1

    .prologue
    .line 14
    const-string v0, "getMethod_com.oculus.horizon.accountlinking.dropbox.DropboxAPIHelper"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 16
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/accountlinking/dropbox/DropboxAPIHelper;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/accountlinking/dropbox/DropboxAPIHelper;-><init>(Lcom/facebook/inject/InjectorLike;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/oculus/horizon/accountlinking/dropbox/DropboxAPIHelperAutoProvider;->get()Lcom/oculus/horizon/accountlinking/dropbox/DropboxAPIHelper;

    move-result-object v0

    return-object v0
.end method

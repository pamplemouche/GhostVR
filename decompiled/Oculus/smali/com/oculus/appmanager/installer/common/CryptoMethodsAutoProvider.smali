.class public Lcom/oculus/appmanager/installer/common/CryptoMethodsAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "CryptoMethodsAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/appmanager/installer/common/CryptoMethods;",
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
.method public get()Lcom/oculus/appmanager/installer/common/CryptoMethods;
    .locals 1

    .prologue
    .line 14
    const-string v0, "getMethod_com.oculus.appmanager.installer.common.CryptoMethods"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 16
    :try_start_0
    new-instance v0, Lcom/oculus/appmanager/installer/common/CryptoMethods;

    invoke-direct {v0}, Lcom/oculus/appmanager/installer/common/CryptoMethods;-><init>()V
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
    invoke-virtual {p0}, Lcom/oculus/appmanager/installer/common/CryptoMethodsAutoProvider;->get()Lcom/oculus/appmanager/installer/common/CryptoMethods;

    move-result-object v0

    return-object v0
.end method

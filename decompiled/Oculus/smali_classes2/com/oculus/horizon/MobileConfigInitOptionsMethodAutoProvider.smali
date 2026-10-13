.class public Lcom/oculus/horizon/MobileConfigInitOptionsMethodAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "MobileConfigInitOptionsMethodAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/mobileconfig/init/MobileConfigInitOptions;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/oculus/mobileconfig/init/MobileConfigInitOptions;
    .locals 1

    .prologue
    .line 15
    const-string v0, "getMethod_com.oculus.mobileconfig.init.MobileConfigInitOptions"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 17
    :try_start_0
    invoke-static {}, Lcom/oculus/horizon/HorizonModule;->provideMobileConfigInitOptions()Lcom/oculus/mobileconfig/init/MobileConfigInitOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 20
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
    .line 12
    invoke-virtual {p0}, Lcom/oculus/horizon/MobileConfigInitOptionsMethodAutoProvider;->get()Lcom/oculus/mobileconfig/init/MobileConfigInitOptions;

    move-result-object v0

    return-object v0
.end method

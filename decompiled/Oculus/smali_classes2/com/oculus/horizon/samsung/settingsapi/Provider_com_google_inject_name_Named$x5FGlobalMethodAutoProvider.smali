.class public Lcom/oculus/horizon/samsung/settingsapi/Provider_com_google_inject_name_Named$x5FGlobalMethodAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "Provider_com_google_inject_name_Named$x5FGlobalMethodAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/samsung/settingsapi/SamsungSettings$Provider;",
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
.method public get()Lcom/oculus/horizon/samsung/settingsapi/SamsungSettings$Provider;
    .locals 1

    .prologue
    .line 15
    const-string v0, "getMethod_com.oculus.horizon.samsung.settingsapi.SamsungSettings.Provider"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 17
    :try_start_0
    invoke-static {}, Lcom/oculus/horizon/samsung/settingsapi/VRHelperModule;->provideGlobalProvider()Lcom/oculus/horizon/samsung/settingsapi/SamsungSettings$Provider;
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
    invoke-virtual {p0}, Lcom/oculus/horizon/samsung/settingsapi/Provider_com_google_inject_name_Named$x5FGlobalMethodAutoProvider;->get()Lcom/oculus/horizon/samsung/settingsapi/SamsungSettings$Provider;

    move-result-object v0

    return-object v0
.end method

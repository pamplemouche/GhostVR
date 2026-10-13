.class public Lcom/oculus/appmanager/installer/events/InstallerEventBusMethodAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "InstallerEventBusMethodAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/appmanager/installer/events/InstallerEventBus;",
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
.method public get()Lcom/oculus/appmanager/installer/events/InstallerEventBus;
    .locals 1

    .prologue
    .line 14
    const-string v0, "getMethod_com.oculus.appmanager.installer.events.InstallerEventBus"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 16
    :try_start_0
    invoke-static {}, Lcom/oculus/appmanager/installer/events/EventsModule;->providerInstallerEventBus()Lcom/oculus/appmanager/installer/events/InstallerEventBus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

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
    invoke-virtual {p0}, Lcom/oculus/appmanager/installer/events/InstallerEventBusMethodAutoProvider;->get()Lcom/oculus/appmanager/installer/events/InstallerEventBus;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/oculus/horizon/livestreaming/PartyCallManagerMethodAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "PartyCallManagerMethodAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/livestreaming/interfaces/PartyCallManager;",
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
.method public get()Lcom/oculus/horizon/livestreaming/interfaces/PartyCallManager;
    .locals 1

    .prologue
    .line 15
    const-string v0, "getMethod_com.oculus.horizon.livestreaming.interfaces.PartyCallManager"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 18
    :try_start_0
    invoke-static {p0}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->$ul_$xXXcom_oculus_horizon_livestreaming_PartyCallManagerImpl$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/LivestreamingModule;->providePartyCallManager(Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;)Lcom/oculus/horizon/livestreaming/interfaces/PartyCallManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 21
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
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/PartyCallManagerMethodAutoProvider;->get()Lcom/oculus/horizon/livestreaming/interfaces/PartyCallManager;

    move-result-object v0

    return-object v0
.end method

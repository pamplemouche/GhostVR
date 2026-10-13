.class public Lcom/oculus/horizon/store/roadblock/RoadblockedStoreSectionHelperAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "RoadblockedStoreSectionHelperAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/store/roadblock/RoadblockedStoreSectionHelper;",
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
.method public get()Lcom/oculus/horizon/store/roadblock/RoadblockedStoreSectionHelper;
    .locals 3

    .prologue
    .line 15
    const-string v0, "getMethod_com.oculus.horizon.store.roadblock.RoadblockedStoreSectionHelper"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 17
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/store/roadblock/RoadblockedStoreSectionHelper;

    .line 18
    invoke-static {p0}, Lcom/oculus/horizon/store/roadblock/RoadblockedStoreSectionModule;->$ul_$xXXandroid_content_SharedPreferences$xXXcom_oculus_horizon_store_roadblock_RoadblockedStoreSectionSharedPrefs$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 19
    invoke-static {p0}, Lcom/oculus/horizon/samsung/GearVRControllerHelper;->$ul_$xXXcom_oculus_horizon_samsung_GearVRControllerHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/samsung/GearVRControllerHelper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/store/roadblock/RoadblockedStoreSectionHelper;-><init>(Landroid/content/SharedPreferences;Lcom/oculus/horizon/samsung/GearVRControllerHelper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
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
    invoke-virtual {p0}, Lcom/oculus/horizon/store/roadblock/RoadblockedStoreSectionHelperAutoProvider;->get()Lcom/oculus/horizon/store/roadblock/RoadblockedStoreSectionHelper;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/oculus/horizon/badges/LauncherBadgeControllerAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "LauncherBadgeControllerAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/badges/LauncherBadgeController;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/oculus/horizon/badges/LauncherBadgeController;
    .locals 4

    .prologue
    .line 16
    const-string v0, "getMethod_com.oculus.horizon.badges.LauncherBadgeController"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 18
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/badges/LauncherBadgeController;

    .line 19
    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v1

    .line 20
    invoke-static {p0}, Lcom/oculus/horizon/badges/LauncherBadgeModule;->$ul_$xXXjava_lang_String$xXXcom_oculus_horizon_badges_AppLaunchClass$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-static {p0}, Lcom/oculus/horizon/badges/badgecount/BadgeCountModule;->$ul_$xXXjava_util_Set$x3Ccom_oculus_horizon_badges_badgecount_BadgeCountTracker$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/badges/LauncherBadgeController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
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
    .line 13
    invoke-virtual {p0}, Lcom/oculus/horizon/badges/LauncherBadgeControllerAutoProvider;->get()Lcom/oculus/horizon/badges/LauncherBadgeController;

    move-result-object v0

    return-object v0
.end method

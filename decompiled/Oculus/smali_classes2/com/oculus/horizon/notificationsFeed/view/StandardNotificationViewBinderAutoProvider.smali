.class public Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinderAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "StandardNotificationViewBinderAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;
    .locals 4

    .prologue
    .line 17
    const-string v0, "getMethod_com.oculus.horizon.notificationsFeed.view.StandardNotificationViewBinder"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 19
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;

    .line 20
    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v1

    .line 21
    invoke-static {p0}, Lcom/oculus/horizon/notifications/NotificationsMethods;->$ul_$xXXcom_oculus_horizon_notifications_NotificationsMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/notifications/NotificationsMethods;

    move-result-object v2

    .line 22
    invoke-static {p0}, Lcom/oculus/common/packagescache/PackagesCache;->$ul_$xXXcom_oculus_common_packagescache_PackagesCache$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/common/packagescache/PackagesCache;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;-><init>(Lcom/facebook/inject/InjectorLike;Landroid/content/Context;Lcom/oculus/horizon/notifications/NotificationsMethods;Lcom/oculus/common/packagescache/PackagesCache;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
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
    .line 14
    invoke-virtual {p0}, Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinderAutoProvider;->get()Lcom/oculus/horizon/notificationsFeed/view/StandardNotificationViewBinder;

    move-result-object v0

    return-object v0
.end method

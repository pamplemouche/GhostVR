.class public Lcom/oculus/horizon/legacy/social/SocialManagerAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "SocialManagerAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/legacy/social/SocialManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/oculus/horizon/legacy/social/SocialManager;
    .locals 8

    .prologue
    .line 19
    const-string v0, "getMethod_com.oculus.horizon.legacy.social.SocialManager"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 21
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/legacy/social/SocialManager;

    .line 22
    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v2

    .line 23
    invoke-static {p0}, Lcom/oculus/horizon/legacy/social/MeManager;->$ul_$xXXcom_oculus_horizon_legacy_social_MeManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v3

    .line 24
    invoke-static {p0}, Lcom/oculus/horizon/social/SocialMethods;->$ul_$xXXcom_oculus_horizon_social_SocialMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/social/SocialMethods;

    move-result-object v4

    .line 25
    invoke-static {p0}, Lcom/oculus/horizon/fbconnect/FBConnectMethods;->$ul_$xXXcom_oculus_horizon_fbconnect_FBConnectMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/fbconnect/FBConnectMethods;

    move-result-object v5

    .line 26
    invoke-static {p0}, Lcom/oculus/horizon/notifications/NotificationsMethods;->$ul_$xXXcom_oculus_horizon_notifications_NotificationsMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/notifications/NotificationsMethods;

    move-result-object v6

    .line 27
    invoke-static {p0}, Lcom/oculus/libraryapi/OVRLibraryModule;->$ul_$xXXcom_facebook_inject_Lazy$x3Ccom_oculus_libraryapi_OVRLibraryInternal$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/Lazy;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/oculus/horizon/legacy/social/SocialManager;-><init>(Lcom/facebook/inject/InjectorLike;Landroid/content/Context;Lcom/oculus/horizon/legacy/social/MeManager;Lcom/oculus/horizon/social/SocialMethods;Lcom/oculus/horizon/fbconnect/FBConnectMethods;Lcom/oculus/horizon/notifications/NotificationsMethods;Lcom/facebook/inject/Lazy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
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
    .line 16
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/SocialManagerAutoProvider;->get()Lcom/oculus/horizon/legacy/social/SocialManager;

    move-result-object v0

    return-object v0
.end method

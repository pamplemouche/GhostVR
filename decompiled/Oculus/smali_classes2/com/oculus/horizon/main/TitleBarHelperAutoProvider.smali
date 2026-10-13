.class public Lcom/oculus/horizon/main/TitleBarHelperAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "TitleBarHelperAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/main/TitleBarHelper;",
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
.method public get()Lcom/oculus/horizon/main/TitleBarHelper;
    .locals 6

    .prologue
    .line 17
    const-string v0, "getMethod_com.oculus.horizon.main.TitleBarHelper"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 19
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/main/TitleBarHelper;

    .line 20
    invoke-static {p0}, Lcom/oculus/horizon/legacy/social/MeManager;->$ul_$xXXcom_oculus_horizon_legacy_social_MeManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v2

    .line 21
    invoke-static {p0}, Lcom/oculus/horizon/camera/CameraModule;->$ul_$xXXcom_oculus_horizon_camera_ProfilePictureFileHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/camera/ProfilePictureFileHelper;

    move-result-object v3

    .line 22
    invoke-static {p0}, Lcom/oculus/horizon/style/StyleManager;->$ul_$xXXcom_oculus_horizon_style_StyleManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/style/StyleManager;

    move-result-object v4

    .line 23
    invoke-static {p0}, Lcom/oculus/horizon/main/MainModule;->$ul_$xXXcom_oculus_horizon_fragmentfactory_FragmentFactory$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/main/TitleBarHelper;-><init>(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/legacy/social/MeManager;Lcom/oculus/horizon/camera/ProfilePictureFileHelper;Lcom/oculus/horizon/style/StyleManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
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
    invoke-virtual {p0}, Lcom/oculus/horizon/main/TitleBarHelperAutoProvider;->get()Lcom/oculus/horizon/main/TitleBarHelper;

    move-result-object v0

    return-object v0
.end method

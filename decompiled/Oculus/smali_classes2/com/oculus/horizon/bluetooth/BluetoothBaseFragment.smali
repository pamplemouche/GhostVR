.class public abstract Lcom/oculus/horizon/bluetooth/BluetoothBaseFragment;
.super Lcom/oculus/horizon/base/OculusBaseFragment;
.source "BluetoothBaseFragment.java"


# instance fields
.field mBluetoothLoggerLazy:Lcom/facebook/inject/Lazy;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/inject/Lazy",
            "<",
            "Lcom/oculus/horizon/bluetooth/BluetoothLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/bluetooth/BluetoothBaseFragment;)V
    .locals 1

    .prologue
    .line 13
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/bluetooth/BluetoothBaseFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/bluetooth/BluetoothBaseFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/bluetooth/BluetoothBaseFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/bluetooth/BluetoothBaseFragment;)V
    .locals 1

    .prologue
    .line 13
    invoke-static {p0}, Lcom/oculus/horizon/bluetooth/BluetoothLogger;->$ul_$xXXcom_facebook_inject_Lazy$x3Ccom_oculus_horizon_bluetooth_BluetoothLogger$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/Lazy;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/bluetooth/BluetoothBaseFragment;->mBluetoothLoggerLazy:Lcom/facebook/inject/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 13
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/BluetoothBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/bluetooth/BluetoothBaseFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/bluetooth/BluetoothBaseFragment;)V

    .line 21
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/BluetoothBaseFragment;->getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;

    move-result-object v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothBaseFragment;->mBluetoothLoggerLazy:Lcom/facebook/inject/Lazy;

    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/bluetooth/BluetoothLogger;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/bluetooth/BluetoothLogger;->reportViewEnd(Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 30
    :cond_0
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onPause()V

    .line 31
    return-void
.end method

.method protected reportView()V
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/BluetoothBaseFragment;->getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;

    move-result-object v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothBaseFragment;->mBluetoothLoggerLazy:Lcom/facebook/inject/Lazy;

    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/bluetooth/BluetoothLogger;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/bluetooth/BluetoothLogger;->reportViewStart(Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 39
    :cond_0
    return-void
.end method

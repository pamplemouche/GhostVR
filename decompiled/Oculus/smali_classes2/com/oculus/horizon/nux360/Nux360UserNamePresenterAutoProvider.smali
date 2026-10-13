.class public Lcom/oculus/horizon/nux360/Nux360UserNamePresenterAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "Nux360UserNamePresenterAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;",
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
.method public get()Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;
    .locals 3

    .prologue
    .line 14
    const-string v0, "getMethod_com.oculus.horizon.nux360.Nux360UserNamePresenter"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 16
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;

    .line 17
    invoke-static {p0}, Lcom/oculus/horizon/nux360/NuxMethods;->$ul_$xXXcom_oculus_horizon_nux360_NuxMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/nux360/NuxMethods;

    move-result-object v1

    .line 18
    invoke-static {p0}, Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;->$ul_$xXXcom_oculus_horizon_nux360_Nux360RegistrationDataHolder$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;-><init>(Lcom/oculus/horizon/nux360/NuxMethods;Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
    .line 11
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360UserNamePresenterAutoProvider;->get()Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;

    move-result-object v0

    return-object v0
.end method

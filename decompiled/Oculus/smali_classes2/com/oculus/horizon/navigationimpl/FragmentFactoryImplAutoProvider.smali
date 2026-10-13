.class public Lcom/oculus/horizon/navigationimpl/FragmentFactoryImplAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "FragmentFactoryImplAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/navigationimpl/FragmentFactoryImpl;",
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
.method public get()Lcom/oculus/horizon/navigationimpl/FragmentFactoryImpl;
    .locals 3

    .prologue
    .line 16
    const-string v0, "getMethod_com.oculus.horizon.navigationimpl.FragmentFactoryImpl"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 18
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/navigationimpl/FragmentFactoryImpl;

    .line 19
    invoke-static {p0}, Lcom/oculus/horizon/bluetooth/BluetoothFragmentFactory;->$ul_$xXXcom_facebook_inject_Lazy$x3Ccom_oculus_horizon_bluetooth_BluetoothFragmentFactory$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/Lazy;

    move-result-object v1

    .line 20
    invoke-static {p0}, Lcom/oculus/horizon/main/MainModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fhorizon$x5Ffeed$x5Fdefault$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/oculus/horizon/navigationimpl/FragmentFactoryImpl;-><init>(Lcom/facebook/inject/InjectorLike;Lcom/facebook/inject/Lazy;Ljavax/inject/Provider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
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
    invoke-virtual {p0}, Lcom/oculus/horizon/navigationimpl/FragmentFactoryImplAutoProvider;->get()Lcom/oculus/horizon/navigationimpl/FragmentFactoryImpl;

    move-result-object v0

    return-object v0
.end method

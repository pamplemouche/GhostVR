.class public Lcom/oculus/horizon/service/ExternalPlatformNetworkAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "ExternalPlatformNetworkAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/service/ExternalPlatformNetwork;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/oculus/horizon/service/ExternalPlatformNetwork;
    .locals 6

    .prologue
    .line 18
    const-string v0, "getMethod_com.oculus.horizon.service.ExternalPlatformNetwork"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 20
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/service/ExternalPlatformNetwork;

    .line 21
    invoke-static {p0}, Lcom/oculus/http/core/ApiModule;->$ul_$xXXretrofit_RestAdapter$xXXcom_oculus_http_core_annotations_OculusRestAdapter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lretrofit/RestAdapter;

    move-result-object v1

    .line 22
    invoke-static {p0}, Lcom/oculus/horizon/service/ExternalPlatformLocal;->$ul_$xXXcom_oculus_horizon_service_ExternalPlatformLocal$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/service/ExternalPlatformLocal;

    move-result-object v2

    .line 23
    invoke-static {p0}, Lcom/oculus/auth/credentials/CredentialsModule;->$ul_$xXXjavax_inject_Provider$x3Ccom_oculus_auth_credentials_Credentials$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v3

    .line 24
    invoke-static {p0}, Lcom/oculus/unlockulus_helper/inject/UnlockulusModule;->$ul_$xXXcom_oculus_unlockulus$x5Fhelper_UnlockulusHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/unlockulus_helper/UnlockulusHelper;

    move-result-object v4

    .line 25
    invoke-static {p0}, Lcom/oculus/config/trusted_user/TrustedUserModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fis$x5Ftrusted$x5Fuser$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/service/ExternalPlatformNetwork;-><init>(Lretrofit/RestAdapter;Lcom/oculus/horizon/service/ExternalPlatformLocal;Ljavax/inject/Provider;Lcom/oculus/unlockulus_helper/UnlockulusHelper;Ljavax/inject/Provider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
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
    .line 15
    invoke-virtual {p0}, Lcom/oculus/horizon/service/ExternalPlatformNetworkAutoProvider;->get()Lcom/oculus/horizon/service/ExternalPlatformNetwork;

    move-result-object v0

    return-object v0
.end method

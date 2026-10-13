.class public Lcom/oculus/horizon/commerce/PurchaseMethodsAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "PurchaseMethodsAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/commerce/PurchaseMethods;",
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
.method public get()Lcom/oculus/horizon/commerce/PurchaseMethods;
    .locals 4

    .prologue
    .line 17
    const-string v0, "getMethod_com.oculus.horizon.commerce.PurchaseMethods"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 19
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/commerce/PurchaseMethods;

    .line 20
    invoke-static {p0}, Lcom/oculus/http/core/ApiModule;->$ul_$xXXretrofit_RestAdapter$xXXcom_oculus_http_core_annotations_OculusRestAdapter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lretrofit/RestAdapter;

    move-result-object v1

    .line 21
    invoke-static {p0}, Lcom/oculus/libraryapi/OVRLibraryModule;->$ul_$xXXcom_facebook_inject_Lazy$x3Ccom_oculus_libraryapi_OVRLibraryInternal$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/Lazy;

    move-result-object v2

    .line 22
    invoke-static {p0}, Lcom/oculus/library/utils/AppInternalConverter;->$ul_$xXXcom_facebook_inject_Lazy$x3Ccom_oculus_library_utils_AppInternalConverter$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/Lazy;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/commerce/PurchaseMethods;-><init>(Lretrofit/RestAdapter;Lcom/facebook/inject/Lazy;Lcom/facebook/inject/Lazy;)V
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
    invoke-virtual {p0}, Lcom/oculus/horizon/commerce/PurchaseMethodsAutoProvider;->get()Lcom/oculus/horizon/commerce/PurchaseMethods;

    move-result-object v0

    return-object v0
.end method

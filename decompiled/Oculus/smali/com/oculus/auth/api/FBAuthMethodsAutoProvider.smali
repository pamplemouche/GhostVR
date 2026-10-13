.class public Lcom/oculus/auth/api/FBAuthMethodsAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "FBAuthMethodsAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/auth/api/FBAuthMethods;",
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
.method public get()Lcom/oculus/auth/api/FBAuthMethods;
    .locals 3

    .prologue
    .line 14
    const-string v0, "getMethod_com.oculus.auth.api.FBAuthMethods"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 16
    :try_start_0
    new-instance v0, Lcom/oculus/auth/api/FBAuthMethods;

    .line 17
    invoke-static {p0}, Lcom/oculus/auth/api/ApiModule;->$ul_$xXXretrofit_RestAdapter$xXXcom_oculus_auth_api_FacebookLoginApiRestAdapter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lretrofit/RestAdapter;

    move-result-object v1

    .line 18
    invoke-static {p0}, Lcom/oculus/auth/api/ApiModule;->$ul_$xXXretrofit_RestAdapter$xXXcom_oculus_auth_api_FacebookLoginGraphRestAdapter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lretrofit/RestAdapter;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/oculus/auth/api/FBAuthMethods;-><init>(Lcom/facebook/inject/InjectorLike;Lretrofit/RestAdapter;Lretrofit/RestAdapter;)V
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
    invoke-virtual {p0}, Lcom/oculus/auth/api/FBAuthMethodsAutoProvider;->get()Lcom/oculus/auth/api/FBAuthMethods;

    move-result-object v0

    return-object v0
.end method

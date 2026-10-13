.class public Lcom/oculus/stetho/StethoInitAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "StethoInitAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/stetho/StethoInit;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/oculus/stetho/StethoInit;
    .locals 3

    .prologue
    .line 15
    const-string v0, "getMethod_com.oculus.stetho.StethoInit"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 17
    :try_start_0
    new-instance v0, Lcom/oculus/stetho/StethoInit;

    .line 18
    invoke-static {p0}, Lcom/oculus/stetho/StethoModule;->$ul_$xXXcom_facebook_inject_Lazy$x3Ccom_facebook_stetho_Stetho_Initializer$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/Lazy;

    move-result-object v1

    .line 19
    invoke-static {p0}, Lcom/oculus/debug/DebugMode;->$ul_$xXXcom_oculus_debug_DebugMode$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/debug/DebugMode;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oculus/stetho/StethoInit;-><init>(Lcom/facebook/inject/Lazy;Lcom/oculus/debug/DebugMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
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
    .line 12
    invoke-virtual {p0}, Lcom/oculus/stetho/StethoInitAutoProvider;->get()Lcom/oculus/stetho/StethoInit;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/oculus/horizon/LogLevelMethodAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "LogLevelMethodAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lretrofit/RestAdapter$LogLevel;",
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
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/oculus/horizon/LogLevelMethodAutoProvider;->get()Lretrofit/RestAdapter$LogLevel;

    move-result-object v0

    return-object v0
.end method

.method public get()Lretrofit/RestAdapter$LogLevel;
    .locals 1

    .prologue
    .line 16
    const-string v0, "getMethod_retrofit.RestAdapter.LogLevel"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 19
    :try_start_0
    invoke-static {p0}, Lcom/oculus/debug/DebugMode;->$ul_$xXXcom_oculus_debug_DebugMode$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/debug/DebugMode;

    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/oculus/horizon/HorizonModule;->provideLogLevel(Lcom/oculus/debug/DebugMode;)Lretrofit/RestAdapter$LogLevel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 22
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v0
.end method

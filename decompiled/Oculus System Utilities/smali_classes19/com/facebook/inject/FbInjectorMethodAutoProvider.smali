.class public Lcom/facebook/inject/FbInjectorMethodAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "FbInjectorMethodAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/facebook/inject/FbInjector;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/facebook/inject/FbInjector;
    .locals 2

    .prologue
    .line 13
    const-string v1, "getMethod_com.facebook.inject.FbInjector"

    invoke-static {v1}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 15
    :try_start_0
    invoke-static {}, Lcom/facebook/inject/BundledAndroidModule;->assertFbInjector()Lcom/facebook/inject/FbInjector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 18
    .local v0, "instance":Lcom/facebook/inject/FbInjector;
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    .end local v0    # "instance":Lcom/facebook/inject/FbInjector;
    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/facebook/inject/FbInjectorMethodAutoProvider;->get()Lcom/facebook/inject/FbInjector;

    move-result-object v0

    return-object v0
.end method

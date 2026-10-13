.class public Lcom/oculus/horizon/store/StoreSearchAdapterProvider;
.super Lcom/facebook/inject/AbstractAssistedProvider;
.source "StoreSearchAdapterProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractAssistedProvider",
        "<",
        "Lcom/oculus/horizon/store/StoreSearchAdapter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/inject/InjectorLike;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/facebook/inject/AbstractAssistedProvider;-><init>(Lcom/facebook/inject/InjectorLike;)V

    .line 16
    return-void
.end method


# virtual methods
.method public get(Landroidx/fragment/app/FragmentActivity;Lcom/oculus/horizon/store/InstallApi;Lcom/oculus/horizon/logging/OculusLogger;)Lcom/oculus/horizon/store/StoreSearchAdapter;
    .locals 1

    .prologue
    .line 20
    const-string v0, "getMethod_com.oculus.horizon.store.StoreSearchAdapter"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 22
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/store/StoreSearchAdapter;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oculus/horizon/store/StoreSearchAdapter;-><init>(Lcom/facebook/inject/InjectorLike;Landroidx/fragment/app/FragmentActivity;Lcom/oculus/horizon/store/InstallApi;Lcom/oculus/horizon/logging/OculusLogger;)V
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

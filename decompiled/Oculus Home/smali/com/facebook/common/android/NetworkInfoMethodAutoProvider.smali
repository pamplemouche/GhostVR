.class public Lcom/facebook/common/android/NetworkInfoMethodAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "NetworkInfoMethodAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Landroid/net/NetworkInfo;",
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
.method public get()Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 15
    const-string v1, "getMethod_android.net.NetworkInfo"

    invoke-static {v1}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 18
    :try_start_0
    invoke-static {p0}, Lcom/facebook/common/android/AndroidModule;->$ul_$xXXandroid_net_ConnectivityManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/net/ConnectivityManager;

    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/facebook/common/android/AndroidModule;->provideActiveNetworkInfo(Landroid/net/ConnectivityManager;)Landroid/net/NetworkInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 21
    .local v0, "instance":Landroid/net/NetworkInfo;
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    .end local v0    # "instance":Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/facebook/common/android/NetworkInfoMethodAutoProvider;->get()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

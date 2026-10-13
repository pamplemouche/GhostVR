.class public Lcom/facebook/common/android/ConnectivityManagerCompatMethodAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "ConnectivityManagerCompatMethodAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/facebook/support/v4/net/ConnectivityManagerCompat;",
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
.method public get()Lcom/facebook/support/v4/net/ConnectivityManagerCompat;
    .locals 2

    .prologue
    .line 15
    const-string v1, "getMethod_com.facebook.support.v4.net.ConnectivityManagerCompat"

    invoke-static {v1}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 17
    :try_start_0
    invoke-static {}, Lcom/facebook/common/android/AndroidModule;->provideConnectivityManagerCompat()Lcom/facebook/support/v4/net/ConnectivityManagerCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 20
    .local v0, "instance":Lcom/facebook/support/v4/net/ConnectivityManagerCompat;
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    .end local v0    # "instance":Lcom/facebook/support/v4/net/ConnectivityManagerCompat;
    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/facebook/common/android/ConnectivityManagerCompatMethodAutoProvider;->get()Lcom/facebook/support/v4/net/ConnectivityManagerCompat;

    move-result-object v0

    return-object v0
.end method

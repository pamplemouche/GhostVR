.class public Lcom/oculus/horizon/pdp/PdpCarouselAdapterAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "PdpCarouselAdapterAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/pdp/PdpCarouselAdapter;",
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
.method public get()Lcom/oculus/horizon/pdp/PdpCarouselAdapter;
    .locals 2

    .prologue
    .line 15
    const-string v0, "getMethod_com.oculus.horizon.pdp.PdpCarouselAdapter"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 17
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/pdp/PdpCarouselAdapter;

    .line 18
    invoke-static {p0}, Lcom/facebook/common/android/AndroidModule;->$ul_$xXXandroid_view_LayoutInflater$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/pdp/PdpCarouselAdapter;-><init>(Landroid/view/LayoutInflater;)V
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
    .line 12
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/PdpCarouselAdapterAutoProvider;->get()Lcom/oculus/horizon/pdp/PdpCarouselAdapter;

    move-result-object v0

    return-object v0
.end method

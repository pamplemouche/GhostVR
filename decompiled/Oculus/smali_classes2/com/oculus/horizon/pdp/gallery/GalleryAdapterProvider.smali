.class public Lcom/oculus/horizon/pdp/gallery/GalleryAdapterProvider;
.super Lcom/facebook/inject/AbstractAssistedProvider;
.source "GalleryAdapterProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractAssistedProvider",
        "<",
        "Lcom/oculus/horizon/pdp/gallery/GalleryAdapter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/inject/InjectorLike;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/facebook/inject/AbstractAssistedProvider;-><init>(Lcom/facebook/inject/InjectorLike;)V

    .line 17
    return-void
.end method


# virtual methods
.method public get(Lcom/google/common/collect/ImmutableList;Landroid/content/Context;)Lcom/oculus/horizon/pdp/gallery/GalleryAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/http/common/Image;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Lcom/oculus/horizon/pdp/gallery/GalleryAdapter;"
        }
    .end annotation

    .prologue
    .line 20
    const-string v0, "getMethod_com.oculus.horizon.pdp.gallery.GalleryAdapter"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 22
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/pdp/gallery/GalleryAdapter;

    invoke-direct {v0, p1, p2}, Lcom/oculus/horizon/pdp/gallery/GalleryAdapter;-><init>(Lcom/google/common/collect/ImmutableList;Landroid/content/Context;)V
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

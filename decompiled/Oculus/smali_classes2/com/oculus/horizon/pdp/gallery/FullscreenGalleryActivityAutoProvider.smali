.class public Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivityAutoProvider;
.super Lcom/facebook/inject/AbstractComponentProvider;
.source "FullscreenGalleryActivityAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractComponentProvider",
        "<",
        "Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/facebook/inject/AbstractComponentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 19
    instance-of v0, p1, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivityAutoProvider;

    return v0
.end method

.method public inject(Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;)V
    .locals 0

    .prologue
    .line 14
    invoke-static {p0, p1}, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;)V

    .line 15
    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivityAutoProvider;->inject(Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;)V

    return-void
.end method

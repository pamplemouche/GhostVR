.class public abstract Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
.super Ljava/lang/Object;
.source "MediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RouteController"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRelease()V
    .locals 0

    .prologue
    .line 381
    return-void
.end method

.method public onSelect()V
    .locals 0

    .prologue
    .line 387
    return-void
.end method

.method public onSetVolume(I)V
    .locals 0

    .prologue
    .line 420
    return-void
.end method

.method public onUnselect()V
    .locals 0

    .prologue
    .line 393
    return-void
.end method

.method public onUnselect(I)V
    .locals 0

    .prologue
    .line 410
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onUnselect()V

    .line 411
    return-void
.end method

.method public onUpdateVolume(I)V
    .locals 0

    .prologue
    .line 428
    return-void
.end method

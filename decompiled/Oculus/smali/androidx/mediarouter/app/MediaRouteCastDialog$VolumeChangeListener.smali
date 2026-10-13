.class Landroidx/mediarouter/app/MediaRouteCastDialog$VolumeChangeListener;
.super Ljava/lang/Object;
.source "MediaRouteCastDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/MediaRouteCastDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;


# direct methods
.method constructor <init>(Landroidx/mediarouter/app/MediaRouteCastDialog;)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$VolumeChangeListener;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    .prologue
    .line 568
    if-eqz p3, :cond_1

    .line 569
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 570
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$VolumeChangeListener;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    iget-object v1, v1, Landroidx/mediarouter/app/MediaRouteCastDialog;->mVolumeSliderHolderMap:Ljava/util/Map;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;

    .line 572
    if-eqz v1, :cond_0

    .line 573
    if-nez p2, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->setMute(Z)V

    .line 575
    :cond_0
    invoke-virtual {v0, p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->requestSetVolume(I)V

    .line 577
    :cond_1
    return-void

    .line 573
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$VolumeChangeListener;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mRouteForVolumeUpdatingByUser:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$VolumeChangeListener;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 554
    :cond_0
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$VolumeChangeListener;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iput-object v0, v1, Landroidx/mediarouter/app/MediaRouteCastDialog;->mRouteForVolumeUpdatingByUser:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 555
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .prologue
    .line 562
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$VolumeChangeListener;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 564
    return-void
.end method

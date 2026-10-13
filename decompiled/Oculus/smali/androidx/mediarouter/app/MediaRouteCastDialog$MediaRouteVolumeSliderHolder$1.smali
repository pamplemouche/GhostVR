.class Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder$1;
.super Ljava/lang/Object;
.source "MediaRouteCastDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->bindRouteVolumeSliderHolder(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;


# direct methods
.method constructor <init>(Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;)V
    .locals 0

    .prologue
    .line 710
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder$1;->this$1:Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 713
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder$1;->this$1:Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;

    iget-object v1, v1, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    iget-object v1, v1, Landroidx/mediarouter/app/MediaRouteCastDialog;->mRouteForVolumeUpdatingByUser:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eqz v1, :cond_0

    .line 714
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder$1;->this$1:Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;

    iget-object v1, v1, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    iget-object v1, v1, Landroidx/mediarouter/app/MediaRouteCastDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 716
    :cond_0
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder$1;->this$1:Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;

    iget-object v1, v1, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder$1;->this$1:Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;

    iget-object v2, v2, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iput-object v2, v1, Landroidx/mediarouter/app/MediaRouteCastDialog;->mRouteForVolumeUpdatingByUser:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 718
    invoke-virtual {p1}, Landroid/view/View;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 719
    :goto_0
    if-eqz v1, :cond_2

    .line 721
    :goto_1
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder$1;->this$1:Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;

    invoke-virtual {v2, v1}, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->setMute(Z)V

    .line 722
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder$1;->this$1:Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;

    iget-object v1, v1, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->mVolumeSlider:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    invoke-virtual {v1, v0}, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->setProgress(I)V

    .line 723
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder$1;->this$1:Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;

    iget-object v1, v1, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v1, v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->requestSetVolume(I)V

    .line 727
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder$1;->this$1:Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;

    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 729
    return-void

    :cond_1
    move v1, v0

    .line 718
    goto :goto_0

    .line 719
    :cond_2
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder$1;->this$1:Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->getUnmutedVolume()I

    move-result v0

    goto :goto_1
.end method

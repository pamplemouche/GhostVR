.class abstract Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MediaRouteCastDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/MediaRouteCastDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "MediaRouteVolumeSliderHolder"
.end annotation


# instance fields
.field final mMuteButton:Landroid/widget/ImageButton;

.field mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field final mVolumeSlider:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

.field final synthetic this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;


# direct methods
.method constructor <init>(Landroidx/mediarouter/app/MediaRouteCastDialog;Landroid/view/View;Landroid/widget/ImageButton;Landroidx/mediarouter/app/MediaRouteVolumeSlider;)V
    .locals 2

    .prologue
    .line 693
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    .line 694
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 695
    iput-object p3, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->mMuteButton:Landroid/widget/ImageButton;

    .line 696
    iput-object p4, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->mVolumeSlider:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    .line 698
    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteCastDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getMuteButtonDrawableIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 699
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->mMuteButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 700
    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteCastDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->mVolumeSlider:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    invoke-static {v0, v1}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->setVolumeSliderColor(Landroid/content/Context;Landroidx/mediarouter/app/MediaRouteVolumeSlider;)V

    .line 701
    return-void
.end method


# virtual methods
.method bindRouteVolumeSliderHolder(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 705
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 706
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v1

    .line 707
    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 709
    :goto_0
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->mMuteButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setActivated(Z)V

    .line 710
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->mMuteButton:Landroid/widget/ImageButton;

    new-instance v2, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder$1;

    invoke-direct {v2, p0}, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder$1;-><init>(Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 732
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->mVolumeSlider:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v2}, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->setTag(Ljava/lang/Object;)V

    .line 733
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->mVolumeSlider:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->setMax(I)V

    .line 734
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->mVolumeSlider:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->setProgress(I)V

    .line 735
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->mVolumeSlider:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    iget-object v1, v1, Landroidx/mediarouter/app/MediaRouteCastDialog;->mVolumeChangeListener:Landroidx/mediarouter/app/MediaRouteCastDialog$VolumeChangeListener;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 736
    return-void

    .line 707
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getUnmutedVolume()I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 763
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mBeforeMuteVolumeMap:Ljava/util/Map;

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 765
    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    .line 766
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method setMute(Z)V
    .locals 3

    .prologue
    .line 746
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->mMuteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isActivated()Z

    move-result v0

    .line 747
    if-ne v0, p1, :cond_0

    .line 760
    :goto_0
    return-void

    .line 751
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->mMuteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setActivated(Z)V

    .line 753
    if-eqz p1, :cond_1

    .line 756
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mBeforeMuteVolumeMap:Ljava/util/Map;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->mVolumeSlider:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    invoke-virtual {v2}, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->getProgress()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 758
    :cond_1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mBeforeMuteVolumeMap:Ljava/util/Map;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method updateVolume()V
    .locals 2

    .prologue
    .line 739
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v1

    .line 741
    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->setMute(Z)V

    .line 742
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouteVolumeSliderHolder;->mVolumeSlider:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->setProgress(I)V

    .line 743
    return-void

    .line 741
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

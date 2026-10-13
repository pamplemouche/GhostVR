.class Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder$1;
.super Ljava/lang/Object;
.source "MediaRouteCastDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;


# direct methods
.method constructor <init>(Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;)V
    .locals 0

    .prologue
    .line 1069
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder$1;->this$2:Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1073
    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder$1;->this$2:Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;

    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1075
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder$1;->this$2:Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;

    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1076
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder$1;->this$2:Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;

    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1077
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder$1;->this$2:Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;

    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->selectIntoGroup()V

    .line 1078
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder$1;->this$2:Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder$1;->this$2:Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;

    iget-object v1, v1, Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;->mVolumeSliderLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder$1;->this$2:Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;

    iget v2, v2, Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;->mExpandedLayoutHeight:I

    invoke-virtual {v0, v1, v2}, Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;->animateLayoutHeight(Landroid/view/View;I)V

    .line 1085
    :goto_0
    return-void

    .line 1081
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder$1;->this$2:Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;

    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1082
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder$1;->this$2:Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;

    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->unselectFromGroup()V

    .line 1083
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder$1;->this$2:Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder$1;->this$2:Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;

    iget-object v1, v1, Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;->mVolumeSliderLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder$1;->this$2:Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;

    iget v2, v2, Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;->mCollapsedLayoutHeight:I

    invoke-virtual {v0, v1, v2}, Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$RouteViewHolder;->animateLayoutHeight(Landroid/view/View;I)V

    goto :goto_0
.end method

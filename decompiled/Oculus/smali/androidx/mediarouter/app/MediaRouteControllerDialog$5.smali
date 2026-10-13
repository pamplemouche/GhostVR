.class Landroidx/mediarouter/app/MediaRouteControllerDialog$5;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/mediarouter/app/MediaRouteControllerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;


# direct methods
.method constructor <init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 427
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-boolean v0, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mIsGroupExpanded:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mIsGroupExpanded:Z

    .line 428
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-boolean v0, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mIsGroupExpanded:Z

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroidx/mediarouter/app/OverlayListView;

    invoke-virtual {v0, v2}, Landroidx/mediarouter/app/OverlayListView;->setVisibility(I)V

    .line 431
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->loadInterpolator()V

    .line 432
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->updateLayoutHeight(Z)V

    .line 433
    return-void

    :cond_1
    move v0, v2

    .line 427
    goto :goto_0
.end method

.class public Lcom/oculus/horizon/widget/CenterLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "CenterLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/widget/CenterLayoutManager$CenterSmoothScroller;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method


# virtual methods
.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/oculus/horizon/widget/CenterLayoutManager$CenterSmoothScroller;

    .line 32
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/widget/CenterLayoutManager$CenterSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 34
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/CenterLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 35
    return-void
.end method

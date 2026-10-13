.class final Lcom/facebook/crudolib/view/impression/ViewUpdateLogic;
.super Ljava/lang/Object;
.source "ViewUpdateLogic.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doScroll(Landroid/view/ViewGroup;Lcom/facebook/crudolib/view/impression/ImpressionDetector;)V
    .locals 0

    .prologue
    .line 18
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p0}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 19
    return-void
.end method

.method public static hasPendingAdapterUpdates(Landroid/view/ViewGroup;)Z
    .locals 1

    .prologue
    .line 14
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v0

    return v0
.end method

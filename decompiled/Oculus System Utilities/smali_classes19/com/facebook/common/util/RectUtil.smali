.class public Lcom/facebook/common/util/RectUtil;
.super Ljava/lang/Object;
.source "RectUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHitRectInAncestorCoordinates(Landroid/view/View;Landroid/view/ViewParent;Landroid/graphics/Rect;)V
    .locals 4
    .param p0, "element"    # Landroid/view/View;
    .param p1, "ancestor"    # Landroid/view/ViewParent;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 13
    invoke-virtual {p0, p2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 15
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 16
    check-cast v1, Landroid/view/View;

    .line 17
    .local v1, "parent1":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    .end local v1    # "parent1":Landroid/view/View;
    :cond_0
    return-void
.end method

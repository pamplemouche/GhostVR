.class public Lfh;
.super Lh7;
.source "PG"


# instance fields
.field public final c:Landroid/support/v7/widget/RecyclerView;

.field public final d:Lh7;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lh7;-><init>()V

    .line 2
    iput-object p1, p0, Lfh;->c:Landroid/support/v7/widget/RecyclerView;

    .line 3
    new-instance p1, Leh;

    invoke-direct {p1, p0}, Leh;-><init>(Lfh;)V

    iput-object p1, p0, Lfh;->d:Lh7;

    return-void
.end method


# virtual methods
.method public a()Lh7;
    .locals 1

    .line 34
    iget-object v0, p0, Lfh;->d:Lh7;

    return-object v0
.end method

.method public a(Landroid/view/View;LZ7;)V
    .locals 5

    .line 18
    invoke-super {p0, p1, p2}, Lh7;->a(Landroid/view/View;LZ7;)V

    .line 19
    const-class p1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 20
    iget-object v0, p2, LZ7;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {p0}, Lfh;->b()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lfh;->c:Landroid/support/v7/widget/RecyclerView;

    .line 22
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    if-eqz p1, :cond_4

    .line 23
    iget-object v0, p1, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->x:LXg;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    const/4 v3, -0x1

    .line 24
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    iget-object v0, p1, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x2000

    .line 25
    iget-object v3, p2, LZ7;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 26
    iget-object v0, p2, LZ7;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 27
    :cond_1
    iget-object v0, p1, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x1000

    .line 28
    iget-object v3, p2, LZ7;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 29
    iget-object v0, p2, LZ7;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 30
    :cond_3
    invoke-virtual {p1, v1, v2}, LQg;->b(LXg;Lbh;)I

    move-result v0

    .line 31
    invoke-virtual {p1, v1, v2}, LQg;->a(LXg;Lbh;)I

    move-result p1

    const/4 v1, 0x0

    .line 32
    invoke-static {v0, p1, v1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p1

    .line 33
    iget-object p2, p2, LZ7;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    :cond_4
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 35
    sget-object v0, Lh7;->b:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 36
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 37
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lfh;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    .line 39
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p1, p2}, LQg;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lh7;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    return p3

    .line 2
    :cond_0
    invoke-virtual {p0}, Lfh;->b()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    iget-object p1, p0, Lfh;->c:Landroid/support/v7/widget/RecyclerView;

    .line 3
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    if-eqz p1, :cond_8

    .line 4
    iget-object v1, p1, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView;->x:LXg;

    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView;->C0:Lbh;

    const/16 v2, 0x1000

    if-eq p2, v2, :cond_3

    const/16 v2, 0x2000

    if-eq p2, v2, :cond_1

    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    const/4 p2, -0x1

    .line 5
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    iget v1, p1, LQg;->p:I

    .line 7
    invoke-virtual {p1}, LQg;->l()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, LQg;->i()I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v1, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 8
    :goto_0
    iget-object v2, p1, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 9
    iget p2, p1, LQg;->o:I

    .line 10
    invoke-virtual {p1}, LQg;->j()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-virtual {p1}, LQg;->k()I

    move-result v2

    sub-int/2addr p2, v2

    neg-int p2, p2

    goto :goto_3

    .line 11
    :cond_3
    invoke-virtual {v1, p3}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 12
    iget p2, p1, LQg;->p:I

    .line 13
    invoke-virtual {p1}, LQg;->l()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p1}, LQg;->i()I

    move-result v1

    sub-int/2addr p2, v1

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    .line 14
    :goto_1
    iget-object v1, p1, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p3}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15
    iget v1, p1, LQg;->o:I

    .line 16
    invoke-virtual {p1}, LQg;->j()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, LQg;->k()I

    move-result v2

    sub-int/2addr v1, v2

    move v3, v1

    move v1, p2

    move p2, v3

    goto :goto_3

    :cond_5
    move v1, p2

    :cond_6
    :goto_2
    const/4 p2, 0x0

    :goto_3
    if-nez v1, :cond_7

    if-nez p2, :cond_7

    const/4 p3, 0x0

    goto :goto_4

    .line 17
    :cond_7
    iget-object p1, p1, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, p2, v1}, Landroid/support/v7/widget/RecyclerView;->d(II)V

    :goto_4
    return p3

    :cond_8
    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfh;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->n()Z

    move-result v0

    return v0
.end method

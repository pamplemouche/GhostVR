.class public final Lkd;
.super LBd;
.source "PG"

# interfaces
.implements LFd;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final A:I

.field public final B:Z

.field public final C:Landroid/os/Handler;

.field public final D:Ljava/util/List;

.field public final E:Ljava/util/List;

.field public final F:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public final G:Landroid/view/View$OnAttachStateChangeListener;

.field public final H:Lng;

.field public I:I

.field public J:I

.field public K:Landroid/view/View;

.field public L:Landroid/view/View;

.field public M:I

.field public N:Z

.field public O:Z

.field public P:I

.field public Q:I

.field public R:Z

.field public S:Z

.field public T:LEd;

.field public U:Landroid/view/ViewTreeObserver;

.field public V:Landroid/widget/PopupWindow$OnDismissListener;

.field public W:Z

.field public final x:Landroid/content/Context;

.field public final y:I

.field public final z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, LBd;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkd;->D:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkd;->E:Ljava/util/List;

    .line 4
    new-instance v0, Lfd;

    invoke-direct {v0, p0}, Lfd;-><init>(Lkd;)V

    iput-object v0, p0, Lkd;->F:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 5
    new-instance v0, Lgd;

    invoke-direct {v0, p0}, Lgd;-><init>(Lkd;)V

    iput-object v0, p0, Lkd;->G:Landroid/view/View$OnAttachStateChangeListener;

    .line 6
    new-instance v0, Lid;

    invoke-direct {v0, p0}, Lid;-><init>(Lkd;)V

    iput-object v0, p0, Lkd;->H:Lng;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lkd;->I:I

    .line 8
    iput v0, p0, Lkd;->J:I

    .line 9
    iput-object p1, p0, Lkd;->x:Landroid/content/Context;

    .line 10
    iput-object p2, p0, Lkd;->K:Landroid/view/View;

    .line 11
    iput p3, p0, Lkd;->z:I

    .line 12
    iput p4, p0, Lkd;->A:I

    .line 13
    iput-boolean p5, p0, Lkd;->B:Z

    .line 14
    iput-boolean v0, p0, Lkd;->R:Z

    .line 15
    invoke-static {p2}, LA7;->i(Landroid/view/View;)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    const/4 p3, 0x0

    .line 16
    :cond_0
    iput p3, p0, Lkd;->M:I

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p2, p2, 0x2

    const p3, 0x7f070017

    .line 19
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 20
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lkd;->y:I

    .line 21
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lkd;->C:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkd;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lkd;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqd;

    .line 3
    invoke-virtual {p0, v1}, Lkd;->c(Lqd;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lkd;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lkd;->K:Landroid/view/View;

    iput-object v0, p0, Lkd;->L:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 6
    iget-object v0, p0, Lkd;->U:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 7
    :goto_1
    iget-object v1, p0, Lkd;->L:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, p0, Lkd;->U:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lkd;->F:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lkd;->L:Landroid/view/View;

    iget-object v1, p0, Lkd;->G:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_4
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 66
    iget v0, p0, Lkd;->I:I

    if-eq v0, p1, :cond_0

    .line 67
    iput p1, p0, Lkd;->I:I

    .line 68
    iget-object v0, p0, Lkd;->K:Landroid/view/View;

    .line 69
    invoke-static {v0}, LA7;->i(Landroid/view/View;)I

    move-result v0

    .line 70
    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    .line 71
    iput p1, p0, Lkd;->J:I

    :cond_0
    return-void
.end method

.method public a(LEd;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lkd;->T:LEd;

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lkd;->K:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 73
    iput-object p1, p0, Lkd;->K:Landroid/view/View;

    .line 74
    iget v0, p0, Lkd;->I:I

    .line 75
    invoke-static {p1}, LA7;->i(Landroid/view/View;)I

    move-result p1

    .line 76
    invoke-static {v0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    .line 77
    iput p1, p0, Lkd;->J:I

    :cond_0
    return-void
.end method

.method public a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lkd;->V:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public a(Lqd;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lkd;->x:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Lqd;->a(LFd;Landroid/content/Context;)V

    .line 11
    invoke-virtual {p0}, Lkd;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0, p1}, Lkd;->c(Lqd;)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lkd;->D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public a(Lqd;Z)V
    .locals 6

    .line 35
    iget-object v0, p0, Lkd;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 36
    iget-object v3, p0, Lkd;->E:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljd;

    .line 37
    iget-object v3, v3, Ljd;->b:Lqd;

    if-ne p1, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    if-gez v2, :cond_2

    return-void

    :cond_2
    add-int/lit8 v0, v2, 0x1

    .line 38
    iget-object v3, p0, Lkd;->E:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 39
    iget-object v3, p0, Lkd;->E:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljd;

    .line 40
    iget-object v0, v0, Ljd;->b:Lqd;

    invoke-virtual {v0, v1}, Lqd;->a(Z)V

    .line 41
    :cond_3
    iget-object v0, p0, Lkd;->E:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljd;

    .line 42
    iget-object v2, v0, Ljd;->b:Lqd;

    invoke-virtual {v2, p0}, Lqd;->a(LFd;)V

    .line 43
    iget-boolean v2, p0, Lkd;->W:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 44
    iget-object v2, v0, Ljd;->a:Lpg;

    if-eqz v2, :cond_5

    .line 45
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_4

    .line 46
    iget-object v2, v2, Lmg;->X:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 47
    :cond_4
    iget-object v2, v0, Ljd;->a:Lpg;

    .line 48
    iget-object v2, v2, Lmg;->X:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_2

    .line 49
    :cond_5
    throw v3

    .line 50
    :cond_6
    :goto_2
    iget-object v0, v0, Ljd;->a:Lpg;

    invoke-virtual {v0}, Lmg;->dismiss()V

    .line 51
    iget-object v0, p0, Lkd;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_7

    .line 52
    iget-object v4, p0, Lkd;->E:Ljava/util/List;

    add-int/lit8 v5, v0, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljd;

    iget v4, v4, Ljd;->c:I

    iput v4, p0, Lkd;->M:I

    goto :goto_4

    .line 53
    :cond_7
    iget-object v4, p0, Lkd;->K:Landroid/view/View;

    invoke-static {v4}, LA7;->i(Landroid/view/View;)I

    move-result v4

    if-ne v4, v2, :cond_8

    const/4 v4, 0x0

    goto :goto_3

    :cond_8
    const/4 v4, 0x1

    .line 54
    :goto_3
    iput v4, p0, Lkd;->M:I

    :goto_4
    if-nez v0, :cond_c

    .line 55
    invoke-virtual {p0}, Lkd;->dismiss()V

    .line 56
    iget-object p2, p0, Lkd;->T:LEd;

    if-eqz p2, :cond_9

    .line 57
    invoke-interface {p2, p1, v2}, LEd;->a(Lqd;Z)V

    .line 58
    :cond_9
    iget-object p1, p0, Lkd;->U:Landroid/view/ViewTreeObserver;

    if-eqz p1, :cond_b

    .line 59
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 60
    iget-object p1, p0, Lkd;->U:Landroid/view/ViewTreeObserver;

    iget-object p2, p0, Lkd;->F:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 61
    :cond_a
    iput-object v3, p0, Lkd;->U:Landroid/view/ViewTreeObserver;

    .line 62
    :cond_b
    iget-object p1, p0, Lkd;->L:Landroid/view/View;

    iget-object p2, p0, Lkd;->G:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 63
    iget-object p1, p0, Lkd;->V:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {p1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto :goto_5

    :cond_c
    if-eqz p2, :cond_d

    .line 64
    iget-object p1, p0, Lkd;->E:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljd;

    .line 65
    iget-object p1, p1, Ljd;->b:Lqd;

    invoke-virtual {p1, v1}, Lqd;->a(Z)V

    :cond_d
    :goto_5
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 14
    iget-object p1, p0, Lkd;->E:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljd;

    .line 15
    iget-object v0, v0, Ljd;->a:Lpg;

    .line 16
    iget-object v0, v0, Lmg;->y:Lpf;

    .line 17
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 18
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_0

    .line 19
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lnd;

    goto :goto_1

    .line 20
    :cond_0
    check-cast v0, Lnd;

    .line 21
    :goto_1
    invoke-virtual {v0}, Lnd;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(LNd;)Z
    .locals 4

    .line 23
    iget-object v0, p0, Lkd;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljd;

    .line 24
    iget-object v3, v1, Ljd;->b:Lqd;

    if-ne p1, v3, :cond_0

    .line 25
    iget-object p1, v1, Ljd;->a:Lpg;

    .line 26
    iget-object p1, p1, Lmg;->y:Lpf;

    .line 27
    invoke-virtual {p1}, Landroid/widget/ListView;->requestFocus()Z

    return v2

    .line 28
    :cond_1
    invoke-virtual {p1}, Lqd;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 29
    iget-object v0, p0, Lkd;->x:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Lqd;->a(LFd;Landroid/content/Context;)V

    .line 30
    invoke-virtual {p0}, Lkd;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    invoke-virtual {p0, p1}, Lkd;->c(Lqd;)V

    goto :goto_0

    .line 32
    :cond_2
    iget-object v0, p0, Lkd;->D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    :goto_0
    iget-object v0, p0, Lkd;->T:LEd;

    if-eqz v0, :cond_3

    .line 34
    invoke-interface {v0, p1}, LEd;->a(Lqd;)Z

    :cond_3
    return v2

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public b()Landroid/widget/ListView;
    .locals 2

    .line 2
    iget-object v0, p0, Lkd;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkd;->E:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljd;

    .line 4
    iget-object v0, v0, Ljd;->a:Lpg;

    .line 5
    iget-object v0, v0, Lmg;->y:Lpf;

    :goto_0
    return-object v0
.end method

.method public b(I)V
    .locals 1

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lkd;->N:Z

    .line 7
    iput p1, p0, Lkd;->P:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lkd;->R:Z

    return-void
.end method

.method public c(I)V
    .locals 1

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lkd;->O:Z

    .line 98
    iput p1, p0, Lkd;->Q:I

    return-void
.end method

.method public final c(Lqd;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lkd;->x:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 2
    new-instance v3, Lnd;

    iget-boolean v4, v0, Lkd;->B:Z

    const v5, 0x7f0e000b

    invoke-direct {v3, v1, v2, v4, v5}, Lnd;-><init>(Lqd;Landroid/view/LayoutInflater;ZI)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lkd;->c()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    iget-boolean v4, v0, Lkd;->R:Z

    if-eqz v4, :cond_0

    .line 4
    iput-boolean v5, v3, Lnd;->y:Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lkd;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-static/range {p1 .. p1}, LBd;->b(Lqd;)Z

    move-result v4

    .line 7
    iput-boolean v4, v3, Lnd;->y:Z

    .line 8
    :cond_1
    :goto_0
    iget-object v4, v0, Lkd;->x:Landroid/content/Context;

    iget v6, v0, Lkd;->y:I

    const/4 v7, 0x0

    invoke-static {v3, v7, v4, v6}, LBd;->a(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v4

    .line 9
    new-instance v6, Lpg;

    iget-object v8, v0, Lkd;->x:Landroid/content/Context;

    iget v9, v0, Lkd;->z:I

    iget v10, v0, Lkd;->A:I

    invoke-direct {v6, v8, v7, v9, v10}, Lpg;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 10
    iget-object v8, v0, Lkd;->H:Lng;

    .line 11
    iput-object v8, v6, Lpg;->b0:Lng;

    .line 12
    iput-object v0, v6, Lmg;->O:Landroid/widget/AdapterView$OnItemClickListener;

    .line 13
    iget-object v8, v6, Lmg;->X:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 14
    iget-object v8, v0, Lkd;->K:Landroid/view/View;

    .line 15
    iput-object v8, v6, Lmg;->N:Landroid/view/View;

    .line 16
    iget v8, v0, Lkd;->J:I

    .line 17
    iput v8, v6, Lmg;->H:I

    .line 18
    invoke-virtual {v6, v5}, Lmg;->a(Z)V

    .line 19
    iget-object v8, v6, Lmg;->X:Landroid/widget/PopupWindow;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 20
    invoke-virtual {v6, v3}, Lmg;->a(Landroid/widget/ListAdapter;)V

    .line 21
    invoke-virtual {v6, v4}, Lmg;->a(I)V

    .line 22
    iget v3, v0, Lkd;->J:I

    .line 23
    iput v3, v6, Lmg;->H:I

    .line 24
    iget-object v3, v0, Lkd;->E:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v8, 0x0

    if-lez v3, :cond_a

    .line 25
    iget-object v3, v0, Lkd;->E:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v5

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljd;

    .line 26
    iget-object v10, v3, Ljd;->b:Lqd;

    .line 27
    invoke-virtual {v10}, Lqd;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_3

    .line 28
    invoke-virtual {v10, v12}, Lqd;->getItem(I)Landroid/view/MenuItem;

    move-result-object v13

    .line 29
    invoke-interface {v13}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v14

    if-ne v1, v14, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    move-object v13, v7

    :goto_2
    if-nez v13, :cond_4

    goto :goto_7

    .line 30
    :cond_4
    iget-object v10, v3, Ljd;->a:Lpg;

    .line 31
    iget-object v10, v10, Lmg;->y:Lpf;

    .line 32
    invoke-virtual {v10}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    .line 33
    instance-of v12, v11, Landroid/widget/HeaderViewListAdapter;

    if-eqz v12, :cond_5

    .line 34
    check-cast v11, Landroid/widget/HeaderViewListAdapter;

    .line 35
    invoke-virtual {v11}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v12

    .line 36
    invoke-virtual {v11}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    check-cast v11, Lnd;

    goto :goto_3

    .line 37
    :cond_5
    check-cast v11, Lnd;

    const/4 v12, 0x0

    .line 38
    :goto_3
    invoke-virtual {v11}, Lnd;->getCount()I

    move-result v14

    const/4 v15, 0x0

    :goto_4
    const/4 v9, -0x1

    if-ge v15, v14, :cond_7

    .line 39
    invoke-virtual {v11, v15}, Lnd;->getItem(I)Ltd;

    move-result-object v7

    if-ne v13, v7, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x0

    goto :goto_4

    :cond_7
    const/4 v15, -0x1

    :goto_5
    if-ne v15, v9, :cond_8

    goto :goto_6

    :cond_8
    add-int/2addr v15, v12

    .line 40
    invoke-virtual {v10}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int/2addr v15, v7

    if-ltz v15, :cond_b

    .line 41
    invoke-virtual {v10}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    if-lt v15, v7, :cond_9

    goto :goto_6

    .line 42
    :cond_9
    invoke-virtual {v10, v15}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    goto :goto_7

    :cond_a
    const/4 v3, 0x0

    :cond_b
    :goto_6
    const/4 v7, 0x0

    :goto_7
    if-eqz v7, :cond_17

    .line 43
    sget-object v9, Lpg;->c0:Ljava/lang/reflect/Method;

    if-eqz v9, :cond_c

    .line 44
    :try_start_0
    iget-object v10, v6, Lmg;->X:Landroid/widget/PopupWindow;

    new-array v11, v5, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    const-string v9, "MenuPopupWindow"

    const-string v10, "Could not invoke setTouchModal() on PopupWindow. Oh well."

    .line 45
    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_c
    :goto_8
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v9, v10, :cond_d

    .line 47
    iget-object v9, v6, Lmg;->X:Landroid/widget/PopupWindow;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 48
    :cond_d
    iget-object v9, v0, Lkd;->E:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v5

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljd;

    .line 49
    iget-object v9, v9, Ljd;->a:Lpg;

    .line 50
    iget-object v9, v9, Lmg;->y:Lpf;

    const/4 v10, 0x2

    new-array v11, v10, [I

    .line 51
    invoke-virtual {v9, v11}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 52
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 53
    iget-object v12, v0, Lkd;->L:Landroid/view/View;

    invoke-virtual {v12, v10}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 54
    iget v12, v0, Lkd;->M:I

    if-ne v12, v5, :cond_e

    .line 55
    aget v11, v11, v8

    invoke-virtual {v9}, Landroid/widget/ListView;->getWidth()I

    move-result v9

    add-int/2addr v9, v11

    add-int/2addr v9, v4

    .line 56
    iget v10, v10, Landroid/graphics/Rect;->right:I

    if-le v9, v10, :cond_f

    goto :goto_9

    .line 57
    :cond_e
    aget v9, v11, v8

    sub-int/2addr v9, v4

    if-gez v9, :cond_10

    :cond_f
    const/4 v9, 0x1

    goto :goto_a

    :cond_10
    :goto_9
    const/4 v9, 0x0

    :goto_a
    if-ne v9, v5, :cond_11

    const/4 v10, 0x1

    goto :goto_b

    :cond_11
    const/4 v10, 0x0

    .line 58
    :goto_b
    iput v9, v0, Lkd;->M:I

    .line 59
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1a

    const/4 v12, 0x5

    if-lt v9, v11, :cond_12

    .line 60
    iput-object v7, v6, Lmg;->N:Landroid/view/View;

    const/4 v9, 0x0

    const/4 v13, 0x0

    goto :goto_c

    :cond_12
    const/4 v9, 0x2

    new-array v11, v9, [I

    .line 61
    iget-object v13, v0, Lkd;->K:Landroid/view/View;

    invoke-virtual {v13, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v9, v9, [I

    .line 62
    invoke-virtual {v7, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 63
    iget v13, v0, Lkd;->J:I

    and-int/lit8 v13, v13, 0x7

    if-ne v13, v12, :cond_13

    .line 64
    aget v13, v11, v8

    iget-object v14, v0, Lkd;->K:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    add-int/2addr v14, v13

    aput v14, v11, v8

    .line 65
    aget v13, v9, v8

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v14

    add-int/2addr v14, v13

    aput v14, v9, v8

    .line 66
    :cond_13
    aget v13, v9, v8

    aget v14, v11, v8

    sub-int/2addr v13, v14

    .line 67
    aget v9, v9, v5

    aget v11, v11, v5

    sub-int/2addr v9, v11

    .line 68
    :goto_c
    iget v11, v0, Lkd;->J:I

    and-int/2addr v11, v12

    if-ne v11, v12, :cond_15

    if-eqz v10, :cond_14

    goto :goto_d

    .line 69
    :cond_14
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_e

    :cond_15
    if-eqz v10, :cond_16

    .line 70
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v4

    :goto_d
    add-int/2addr v13, v4

    goto :goto_f

    :cond_16
    :goto_e
    sub-int/2addr v13, v4

    .line 71
    :goto_f
    iput v13, v6, Lmg;->B:I

    .line 72
    iput-boolean v5, v6, Lmg;->G:Z

    .line 73
    iput-boolean v5, v6, Lmg;->F:Z

    .line 74
    invoke-virtual {v6, v9}, Lmg;->b(I)V

    goto :goto_10

    .line 75
    :cond_17
    iget-boolean v4, v0, Lkd;->N:Z

    if-eqz v4, :cond_18

    .line 76
    iget v4, v0, Lkd;->P:I

    .line 77
    iput v4, v6, Lmg;->B:I

    .line 78
    :cond_18
    iget-boolean v4, v0, Lkd;->O:Z

    if-eqz v4, :cond_19

    .line 79
    iget v4, v0, Lkd;->Q:I

    invoke-virtual {v6, v4}, Lmg;->b(I)V

    .line 80
    :cond_19
    iget-object v4, v0, LBd;->w:Landroid/graphics/Rect;

    .line 81
    iput-object v4, v6, Lmg;->V:Landroid/graphics/Rect;

    .line 82
    :goto_10
    new-instance v4, Ljd;

    iget v5, v0, Lkd;->M:I

    invoke-direct {v4, v6, v1, v5}, Ljd;-><init>(Lpg;Lqd;I)V

    .line 83
    iget-object v5, v0, Lkd;->E:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {v6}, Lmg;->a()V

    .line 85
    iget-object v4, v6, Lmg;->y:Lpf;

    .line 86
    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-nez v3, :cond_1a

    .line 87
    iget-boolean v3, v0, Lkd;->S:Z

    if-eqz v3, :cond_1a

    .line 88
    iget-object v3, v1, Lqd;->I:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1a

    const v3, 0x7f0e0012

    .line 89
    invoke-virtual {v2, v3, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const v3, 0x1020016

    .line 90
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 91
    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 92
    iget-object v1, v1, Lqd;->I:Ljava/lang/CharSequence;

    .line 93
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 94
    invoke-virtual {v4, v2, v1, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 95
    invoke-virtual {v6}, Lmg;->a()V

    :cond_1a
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lkd;->S:Z

    return-void
.end method

.method public c()Z
    .locals 2

    .line 96
    iget-object v0, p0, Lkd;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lkd;->E:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljd;

    iget-object v0, v0, Ljd;->a:Lpg;

    invoke-virtual {v0}, Lmg;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .locals 4

    .line 1
    iget-object v0, p0, Lkd;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v1, p0, Lkd;->E:Ljava/util/List;

    new-array v2, v0, [Ljd;

    .line 3
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljd;

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 4
    aget-object v2, v1, v0

    .line 5
    iget-object v3, v2, Ljd;->a:Lpg;

    invoke-virtual {v3}, Lmg;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    iget-object v2, v2, Ljd;->a:Lpg;

    invoke-virtual {v2}, Lmg;->dismiss()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDismiss()V
    .locals 5

    .line 1
    iget-object v0, p0, Lkd;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    iget-object v3, p0, Lkd;->E:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljd;

    .line 3
    iget-object v4, v3, Ljd;->a:Lpg;

    invoke-virtual {v4}, Lmg;->c()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 4
    iget-object v0, v3, Ljd;->b:Lqd;

    invoke-virtual {v0, v1}, Lqd;->a(Z)V

    :cond_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lkd;->dismiss()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

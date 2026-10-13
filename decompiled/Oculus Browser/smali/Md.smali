.class public final LMd;
.super LBd;
.source "PG"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements LFd;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final A:Z

.field public final B:I

.field public final C:I

.field public final D:I

.field public final E:Lpg;

.field public final F:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public final G:Landroid/view/View$OnAttachStateChangeListener;

.field public H:Landroid/widget/PopupWindow$OnDismissListener;

.field public I:Landroid/view/View;

.field public J:Landroid/view/View;

.field public K:LEd;

.field public L:Landroid/view/ViewTreeObserver;

.field public M:Z

.field public N:Z

.field public O:I

.field public P:I

.field public Q:Z

.field public final x:Landroid/content/Context;

.field public final y:Lqd;

.field public final z:Lnd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lqd;Landroid/view/View;IIZ)V
    .locals 3

    .line 1
    invoke-direct {p0}, LBd;-><init>()V

    .line 2
    new-instance v0, LKd;

    invoke-direct {v0, p0}, LKd;-><init>(LMd;)V

    iput-object v0, p0, LMd;->F:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 3
    new-instance v0, LLd;

    invoke-direct {v0, p0}, LLd;-><init>(LMd;)V

    iput-object v0, p0, LMd;->G:Landroid/view/View$OnAttachStateChangeListener;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, LMd;->P:I

    .line 5
    iput-object p1, p0, LMd;->x:Landroid/content/Context;

    .line 6
    iput-object p2, p0, LMd;->y:Lqd;

    .line 7
    iput-boolean p6, p0, LMd;->A:Z

    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p6

    .line 9
    new-instance v0, Lnd;

    iget-boolean v1, p0, LMd;->A:Z

    const v2, 0x7f0e0013

    invoke-direct {v0, p2, p6, v1, v2}, Lnd;-><init>(Lqd;Landroid/view/LayoutInflater;ZI)V

    iput-object v0, p0, LMd;->z:Lnd;

    .line 10
    iput p4, p0, LMd;->C:I

    .line 11
    iput p5, p0, LMd;->D:I

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    .line 13
    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p5

    iget p5, p5, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p5, p5, 0x2

    const p6, 0x7f070017

    .line 14
    invoke-virtual {p4, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 15
    invoke-static {p5, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, LMd;->B:I

    .line 16
    iput-object p3, p0, LMd;->I:Landroid/view/View;

    .line 17
    new-instance p3, Lpg;

    iget-object p4, p0, LMd;->x:Landroid/content/Context;

    iget p5, p0, LMd;->C:I

    iget p6, p0, LMd;->D:I

    const/4 v0, 0x0

    invoke-direct {p3, p4, v0, p5, p6}, Lpg;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p3, p0, LMd;->E:Lpg;

    .line 18
    invoke-virtual {p2, p0, p1}, Lqd;->a(LFd;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 2
    invoke-virtual {p0}, LMd;->c()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    iget-boolean v0, p0, LMd;->M:Z

    if-nez v0, :cond_7

    iget-object v0, p0, LMd;->I:Landroid/view/View;

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 4
    :cond_1
    iput-object v0, p0, LMd;->J:Landroid/view/View;

    .line 5
    iget-object v0, p0, LMd;->E:Lpg;

    .line 6
    iget-object v0, v0, Lmg;->X:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 7
    iget-object v0, p0, LMd;->E:Lpg;

    .line 8
    iput-object p0, v0, Lmg;->O:Landroid/widget/AdapterView$OnItemClickListener;

    .line 9
    invoke-virtual {v0, v2}, Lmg;->a(Z)V

    .line 10
    iget-object v0, p0, LMd;->J:Landroid/view/View;

    .line 11
    iget-object v3, p0, LMd;->L:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 12
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iput-object v4, p0, LMd;->L:Landroid/view/ViewTreeObserver;

    if-eqz v3, :cond_3

    .line 13
    iget-object v3, p0, LMd;->F:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v4, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 14
    :cond_3
    iget-object v3, p0, LMd;->G:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 15
    iget-object v3, p0, LMd;->E:Lpg;

    .line 16
    iput-object v0, v3, Lmg;->N:Landroid/view/View;

    .line 17
    iget v0, p0, LMd;->P:I

    .line 18
    iput v0, v3, Lmg;->H:I

    .line 19
    iget-boolean v0, p0, LMd;->N:Z

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 20
    iget-object v0, p0, LMd;->z:Lnd;

    iget-object v4, p0, LMd;->x:Landroid/content/Context;

    iget v5, p0, LMd;->B:I

    invoke-static {v0, v3, v4, v5}, LBd;->a(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, LMd;->O:I

    .line 21
    iput-boolean v2, p0, LMd;->N:Z

    .line 22
    :cond_4
    iget-object v0, p0, LMd;->E:Lpg;

    iget v4, p0, LMd;->O:I

    invoke-virtual {v0, v4}, Lmg;->a(I)V

    .line 23
    iget-object v0, p0, LMd;->E:Lpg;

    const/4 v4, 0x2

    .line 24
    iget-object v0, v0, Lmg;->X:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 25
    iget-object v0, p0, LMd;->E:Lpg;

    .line 26
    iget-object v4, p0, LBd;->w:Landroid/graphics/Rect;

    .line 27
    iput-object v4, v0, Lmg;->V:Landroid/graphics/Rect;

    .line 28
    invoke-virtual {v0}, Lmg;->a()V

    .line 29
    iget-object v0, p0, LMd;->E:Lpg;

    .line 30
    iget-object v0, v0, Lmg;->y:Lpf;

    .line 31
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 32
    iget-boolean v4, p0, LMd;->Q:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, LMd;->y:Lqd;

    .line 33
    iget-object v4, v4, Lqd;->I:Ljava/lang/CharSequence;

    if-eqz v4, :cond_6

    .line 34
    iget-object v4, p0, LMd;->x:Landroid/content/Context;

    .line 35
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0e0012

    invoke-virtual {v4, v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v5, 0x1020016

    .line 36
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_5

    .line 37
    iget-object v6, p0, LMd;->y:Lqd;

    .line 38
    iget-object v6, v6, Lqd;->I:Ljava/lang/CharSequence;

    .line 39
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    :cond_5
    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 41
    invoke-virtual {v0, v4, v3, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 42
    :cond_6
    iget-object v0, p0, LMd;->E:Lpg;

    iget-object v1, p0, LMd;->z:Lnd;

    invoke-virtual {v0, v1}, Lmg;->a(Landroid/widget/ListAdapter;)V

    .line 43
    iget-object v0, p0, LMd;->E:Lpg;

    invoke-virtual {v0}, Lmg;->a()V

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_8

    return-void

    .line 44
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(I)V
    .locals 0

    .line 1
    iput p1, p0, LMd;->P:I

    return-void
.end method

.method public a(LEd;)V
    .locals 0

    .line 48
    iput-object p1, p0, LMd;->K:LEd;

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .line 77
    iput-object p1, p0, LMd;->I:Landroid/view/View;

    return-void
.end method

.method public a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 78
    iput-object p1, p0, LMd;->H:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public a(Lqd;)V
    .locals 0

    return-void
.end method

.method public a(Lqd;Z)V
    .locals 1

    .line 73
    iget-object v0, p0, LMd;->y:Lqd;

    if-eq p1, v0, :cond_0

    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, LMd;->dismiss()V

    .line 75
    iget-object v0, p0, LMd;->K:LEd;

    if-eqz v0, :cond_1

    .line 76
    invoke-interface {v0, p1, p2}, LEd;->a(Lqd;Z)V

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, LMd;->N:Z

    .line 46
    iget-object p1, p0, LMd;->z:Lnd;

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p1}, Lnd;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public a(LNd;)Z
    .locals 9

    .line 49
    invoke-virtual {p1}, Lqd;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 50
    new-instance v0, LDd;

    iget-object v3, p0, LMd;->x:Landroid/content/Context;

    iget-object v5, p0, LMd;->J:Landroid/view/View;

    iget-boolean v6, p0, LMd;->A:Z

    iget v7, p0, LMd;->C:I

    iget v8, p0, LMd;->D:I

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, LDd;-><init>(Landroid/content/Context;Lqd;Landroid/view/View;ZII)V

    .line 51
    iget-object v2, p0, LMd;->K:LEd;

    invoke-virtual {v0, v2}, LDd;->a(LEd;)V

    .line 52
    invoke-static {p1}, LBd;->b(Lqd;)Z

    move-result v2

    .line 53
    iput-boolean v2, v0, LDd;->h:Z

    .line 54
    iget-object v3, v0, LDd;->j:LBd;

    if-eqz v3, :cond_0

    .line 55
    invoke-virtual {v3, v2}, LBd;->b(Z)V

    .line 56
    :cond_0
    iget-object v2, p0, LMd;->H:Landroid/widget/PopupWindow$OnDismissListener;

    .line 57
    iput-object v2, v0, LDd;->k:Landroid/widget/PopupWindow$OnDismissListener;

    const/4 v2, 0x0

    .line 58
    iput-object v2, p0, LMd;->H:Landroid/widget/PopupWindow$OnDismissListener;

    .line 59
    iget-object v2, p0, LMd;->y:Lqd;

    invoke-virtual {v2, v1}, Lqd;->a(Z)V

    .line 60
    iget-object v2, p0, LMd;->E:Lpg;

    .line 61
    iget v3, v2, Lmg;->B:I

    .line 62
    iget-boolean v4, v2, Lmg;->E:Z

    if-nez v4, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 63
    :cond_1
    iget v2, v2, Lmg;->C:I

    .line 64
    :goto_0
    iget v4, p0, LMd;->P:I

    iget-object v5, p0, LMd;->I:Landroid/view/View;

    .line 65
    invoke-static {v5}, LA7;->i(Landroid/view/View;)I

    move-result v5

    .line 66
    invoke-static {v4, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v4, v4, 0x7

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 67
    iget-object v4, p0, LMd;->I:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 68
    :cond_2
    invoke-virtual {v0}, LDd;->b()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    goto :goto_1

    .line 69
    :cond_3
    iget-object v4, v0, LDd;->f:Landroid/view/View;

    if-nez v4, :cond_4

    const/4 v0, 0x0

    goto :goto_2

    .line 70
    :cond_4
    invoke-virtual {v0, v3, v2, v5, v5}, LDd;->a(IIZZ)V

    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_6

    .line 71
    iget-object v0, p0, LMd;->K:LEd;

    if-eqz v0, :cond_5

    .line 72
    invoke-interface {v0, p1}, LEd;->a(Lqd;)Z

    :cond_5
    return v5

    :cond_6
    return v1
.end method

.method public b()Landroid/widget/ListView;
    .locals 1

    .line 3
    iget-object v0, p0, LMd;->E:Lpg;

    .line 4
    iget-object v0, v0, Lmg;->y:Lpf;

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .line 5
    iget-object v0, p0, LMd;->E:Lpg;

    .line 6
    iput p1, v0, Lmg;->B:I

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, LMd;->z:Lnd;

    .line 2
    iput-boolean p1, v0, Lnd;->y:Z

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 2
    iget-object v0, p0, LMd;->E:Lpg;

    .line 3
    iput p1, v0, Lmg;->C:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Lmg;->E:Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, LMd;->Q:Z

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LMd;->M:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LMd;->E:Lpg;

    invoke-virtual {v0}, Lmg;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .locals 1

    .line 1
    invoke-virtual {p0}, LMd;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LMd;->E:Lpg;

    invoke-virtual {v0}, Lmg;->dismiss()V

    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, LMd;->M:Z

    .line 2
    iget-object v1, p0, LMd;->y:Lqd;

    .line 3
    invoke-virtual {v1, v0}, Lqd;->a(Z)V

    .line 4
    iget-object v0, p0, LMd;->L:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LMd;->J:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, LMd;->L:Landroid/view/ViewTreeObserver;

    .line 6
    :cond_0
    iget-object v0, p0, LMd;->L:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, LMd;->F:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, LMd;->L:Landroid/view/ViewTreeObserver;

    .line 8
    :cond_1
    iget-object v0, p0, LMd;->J:Landroid/view/View;

    iget-object v1, p0, LMd;->G:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 9
    iget-object v0, p0, LMd;->H:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_2

    .line 10
    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

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
    invoke-virtual {p0}, LMd;->dismiss()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

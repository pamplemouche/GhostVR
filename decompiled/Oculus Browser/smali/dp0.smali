.class public final Ldp0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic w:Lep0;


# direct methods
.method public synthetic constructor <init>(Lep0;LYo0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldp0;->w:Lep0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7

    .line 1
    iget-object p1, p0, Ldp0;->w:Lep0;

    iget-object p1, p1, Lep0;->B:LPq0;

    check-cast p1, Lar0;

    .line 2
    iget-object v0, p1, Lar0;->y:Landroid/widget/ListView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {p3}, LDO0;->b(Landroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    .line 5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x13

    if-eq v3, v4, :cond_2

    .line 6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isNumLockOn()Z

    move-result v3

    if-nez v3, :cond_3

    .line 7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x98

    if-ne v3, v4, :cond_3

    :cond_2
    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v3, 0x1

    :goto_4
    if-eqz v0, :cond_6

    .line 8
    iget-object v4, p1, Lar0;->x:Lmr0;

    invoke-virtual {v4}, Lmr0;->d()I

    move-result v4

    if-lez v4, :cond_6

    if-eqz v3, :cond_6

    .line 9
    iget-object v4, p1, Lar0;->x:Lmr0;

    .line 10
    iput-boolean v1, v4, Lmr0;->W:Z

    :cond_6
    if-nez v3, :cond_8

    .line 11
    invoke-static {p3}, LDO0;->c(Landroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 12
    invoke-static {p3}, LDO0;->a(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v3, 0x1

    :goto_6
    if-eqz v0, :cond_9

    if-eqz v3, :cond_9

    .line 13
    iget-object v0, p1, Lar0;->y:Landroid/widget/ListView;

    invoke-virtual {v0, p2, p3}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_7
    const/4 p1, 0x1

    goto :goto_8

    .line 14
    :cond_9
    invoke-static {p3}, LDO0;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p1, Lar0;->w:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    .line 15
    iget-object p1, p1, Lar0;->x:Lmr0;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    .line 16
    iget-object v0, p1, Lmr0;->x:Lbr0;

    invoke-interface {v0}, Lbr0;->b()V

    .line 17
    iget-object v0, p1, Lmr0;->y:LOp0;

    check-cast v0, LMp0;

    invoke-virtual {v0}, LMp0;->a()Ljava/lang/String;

    move-result-object v0

    .line 18
    iget-boolean v5, p1, Lmr0;->J:Z

    if-eqz v5, :cond_a

    .line 19
    invoke-virtual {p1, v0, v3, v4}, Lmr0;->a(Ljava/lang/String;J)V

    goto :goto_7

    .line 20
    :cond_a
    iget-object v5, p1, Lmr0;->B:Ljava/util/List;

    new-instance v6, Lfr0;

    invoke-direct {v6, p1, v0, v3, v4}, Lfr0;-><init>(Lmr0;Ljava/lang/String;J)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_b
    const/4 p1, 0x0

    :goto_8
    if-eqz p1, :cond_c

    return v2

    :cond_c
    const/4 p1, 0x4

    if-ne p2, p1, :cond_e

    .line 21
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_d

    .line 22
    iget-object p1, p0, Ldp0;->w:Lep0;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object p1

    invoke-virtual {p1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    return v2

    .line 23
    :cond_d
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_11

    .line 24
    iget-object p1, p0, Ldp0;->w:Lep0;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 25
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_11

    .line 26
    iget-object p1, p0, Ldp0;->w:Lep0;

    invoke-virtual {p1}, Lep0;->f()V

    return v2

    :cond_e
    const/16 p1, 0x6f

    if-ne p2, p1, :cond_11

    .line 27
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_11

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_11

    .line 28
    iget-object p1, p0, Ldp0;->w:Lep0;

    .line 29
    iget-boolean p2, p1, Lep0;->L:Z

    if-nez p2, :cond_f

    .line 30
    invoke-virtual {p1}, Lep0;->d()V

    goto :goto_a

    .line 31
    :cond_f
    iget-object p2, p1, Lep0;->C:LSJ0;

    invoke-interface {p2}, LSJ0;->e()Ljava/lang/String;

    move-result-object p2

    .line 32
    iget-object p3, p1, Lep0;->C:LSJ0;

    invoke-interface {p3}, LSJ0;->a()Z

    move-result p3

    invoke-static {p2, p3}, Lul0;->a(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 33
    iget-object p2, p1, Lep0;->A:LMp0;

    sget-object p3, LNp0;->h:LNp0;

    const/4 v0, 0x2

    invoke-virtual {p2, p3, v0, v1}, LMp0;->a(LNp0;II)Z

    .line 34
    invoke-virtual {p1}, Lep0;->t()V

    goto :goto_9

    .line 35
    :cond_10
    iget-object p2, p1, Lep0;->C:LSJ0;

    invoke-interface {p2}, LSJ0;->m()LNp0;

    move-result-object p2

    invoke-virtual {p1, p2, v1, v1}, Lep0;->a(LNp0;II)Z

    .line 36
    :goto_9
    invoke-virtual {p1}, Lep0;->b()V

    :goto_a
    return v2

    :cond_11
    return v1
.end method

.class public Lar0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LPq0;


# instance fields
.field public final w:Landroid/view/ViewGroup;

.field public x:Lmr0;

.field public y:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lbr0;Lor0;LOp0;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lar0;->w:Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    new-instance v6, Lle1;

    sget-object v0, Ltr0;->e:[LUd1;

    invoke-direct {v6, v0}, Lle1;-><init>([LUd1;)V

    .line 5
    sget-object v0, Ltr0;->b:Lke1;

    invoke-virtual {v6, v0, p3}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 6
    sget-object p3, Ltr0;->a:Lhe1;

    const/4 v0, 0x0

    invoke-virtual {v6, p3, v0}, Lle1;->a(Lhe1;Z)V

    .line 7
    new-instance p3, LQd1;

    invoke-direct {p3}, LQd1;-><init>()V

    .line 8
    sget-object v0, Ltr0;->c:Lke1;

    invoke-virtual {v6, v0, p3}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 9
    new-instance v4, LZq0;

    invoke-direct {v4, p0, p1, p3}, LZq0;-><init>(Lar0;Landroid/content/Context;LQd1;)V

    .line 10
    new-instance p3, LQq0;

    invoke-direct {p3, p0}, LQq0;-><init>(Lar0;)V

    .line 11
    iget-object v0, v4, LZq0;->b:Lvr0;

    if-eqz v0, :cond_0

    .line 12
    invoke-interface {p3, v0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, v4, LZq0;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :goto_0
    sget-object v2, Ltr0;->a:Lhe1;

    sget-object v5, LRq0;->a:Lne1;

    .line 15
    new-instance v0, LJd1;

    new-instance v3, LHd1;

    invoke-direct {v3, v2}, LHd1;-><init>(Lhe1;)V

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, LJd1;-><init>(Lqe1;Ljava/lang/Object;LId1;LAc1;Lne1;)V

    .line 16
    new-instance p3, Lmr0;

    invoke-direct {p3, p1, p2, p4, v6}, Lmr0;-><init>(Landroid/content/Context;Lbr0;LOp0;Lle1;)V

    iput-object p3, p0, Lar0;->x:Lmr0;

    .line 17
    invoke-virtual {p0}, Lar0;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 30
    iget-object v0, p0, Lar0;->x:Lmr0;

    iget-object v1, p0, Lar0;->w:Landroid/view/ViewGroup;

    invoke-static {v1}, LA7;->i(Landroid/view/View;)I

    move-result v1

    .line 31
    iget v2, v0, Lmr0;->b0:I

    if-ne v2, v1, :cond_0

    goto :goto_1

    .line 32
    :cond_0
    iput v1, v0, Lmr0;->b0:I

    const/4 v2, 0x0

    .line 33
    :goto_0
    iget-object v3, v0, Lmr0;->A:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 34
    iget-object v3, v0, Lmr0;->A:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llr0;

    iget-object v3, v3, Llr0;->c:Lle1;

    .line 35
    sget-object v4, Lsr0;->b:Lje1;

    invoke-virtual {v3, v4, v1}, Lle1;->a(Lje1;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    :cond_1
    iget-object v1, v0, Lmr0;->A:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lmr0;->h()V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    iget-object p2, p0, Lar0;->x:Lmr0;

    invoke-virtual {p2, p1}, Lmr0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lar0;->x:Lmr0;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lmr0;->L:J

    const/4 v3, 0x1

    .line 3
    iput v3, v0, Lmr0;->M:I

    .line 4
    iget-boolean v3, v0, Lmr0;->J:Z

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v0}, Lmr0;->j()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v3, v0, Lmr0;->B:Ljava/util/List;

    new-instance v4, Ldr0;

    invoke-direct {v4, v0}, Ldr0;-><init>(Lmr0;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    iget-boolean v3, v0, Lmr0;->J:Z

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lmr0;->i()V

    .line 8
    :cond_2
    iput v2, v0, Lmr0;->M:I

    .line 9
    iput-boolean v2, v0, Lmr0;->O:Z

    const-wide/16 v3, -0x1

    .line 10
    iput-wide v3, v0, Lmr0;->N:J

    .line 11
    invoke-virtual {v0}, Lmr0;->f()V

    .line 12
    :goto_0
    iget-object v3, v0, Lmr0;->E:Ljs0;

    if-eqz v3, :cond_4

    if-eqz p1, :cond_3

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Ljs0;->C:J

    goto :goto_1

    .line 14
    :cond_3
    iput-object v1, v3, Ljs0;->A:Ljava/lang/String;

    .line 15
    iput-object v1, v3, Ljs0;->B:Ljava/lang/String;

    .line 16
    iput-boolean v2, v3, Ljs0;->x:Z

    .line 17
    iput-object v1, v3, Ljs0;->y:Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;

    .line 18
    iput-boolean v2, v3, Ljs0;->E:Z

    .line 19
    iput-boolean v2, v3, Ljs0;->F:Z

    .line 20
    :goto_1
    iput-boolean p1, v3, Ljs0;->D:Z

    .line 21
    :cond_4
    iget-object v2, v0, Lmr0;->F:Lzr0;

    if-eqz v2, :cond_8

    if-nez p1, :cond_5

    .line 22
    iget-object v2, v2, Lzr0;->C:LIe0;

    if-eqz v2, :cond_5

    .line 23
    invoke-virtual {v2}, LIe0;->a()V

    .line 24
    :cond_5
    iget-object v2, v0, Lmr0;->D:LSr0;

    if-eqz v2, :cond_7

    .line 25
    iget-object v0, v0, Lmr0;->G:Lns0;

    .line 26
    iget-object v0, v0, Lns0;->z:LIe0;

    if-eqz v0, :cond_6

    if-nez p1, :cond_6

    invoke-virtual {v0}, LIe0;->a()V

    :cond_6
    return-void

    .line 27
    :cond_7
    throw v1

    .line 28
    :cond_8
    throw v1

    .line 29
    :cond_9
    throw v1
.end method

.method public b(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lar0;->x:Lmr0;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput p1, v0, Lmr0;->M:I

    .line 3
    invoke-virtual {v0}, Lmr0;->k()V

    return-void
.end method

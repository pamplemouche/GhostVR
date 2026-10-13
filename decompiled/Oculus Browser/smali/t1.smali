.class public Lt1;
.super Ls3;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls3;-><init>()V

    return-void
.end method

.method public static a(LE1;)Z
    .locals 1

    .line 60
    iget-object v0, p0, LE1;->A:Ljava/util/ArrayList;

    .line 61
    invoke-static {v0}, Ls3;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, LE1;->C:Ljava/util/ArrayList;

    .line 63
    invoke-static {v0}, Ls3;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object p0, p0, LE1;->D:Ljava/util/ArrayList;

    .line 65
    invoke-static {p0}, Ls3;->a(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 15
    check-cast p1, LE1;

    .line 16
    check-cast p2, LE1;

    .line 17
    check-cast p3, LE1;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 18
    new-instance v0, LM1;

    invoke-direct {v0}, LM1;-><init>()V

    .line 19
    invoke-virtual {v0, p1}, LM1;->a(LE1;)LM1;

    .line 20
    invoke-virtual {v0, p2}, LM1;->a(LE1;)LM1;

    const/4 p1, 0x1

    .line 21
    invoke-virtual {v0, p1}, LM1;->b(I)LM1;

    move-object p1, v0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move-object p1, p2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p3, :cond_4

    .line 22
    new-instance p2, LM1;

    invoke-direct {p2}, LM1;-><init>()V

    if-eqz p1, :cond_3

    .line 23
    invoke-virtual {p2, p1}, LM1;->a(LE1;)LM1;

    .line 24
    :cond_3
    invoke-virtual {p2, p3}, LM1;->a(LE1;)LM1;

    return-object p2

    :cond_4
    return-object p1
.end method

.method public a(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 2

    .line 25
    check-cast p2, LE1;

    .line 26
    sget-object v0, LI1;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, LA7;->u(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 27
    sget-object v0, LI1;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_0

    .line 28
    sget-object p2, LI1;->a:LE1;

    .line 29
    :cond_0
    invoke-virtual {p2}, LE1;->clone()LE1;

    move-result-object p2

    .line 30
    invoke-static {}, LI1;->a()LJ6;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LE1;

    .line 33
    invoke-virtual {v1, p1}, LE1;->c(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    .line 34
    invoke-virtual {p2, p1, v0}, LE1;->a(Landroid/view/ViewGroup;Z)V

    :cond_2
    const v0, 0x7f0b04b4

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx1;

    const/4 v1, 0x0

    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz p2, :cond_3

    .line 37
    new-instance v0, LH1;

    invoke-direct {v0, p2, p1}, LH1;-><init>(LE1;Landroid/view/ViewGroup;)V

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 39
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_3
    return-void
.end method

.method public a(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 58
    check-cast p1, LE1;

    .line 59
    new-instance v0, Ls1;

    invoke-direct {v0, p0, p2}, Ls1;-><init>(Lt1;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, LE1;->a(LC1;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 56
    check-cast p1, LE1;

    .line 57
    invoke-virtual {p1, p2}, LE1;->a(Landroid/view/View;)LE1;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 1

    .line 13
    check-cast p1, LE1;

    .line 14
    new-instance v0, Lq1;

    invoke-direct {v0, p0, p2, p3}, Lq1;-><init>(Lt1;Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, LE1;->a(LD1;)LE1;

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 10

    .line 40
    move-object v0, p1

    check-cast v0, LE1;

    .line 41
    new-instance v9, Lr1;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lr1;-><init>(Lt1;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v9}, LE1;->a(LD1;)LE1;

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 3

    .line 2
    check-cast p1, LE1;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    instance-of v0, p1, LM1;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, LM1;

    .line 5
    iget-object v0, p1, LM1;->e0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 6
    invoke-virtual {p1, v1}, LM1;->a(I)LE1;

    move-result-object v2

    .line 7
    invoke-virtual {p0, v2, p2}, Lt1;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p1}, Lt1;->a(LE1;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p1, LE1;->B:Ljava/util/ArrayList;

    .line 10
    invoke-static {v0}, Ls3;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 12
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, LE1;->a(Landroid/view/View;)LE1;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    .line 42
    check-cast p1, LE1;

    .line 43
    instance-of v0, p1, LM1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 44
    check-cast p1, LM1;

    .line 45
    iget-object v0, p1, LM1;->e0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 46
    invoke-virtual {p1, v1}, LM1;->a(I)LE1;

    move-result-object v2

    .line 47
    invoke-virtual {p0, v2, p2, p3}, Lt1;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {p1}, Lt1;->a(LE1;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 49
    iget-object v0, p1, LE1;->B:Ljava/util/ArrayList;

    .line 50
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 51
    invoke-interface {v0, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 53
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, LE1;->a(Landroid/view/View;)LE1;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 54
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    :goto_2
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_3

    .line 55
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, LE1;->d(Landroid/view/View;)LE1;

    goto :goto_2

    :cond_3
    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, LE1;

    return p1
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    check-cast p1, LE1;

    invoke-virtual {p1}, LE1;->clone()LE1;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 11
    new-instance v0, LM1;

    invoke-direct {v0}, LM1;-><init>()V

    if-eqz p1, :cond_0

    .line 12
    check-cast p1, LE1;

    invoke-virtual {v0, p1}, LM1;->a(LE1;)LM1;

    :cond_0
    if-eqz p2, :cond_1

    .line 13
    check-cast p2, LE1;

    invoke-virtual {v0, p2}, LM1;->a(LE1;)LM1;

    :cond_1
    if-eqz p3, :cond_2

    .line 14
    check-cast p3, LE1;

    invoke-virtual {v0, p3}, LM1;->a(LE1;)LM1;

    :cond_2
    return-object v0
.end method

.method public b(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 21
    check-cast p1, LE1;

    .line 22
    invoke-virtual {p1, p2}, LE1;->d(Landroid/view/View;)LE1;

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4

    .line 2
    check-cast p1, LM1;

    .line 3
    iget-object v0, p1, LE1;->B:Ljava/util/ArrayList;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 7
    invoke-static {v0, v3}, Ls3;->a(Ljava/util/List;Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p0, p1, p3}, Lt1;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    return-void
.end method

.method public b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    .line 15
    check-cast p1, LM1;

    if-eqz p1, :cond_0

    .line 16
    iget-object v0, p1, LE1;->B:Ljava/util/ArrayList;

    .line 17
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 18
    iget-object v0, p1, LE1;->B:Ljava/util/ArrayList;

    .line 19
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lt1;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance v0, LM1;

    invoke-direct {v0}, LM1;-><init>()V

    .line 2
    check-cast p1, LE1;

    invoke-virtual {v0, p1}, LM1;->a(LE1;)LM1;

    return-object v0
.end method

.method public c(Ljava/lang/Object;Landroid/view/View;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 3
    check-cast p1, LE1;

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 5
    invoke-virtual {p0, p2, v0}, Ls3;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 6
    new-instance p2, Lp1;

    invoke-direct {p2, p0, v0}, Lp1;-><init>(Lt1;Landroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, LE1;->a(LC1;)V

    :cond_0
    return-void
.end method

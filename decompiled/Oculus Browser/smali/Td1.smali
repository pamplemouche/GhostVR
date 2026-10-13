.class public LTd1;
.super Landroid/widget/BaseAdapter;
.source "PG"


# instance fields
.field public final w:LQd1;

.field public final x:Landroid/util/SparseArray;

.field public final y:LMd1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LTd1;

    return-void
.end method

.method public constructor <init>(LQd1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, LTd1;->x:Landroid/util/SparseArray;

    .line 3
    iput-object p1, p0, LTd1;->w:LQd1;

    .line 4
    new-instance p1, LSd1;

    invoke-direct {p1, p0}, LSd1;-><init>(LTd1;)V

    iput-object p1, p0, LTd1;->y:LMd1;

    .line 5
    iget-object v0, p0, LTd1;->w:LQd1;

    .line 6
    iget-object v0, v0, LOd1;->w:LWT;

    invoke-virtual {v0, p1}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(ILRd1;Lne1;)V
    .locals 2

    .line 1
    iget-object v0, p0, LTd1;->x:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, LTd1;->w:LQd1;

    invoke-virtual {v0}, LLd1;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, LTd1;->w:LQd1;

    .line 2
    iget-object v0, v0, LLd1;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, LTd1;->w:LQd1;

    .line 2
    iget-object v0, v0, LLd1;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, LPd1;

    iget p1, p1, LPd1;->a:I

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const p3, 0x7f0b04ec

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loe1;

    .line 3
    invoke-virtual {v0}, Loe1;->a()V

    :cond_0
    const/4 v0, 0x0

    const v1, 0x7f0b04ed

    const v2, 0x7f0b04ef

    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p2, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 5
    invoke-virtual {p2, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 6
    iget-object v4, p0, LTd1;->w:LQd1;

    .line 7
    iget-object v4, v4, LLd1;->x:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 8
    check-cast v4, LPd1;

    iget v4, v4, LPd1;->a:I

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lle1;

    goto :goto_1

    .line 10
    :cond_2
    :goto_0
    iget-object p2, p0, LTd1;->w:LQd1;

    .line 11
    iget-object p2, p2, LLd1;->x:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 12
    check-cast p2, LPd1;

    iget p2, p2, LPd1;->a:I

    .line 13
    iget-object v3, p0, LTd1;->x:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, LRd1;

    invoke-interface {v3}, LRd1;->a()Landroid/view/View;

    move-result-object v3

    .line 14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, v2, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object p2, v3

    .line 15
    :goto_1
    iget-object v2, p0, LTd1;->w:LQd1;

    .line 16
    iget-object v2, v2, LLd1;->x:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 17
    check-cast v2, LPd1;

    iget-object v2, v2, LPd1;->b:Lle1;

    .line 18
    iget-object v3, p0, LTd1;->x:Landroid/util/SparseArray;

    iget-object v4, p0, LTd1;->w:LQd1;

    .line 19
    iget-object v4, v4, LLd1;->x:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 20
    check-cast p1, LPd1;

    iget p1, p1, LPd1;->a:I

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lne1;

    .line 21
    new-instance v3, Loe1;

    const/4 v4, 0x0

    invoke-direct {v3, v2, p2, p1, v4}, Loe1;-><init>(Lqe1;Ljava/lang/Object;Lne1;Z)V

    .line 22
    invoke-virtual {p2, p3, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 23
    invoke-virtual {p2, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 24
    invoke-virtual {v2}, Lle1;->a()Ljava/util/Collection;

    move-result-object p3

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    iget-object v3, v2, Lle1;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 27
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LUd1;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 28
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LUd1;

    if-eqz v0, :cond_7

    .line 29
    iget-object v5, v2, Lle1;->b:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v0, Lle1;->b:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_4

    .line 30
    :cond_4
    instance-of v5, v3, Lke1;

    if-eqz v5, :cond_5

    move-object v5, v3

    check-cast v5, Lke1;

    .line 31
    iget-boolean v5, v5, Lke1;->b:Z

    if-eqz v5, :cond_5

    goto :goto_4

    .line 32
    :cond_5
    iget-object v5, v2, Lle1;->b:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v0, Lle1;->b:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 33
    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_8

    goto :goto_3

    .line 34
    :cond_7
    invoke-interface {p3, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_3

    .line 35
    :cond_8
    invoke-interface {p1, v2, p2, v3}, Lne1;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 36
    :cond_9
    invoke-virtual {p2}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 2

    .line 1
    iget-object v0, p0, LTd1;->x:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

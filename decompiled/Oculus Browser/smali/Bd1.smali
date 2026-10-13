.class public LBd1;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/util/SparseArray;

.field public final b:Landroid/util/SparseArray;

.field public final c:Ljava/util/Set;

.field public final d:LAd1;

.field public e:LAd1;

.field public f:I

.field public g:Z

.field public final h:LWT;

.field public final i:Ljava/util/Map;


# direct methods
.method public constructor <init>(LAd1;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, LBd1;->a:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, LBd1;->b:Landroid/util/SparseArray;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LBd1;->c:Ljava/util/Set;

    .line 5
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, LBd1;->h:LWT;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LBd1;->i:Ljava/util/Map;

    .line 7
    iput-object p1, p0, LBd1;->d:LAd1;

    .line 8
    iget-object v0, p0, LBd1;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    iget-object p1, p0, LBd1;->i:Ljava/util/Map;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Laf1;

    new-instance v1, Lwd1;

    invoke-direct {v1, p0}, Lwd1;-><init>(LBd1;)V

    invoke-direct {v0, v1}, Laf1;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p1, p0, LBd1;->i:Ljava/util/Map;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Laf1;

    new-instance v1, Lxd1;

    invoke-direct {v1, p0}, Lxd1;-><init>(LBd1;)V

    invoke-direct {v0, v1}, Laf1;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 29
    :goto_0
    iget-object v2, p0, LBd1;->b:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/16 v3, 0x8

    if-ge v1, v2, :cond_2

    .line 30
    iget-object v2, p0, LBd1;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 31
    iget-object v4, p0, LBd1;->b:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    goto :goto_2

    .line 32
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 33
    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lle1;

    .line 34
    sget-object v5, LEd1;->a:Lfe1;

    .line 35
    invoke-virtual {v4, v5}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LDd1;

    .line 36
    invoke-interface {v5, v4, v3}, LDd1;->a(Lle1;I)V

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {p0}, LBd1;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, LBd1;->e:LAd1;

    .line 38
    iget-object v0, v0, LAd1;->b:Lle1;

    .line 39
    invoke-virtual {p0, v0, v3}, LBd1;->a(Lle1;I)V

    .line 40
    :cond_3
    iget-object v0, p0, LBd1;->h:LWT;

    invoke-virtual {v0}, LWT;->clear()V

    return-void
.end method

.method public final a(I)V
    .locals 2

    .line 41
    iget-object v0, p0, LBd1;->i:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laf1;

    invoke-virtual {v0}, Laf1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 42
    :cond_0
    iget-object v0, p0, LBd1;->c:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {p0}, LBd1;->b()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, LBd1;->c()V

    :cond_1
    return-void
.end method

.method public a(Lle1;I)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 11
    :cond_0
    iget-object v0, p0, LBd1;->e:LAd1;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 12
    iget-object v0, v0, LAd1;->b:Lle1;

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p0}, LBd1;->b()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 14
    :cond_2
    iget-boolean v0, p0, LBd1;->g:Z

    if-eqz v0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, LBd1;->g:Z

    .line 16
    sget-object v0, LEd1;->a:Lfe1;

    invoke-virtual {p1, v0}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDd1;

    invoke-interface {v0, p1, p2}, LDd1;->a(Lle1;I)V

    .line 17
    iget-object p2, p0, LBd1;->h:LWT;

    invoke-virtual {p2}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzd1;

    invoke-interface {v0, p1}, Lzd1;->a(Lle1;)V

    goto :goto_0

    .line 18
    :cond_4
    iget-object p1, p0, LBd1;->e:LAd1;

    const/4 p2, 0x0

    invoke-static {p1, p2, p2}, LAd1;->a(LAd1;Lle1;Lorg/chromium/base/Callback;)V

    .line 19
    iput-object p2, p0, LBd1;->e:LAd1;

    .line 20
    iput-boolean v1, p0, LBd1;->g:Z

    .line 21
    invoke-virtual {p0}, LBd1;->c()V

    return-void

    :cond_5
    :goto_1
    const/4 v0, 0x0

    .line 22
    :goto_2
    iget-object v2, p0, LBd1;->b:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 23
    iget-object v2, p0, LBd1;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    .line 24
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 25
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_6

    .line 26
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lle1;

    sget-object v1, LEd1;->a:Lfe1;

    .line 27
    invoke-virtual {v0, v1}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDd1;

    .line 28
    invoke-interface {v0, p1, p2}, LDd1;->a(Lle1;I)V

    return-void

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    return-void
.end method

.method public a(Lle1;IZ)V
    .locals 3

    .line 1
    invoke-static {}, LwT;->c()LwT;

    move-result-object v0

    const-string v1, "enable-screenshot-ui-mode"

    invoke-virtual {v0, v1}, LwT;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, LBd1;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, LBd1;->b:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v0, v1

    .line 4
    :cond_1
    iget-object v1, p0, LBd1;->c:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, LBd1;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, LBd1;->f:I

    if-gt v1, p2, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {p0}, LBd1;->b()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p0}, LBd1;->d()V

    .line 6
    :cond_3
    iput p2, p0, LBd1;->f:I

    .line 7
    iget-object p3, p0, LBd1;->a:Landroid/util/SparseArray;

    iget-object v0, p0, LBd1;->d:LAd1;

    invoke-virtual {p3, p2, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LAd1;

    iput-object p2, p0, LBd1;->e:LAd1;

    .line 8
    new-instance p3, Lyd1;

    invoke-direct {p3, p0, p1}, Lyd1;-><init>(LBd1;Lle1;)V

    invoke-static {p2, p1, p3}, LAd1;->a(LAd1;Lle1;Lorg/chromium/base/Callback;)V

    .line 9
    iget-object p2, p0, LBd1;->h:LWT;

    invoke-virtual {p2}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lzd1;

    invoke-interface {p3, p1}, Lzd1;->b(Lle1;)V

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    :goto_1
    if-eqz p3, :cond_6

    const/4 p2, 0x0

    goto :goto_2

    .line 10
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    :goto_2
    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public b(I)I
    .locals 2

    .line 2
    iget-object v0, p0, LBd1;->c:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, LBd1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LBd1;->f:I

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, LBd1;->d()V

    .line 5
    invoke-virtual {p0}, LBd1;->c()V

    .line 6
    :cond_0
    iget-object v0, p0, LBd1;->i:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laf1;

    invoke-virtual {p1}, Laf1;->a()I

    move-result p1

    return p1
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, LBd1;->e:LAd1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, LBd1;->b:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2
    iget-object v2, p0, LBd1;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 3
    iget-object v3, p0, LBd1;->c:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v3, p0, LBd1;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 6
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lle1;

    .line 7
    invoke-virtual {p0, v1, v2, v0}, LBd1;->a(Lle1;IZ)V

    return-void

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, LBd1;->e:LAd1;

    .line 2
    iget-object v1, v0, LAd1;->b:Lle1;

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, v2, v2}, LAd1;->a(LAd1;Lle1;Lorg/chromium/base/Callback;)V

    .line 4
    iput-object v2, p0, LBd1;->e:LAd1;

    .line 5
    iget-object v0, p0, LBd1;->b:Landroid/util/SparseArray;

    iget v2, p0, LBd1;->f:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

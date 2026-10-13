.class public LJd1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpe1;


# instance fields
.field public final a:Lqe1;

.field public final b:Ljava/lang/Object;

.field public final c:LId1;

.field public final d:LAc1;

.field public final e:Lne1;

.field public f:Z

.field public g:Ljava/lang/Object;

.field public final h:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lqe1;Ljava/lang/Object;LId1;LAc1;Lne1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LJd1;->h:Ljava/util/Set;

    .line 3
    iput-object p1, p0, LJd1;->a:Lqe1;

    .line 4
    iput-object p2, p0, LJd1;->b:Ljava/lang/Object;

    .line 5
    iput-object p3, p0, LJd1;->c:LId1;

    .line 6
    iput-object p4, p0, LJd1;->d:LAc1;

    .line 7
    iput-object p5, p0, LJd1;->e:Lne1;

    .line 8
    invoke-virtual {p1}, Lqe1;->a()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 9
    iget-object p1, p0, LJd1;->d:LAc1;

    new-instance p2, LGd1;

    invoke-direct {p2, p0}, LGd1;-><init>(LJd1;)V

    check-cast p1, LZq0;

    .line 10
    iget-object p3, p1, LZq0;->b:Lvr0;

    if-eqz p3, :cond_0

    .line 11
    invoke-interface {p2, p3}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p1, LZq0;->a:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :goto_0
    iget-object p1, p0, LJd1;->a:Lqe1;

    .line 14
    iget-object p1, p1, Lqe1;->a:LWT;

    invoke-virtual {p1, p0}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-object v0, p0, LJd1;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2
    iget-object v3, p0, LJd1;->b:Ljava/lang/Object;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v3, p0, LJd1;->e:Lne1;

    iget-object v4, p0, LJd1;->a:Lqe1;

    iget-object v5, p0, LJd1;->g:Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v2}, Lne1;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 4
    iget-object v0, p0, LJd1;->e:Lne1;

    iget-object v1, p0, LJd1;->a:Lqe1;

    iget-object v2, p0, LJd1;->g:Ljava/lang/Object;

    iget-object v3, p0, LJd1;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lne1;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    :cond_2
    iget-object v0, p0, LJd1;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public a(Lqe1;Ljava/lang/Object;)V
    .locals 6

    .line 6
    iget-object p1, p0, LJd1;->h:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, LJd1;->c:LId1;

    iget-object v0, p0, LJd1;->a:Lqe1;

    check-cast p1, LHd1;

    .line 8
    iget-object p1, p1, LHd1;->a:Lhe1;

    check-cast v0, Lle1;

    .line 9
    invoke-virtual {v0, p1}, Lle1;->a(Lce1;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 10
    iget-object p1, p0, LJd1;->b:Ljava/lang/Object;

    if-eq p2, p1, :cond_0

    return-void

    .line 11
    :cond_0
    iget-object p1, p0, LJd1;->g:Ljava/lang/Object;

    if-nez p1, :cond_3

    .line 12
    iget-boolean p1, p0, LJd1;->f:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, LJd1;->f:Z

    .line 14
    iget-object p2, p0, LJd1;->d:LAc1;

    check-cast p2, LZq0;

    .line 15
    iget-object v0, p2, LZq0;->e:Lar0;

    .line 16
    iget-object v0, v0, Lar0;->w:Landroid/view/ViewGroup;

    .line 17
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b02f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 18
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 19
    invoke-static {}, LqU;->a()LqU;

    move-result-object v1

    .line 20
    :try_start_0
    new-instance v2, Lrr0;

    iget-object v3, p2, LZq0;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Lrr0;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-virtual {v1}, LqU;->close()V

    const/16 v1, 0x8

    .line 22
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 23
    new-instance v1, LTd1;

    iget-object v3, p2, LZq0;->d:LQd1;

    invoke-direct {v1, v3}, LTd1;-><init>(LQd1;)V

    .line 24
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v3, 0x0

    .line 25
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 26
    new-instance v4, LSq0;

    invoke-direct {v4, p2}, LSq0;-><init>(LZq0;)V

    sget-object v5, LTq0;->a:Lne1;

    invoke-virtual {v1, v3, v4, v5}, LTd1;->a(ILRd1;Lne1;)V

    .line 27
    new-instance v4, LUq0;

    invoke-direct {v4, p2}, LUq0;-><init>(LZq0;)V

    sget-object v5, LVq0;->a:Lne1;

    invoke-virtual {v1, p1, v4, v5}, LTd1;->a(ILRd1;Lne1;)V

    const/4 p1, 0x2

    .line 28
    new-instance v4, LWq0;

    invoke-direct {v4, p2}, LWq0;-><init>(LZq0;)V

    new-instance v5, LAr0;

    invoke-direct {v5}, LAr0;-><init>()V

    invoke-virtual {v1, p1, v4, v5}, LTd1;->a(ILRd1;Lne1;)V

    const/4 p1, 0x3

    .line 29
    new-instance v4, LXq0;

    invoke-direct {v4, p2}, LXq0;-><init>(LZq0;)V

    sget-object v5, LYq0;->a:Lne1;

    invoke-virtual {v1, p1, v4, v5}, LTd1;->a(ILRd1;Lne1;)V

    .line 30
    new-instance p1, Lvr0;

    invoke-direct {p1, v0, v2}, Lvr0;-><init>(Landroid/view/ViewGroup;Lrr0;)V

    iput-object p1, p2, LZq0;->b:Lvr0;

    .line 31
    :goto_0
    iget-object p1, p2, LZq0;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v3, p1, :cond_2

    .line 32
    iget-object p1, p2, LZq0;->a:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/base/Callback;

    iget-object v0, p2, LZq0;->b:Lvr0;

    invoke-interface {p1, v0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 33
    iput-object p1, p2, LZq0;->a:Ljava/util/List;

    return-void

    :catchall_0
    move-exception p1

    .line 34
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    .line 35
    :try_start_2
    invoke-virtual {v1}, LqU;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    .line 36
    sget-object v1, LRB;->a:LLB;

    invoke-virtual {v1, p1, v0}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 37
    :goto_1
    throw p2

    .line 38
    :cond_3
    invoke-virtual {p0}, LJd1;->a()V

    return-void
.end method

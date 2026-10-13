.class public LTQ0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public A:Z

.field public final a:I

.field public b:Ljava/util/List;

.field public c:Ljava/util/List;

.field public d:Ljava/util/List;

.field public e:Ljava/util/HashMap;

.field public f:Ljava/util/HashMap;

.field public g:Ljava/util/Set;

.field public h:Ljava/util/List;

.field public i:Landroid/text/TextWatcher;

.field public j:LRQ0;

.field public k:LSQ0;

.field public l:Ljava/lang/CharSequence;

.field public m:Ljava/lang/CharSequence;

.field public n:Ljava/lang/CharSequence;

.field public o:Ljava/lang/CharSequence;

.field public p:Ljava/lang/CharSequence;

.field public q:Ljava/lang/CharSequence;

.field public r:Ljava/lang/CharSequence;

.field public s:Ljava/lang/CharSequence;

.field public t:Ljava/lang/CharSequence;

.field public u:Lorg/chromium/base/Callback;

.field public v:Ljava/lang/Runnable;

.field public w:I

.field public x:I

.field public y:I

.field public z:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LTQ0;->z:Z

    .line 3
    iput p1, p0, LTQ0;->a:I

    return-void
.end method

.method public static a(ILjava/lang/CharSequence;Ljava/util/Set;Landroid/text/TextWatcher;LRQ0;LSQ0;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)LTQ0;
    .locals 1

    .line 5
    new-instance v0, LTQ0;

    invoke-direct {v0, p0}, LTQ0;-><init>(I)V

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object p0, v0, LTQ0;->h:Ljava/util/List;

    .line 7
    iput-object p3, v0, LTQ0;->i:Landroid/text/TextWatcher;

    .line 8
    iput-object p4, v0, LTQ0;->j:LRQ0;

    .line 9
    iput-object p5, v0, LTQ0;->k:LSQ0;

    .line 10
    iput-object p7, v0, LTQ0;->m:Ljava/lang/CharSequence;

    .line 11
    iput-object p6, v0, LTQ0;->l:Ljava/lang/CharSequence;

    .line 12
    iput-object p1, v0, LTQ0;->p:Ljava/lang/CharSequence;

    .line 13
    iput-object p8, v0, LTQ0;->s:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/util/List;Ljava/lang/CharSequence;)LTQ0;
    .locals 2

    .line 1
    new-instance v0, LTQ0;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, LTQ0;-><init>(I)V

    .line 2
    iput-object p0, v0, LTQ0;->p:Ljava/lang/CharSequence;

    .line 3
    iput-object p2, v0, LTQ0;->t:Ljava/lang/CharSequence;

    .line 4
    invoke-virtual {v0, p1}, LTQ0;->a(Ljava/util/List;)V

    return-object v0
.end method

.method public static e()LTQ0;
    .locals 2

    .line 1
    new-instance v0, LTQ0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LTQ0;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3

    .line 15
    iput-object p1, p0, LTQ0;->d:Ljava/util/List;

    .line 16
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, LTQ0;->g:Ljava/util/Set;

    .line 17
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LTQ0;->e:Ljava/util/HashMap;

    .line 18
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LTQ0;->f:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 19
    :goto_0
    iget-object v0, p0, LTQ0;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 20
    iget-object v0, p0, LTQ0;->g:Ljava/util/Set;

    iget-object v1, p0, LTQ0;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LYy0;

    .line 21
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 22
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, LTQ0;->f:Ljava/util/HashMap;

    iget-object v1, p0, LTQ0;->d:Ljava/util/List;

    .line 24
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LYy0;

    .line 25
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    .line 26
    iget-object v2, p0, LTQ0;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LYy0;

    .line 27
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, LTQ0;->e:Ljava/util/HashMap;

    iget-object v1, p0, LTQ0;->d:Ljava/util/List;

    .line 30
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LYy0;

    .line 31
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 32
    iget-object v2, p0, LTQ0;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LYy0;

    .line 33
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    .line 34
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 2

    .line 14
    iget v0, p0, LTQ0;->a:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, LTQ0;->l:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 2

    .line 1
    iget v0, p0, LTQ0;->a:I

    if-ltz v0, :cond_0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 3

    .line 1
    iget-object v0, p0, LTQ0;->n:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, LTQ0;->n:Ljava/lang/CharSequence;

    iput-object v0, p0, LTQ0;->o:Ljava/lang/CharSequence;

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0}, LTQ0;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LTQ0;->s:Ljava/lang/CharSequence;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LTQ0;->s:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_2

    .line 5
    :cond_1
    iget-object v0, p0, LTQ0;->l:Ljava/lang/CharSequence;

    iput-object v0, p0, LTQ0;->o:Ljava/lang/CharSequence;

    return v1

    .line 6
    :cond_2
    iget-object v0, p0, LTQ0;->j:LRQ0;

    if-eqz v0, :cond_3

    iget-object v2, p0, LTQ0;->s:Ljava/lang/CharSequence;

    invoke-interface {v0, v2}, LRQ0;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    iget-object v0, p0, LTQ0;->m:Ljava/lang/CharSequence;

    iput-object v0, p0, LTQ0;->o:Ljava/lang/CharSequence;

    return v1

    :cond_3
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, LTQ0;->o:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    return v0
.end method

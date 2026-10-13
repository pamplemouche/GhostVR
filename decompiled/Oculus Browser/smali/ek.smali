.class public Lek;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LJs;

.field public b:J

.field public final c:Lok;

.field public d:Z

.field public e:Ljava/util/List;

.field public final f:Landroid/util/SparseIntArray;

.field public g:Landroid/util/LruCache;

.field public final h:Ljava/util/List;

.field public final i:Ljava/util/Deque;

.field public final j:Landroid/os/Handler;

.field public k:Ljava/util/TimerTask;

.field public l:LJm;

.field public m:LJm;

.field public n:LMm;

.field public o:LMm;

.field public p:Ldk;

.field public q:LUj;

.field public r:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lok;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lek;->r:Ljava/util/Set;

    .line 3
    new-instance v0, LJs;

    const-string v1, "MediaQueue"

    invoke-direct {v0, v1}, LJs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lek;->a:LJs;

    .line 4
    iput-object p1, p0, Lek;->c:Lok;

    const/4 p1, 0x1

    const/16 v0, 0x14

    .line 5
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 6
    invoke-static {}, LJj;->e()LJj;

    move-result-object p1

    invoke-virtual {p1}, LJj;->b()LTj;

    move-result-object p1

    invoke-virtual {p1}, LTj;->a()LOj;

    move-result-object p1

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lek;->e:Ljava/util/List;

    .line 8
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lek;->f:Landroid/util/SparseIntArray;

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lek;->h:Ljava/util/List;

    .line 10
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v1, p0, Lek;->i:Ljava/util/Deque;

    .line 11
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lek;->j:Landroid/os/Handler;

    .line 12
    new-instance v1, LNk;

    invoke-direct {v1, p0, v0}, LNk;-><init>(Lek;I)V

    iput-object v1, p0, Lek;->g:Landroid/util/LruCache;

    .line 13
    new-instance v0, LMk;

    invoke-direct {v0, p0}, LMk;-><init>(Lek;)V

    iput-object v0, p0, Lek;->k:Ljava/util/TimerTask;

    .line 14
    new-instance v0, Lbk;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbk;-><init>(Lek;LMk;)V

    iput-object v0, p0, Lek;->n:LMm;

    .line 15
    new-instance v0, Lak;

    invoke-direct {v0, p0, v1}, Lak;-><init>(Lek;LMk;)V

    iput-object v0, p0, Lek;->o:LMm;

    .line 16
    new-instance v0, Ldk;

    invoke-direct {v0, p0}, Ldk;-><init>(Lek;)V

    iput-object v0, p0, Lek;->p:Ldk;

    .line 17
    new-instance v0, Lck;

    invoke-direct {v0, p0, v1}, Lck;-><init>(Lek;LMk;)V

    iput-object v0, p0, Lek;->q:LUj;

    const-string v0, "Must be called from the main thread."

    .line 18
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    .line 19
    sget-object v0, LJj;->j:LJj;

    .line 20
    invoke-virtual {v0}, LJj;->b()LTj;

    move-result-object v0

    iget-object v1, p0, Lek;->q:LUj;

    const-class v2, LOj;

    .line 21
    invoke-virtual {v0, v1, v2}, LTj;->a(LUj;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p1}, LSj;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p1}, LOj;->e()Lok;

    move-result-object p1

    invoke-virtual {p0, p1}, Lek;->a(Lok;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lek;)V
    .locals 3

    .line 24
    iget-object v0, p0, Lek;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    const/4 v0, 0x0

    .line 25
    :goto_0
    iget-object v1, p0, Lek;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 26
    iget-object v1, p0, Lek;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 27
    iget-object v2, p0, Lek;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Lek;[I)V
    .locals 0

    .line 28
    iget-object p0, p0, Lek;->r:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LZj;

    const/4 p0, 0x0

    .line 29
    throw p0
.end method

.method public static b(Lok;)J
    .locals 4

    .line 17
    invoke-virtual {p0}, Lok;->d()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->w:Lcom/google/android/gms/cast/MediaInfo;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 19
    :cond_0
    iget v0, v0, Lcom/google/android/gms/cast/MediaInfo;->x:I

    .line 20
    :goto_0
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->A:I

    iget v2, p0, Lcom/google/android/gms/cast/MediaStatus;->B:I

    iget v3, p0, Lcom/google/android/gms/cast/MediaStatus;->H:I

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/gms/cast/MediaStatus;->b(IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 21
    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->x:J

    return-wide v0

    :cond_2
    :goto_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lek;->d()V

    .line 2
    iget-object v0, p0, Lek;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lek;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 4
    iget-object v0, p0, Lek;->g:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 5
    iget-object v0, p0, Lek;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object v0, p0, Lek;->j:Landroid/os/Handler;

    iget-object v1, p0, Lek;->k:Ljava/util/TimerTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lek;->i:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 8
    iget-object v0, p0, Lek;->m:LJm;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, LJm;->a()V

    .line 10
    iput-object v1, p0, Lek;->m:LJm;

    .line 11
    :cond_0
    iget-object v0, p0, Lek;->l:LJm;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, LJm;->a()V

    .line 13
    iput-object v1, p0, Lek;->l:LJm;

    .line 14
    :cond_1
    invoke-virtual {p0}, Lek;->f()V

    .line 15
    invoke-virtual {p0}, Lek;->e()V

    return-void
.end method

.method public final a(Lok;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 16
    iget-object v0, p0, Lek;->c:Lok;

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lek;->d:Z

    .line 18
    iget-object v0, p0, Lek;->p:Ldk;

    const-string v1, "Must be called from the main thread."

    .line 19
    invoke-static {v1}, Lxp;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 20
    iget-object v1, p1, Lok;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_1
    invoke-static {p1}, Lek;->b(Lok;)J

    move-result-wide v0

    .line 22
    iput-wide v0, p0, Lek;->b:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    .line 23
    invoke-virtual {p0}, Lek;->b()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 6

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    .line 2
    iget-boolean v1, p0, Lek;->d:Z

    if-eqz v1, :cond_6

    iget-wide v1, p0, Lek;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v1, p0, Lek;->m:LJm;

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v1}, LJm;->a()V

    .line 5
    iput-object v2, p0, Lek;->m:LJm;

    .line 6
    :cond_2
    iget-object v1, p0, Lek;->l:LJm;

    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {v1}, LJm;->a()V

    .line 8
    iput-object v2, p0, Lek;->l:LJm;

    .line 9
    :cond_3
    iget-object v1, p0, Lek;->c:Lok;

    if-eqz v1, :cond_5

    .line 10
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Lok;->s()Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x11

    .line 12
    invoke-static {v0, v2}, Lok;->a(ILjava/lang/String;)LJm;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_4
    new-instance v0, Ltk;

    iget-object v2, v1, Lok;->f:LHm;

    invoke-direct {v0, v1, v2}, Ltk;-><init>(Lok;LHm;)V

    invoke-virtual {v1, v0}, Lok;->a(Llk;)Llk;

    .line 14
    :goto_0
    iput-object v0, p0, Lek;->m:LJm;

    .line 15
    iget-object v1, p0, Lek;->o:LMm;

    invoke-virtual {v0, v1}, LJm;->a(LMm;)V

    return-void

    .line 16
    :cond_5
    throw v2

    :cond_6
    :goto_1
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lek;->c:Lok;

    iget-object v1, p0, Lek;->p:Ldk;

    if-eqz v0, :cond_1

    const-string v2, "Must be called from the main thread."

    .line 2
    invoke-static {v2}, Lxp;->a(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lok;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lek;->d:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 5
    throw v0
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lek;->r:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LZj;

    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lek;->r:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LZj;

    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lek;->r:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LZj;

    const/4 v0, 0x0

    .line 2
    throw v0
.end method

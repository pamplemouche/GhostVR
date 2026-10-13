.class public LwI0;
.super LrI0;
.source "PG"

# interfaces
.implements LfI0;


# instance fields
.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:LYI0;

.field public j:Z

.field public k:Z

.field public final l:LmI0;

.field public m:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

.field public n:Lorg/chromium/chrome/browser/tab/Tab;

.field public final o:LEI0;


# direct methods
.method public constructor <init>(Landroid/content/Context;LcI0;LGI0;ZZZ)V
    .locals 1

    .line 1
    invoke-direct {p0, p2, p6}, LrI0;-><init>(LcI0;Z)V

    .line 2
    new-instance p6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p6, p0, LwI0;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance p6, LEI0;

    invoke-direct {p6, p1}, LEI0;-><init>(Landroid/content/Context;)V

    iput-object p6, p0, LwI0;->o:LEI0;

    .line 4
    new-instance p1, LsI0;

    invoke-direct {p1, p0}, LsI0;-><init>(LwI0;)V

    .line 5
    iput-boolean p4, p0, LwI0;->j:Z

    .line 6
    iput-boolean p5, p0, LwI0;->k:Z

    .line 7
    new-instance p4, LYI0;

    invoke-direct {p4, p3, p0, p2, p1}, LYI0;-><init>(LGI0;LpI0;LcI0;LWI0;)V

    iput-object p4, p0, LwI0;->i:LYI0;

    .line 8
    new-instance p1, LnI0;

    invoke-direct {p1, p0}, LnI0;-><init>(LpI0;)V

    iput-object p1, p0, LwI0;->l:LmI0;

    return-void
.end method


# virtual methods
.method public a(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->h()I

    move-result v2

    if-ne v2, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 8
    :goto_0
    iget-object v3, p0, LwI0;->n:Lorg/chromium/chrome/browser/tab/Tab;

    if-eq v3, p1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isNativePage()Z

    move-result v3

    if-nez v3, :cond_1

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sput-wide v3, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->d:J

    .line 10
    sput p2, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->e:I

    .line 11
    sput-boolean v0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->f:Z

    .line 12
    sput-boolean v0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->g:Z

    .line 13
    :cond_1
    iget-object v3, p0, LwI0;->n:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v3, :cond_6

    if-eq v3, p1, :cond_6

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->w()Z

    move-result v3

    if-nez v3, :cond_6

    .line 14
    iget-object v3, p0, LwI0;->n:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->r()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, LwI0;->n:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->p()Z

    move-result v3

    if-nez v3, :cond_5

    .line 15
    iget-object v3, p0, LwI0;->n:Lorg/chromium/chrome/browser/tab/Tab;

    .line 16
    iget-boolean v3, v3, Lorg/chromium/chrome/browser/tab/Tab;->n:Z

    if-nez v3, :cond_4

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_4

    .line 17
    :cond_2
    iget-object v2, p0, LwI0;->n:Lorg/chromium/chrome/browser/tab/Tab;

    if-nez v2, :cond_3

    goto :goto_1

    .line 18
    :cond_3
    iget-object v3, p0, LwI0;->m:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    invoke-virtual {v3, v2}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->a(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 19
    :cond_4
    :goto_1
    iget-object v2, p0, LwI0;->n:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/tab/Tab;->b(I)V

    .line 20
    iget-object v0, p0, LwI0;->i:LYI0;

    iget-object v2, p0, LwI0;->n:Lorg/chromium/chrome/browser/tab/Tab;

    .line 21
    invoke-virtual {v0, v2}, LYI0;->a(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 22
    invoke-virtual {v0}, LYI0;->d()V

    :cond_5
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, LwI0;->n:Lorg/chromium/chrome/browser/tab/Tab;

    :cond_6
    if-nez p1, :cond_7

    .line 24
    invoke-super {p0}, LrI0;->g()V

    return-void

    .line 25
    :cond_7
    iget-object v0, p0, LwI0;->n:Lorg/chromium/chrome/browser/tab/Tab;

    if-ne v0, p1, :cond_8

    .line 26
    iget-boolean v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->x:Z

    if-nez v0, :cond_8

    .line 27
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->v()Z

    return-void

    .line 28
    :cond_8
    iput-object p1, p0, LwI0;->n:Lorg/chromium/chrome/browser/tab/Tab;

    if-eq p2, v1, :cond_a

    .line 29
    invoke-virtual {p1, p2}, Lorg/chromium/chrome/browser/tab/Tab;->d(I)V

    .line 30
    iget-object p2, p0, LwI0;->o:LEI0;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    .line 31
    iget-boolean p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->w:Z

    .line 32
    iget v2, p2, LEI0;->w:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_9

    if-eq v0, v2, :cond_9

    .line 33
    invoke-virtual {p2, v1}, LEI0;->a(I)V

    .line 34
    iput v3, p2, LEI0;->w:I

    :cond_9
    if-eqz p1, :cond_a

    .line 35
    iput v0, p2, LEI0;->w:I

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 37
    iput-wide v0, p2, LEI0;->x:J

    :cond_a
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, LrI0;->a()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    .line 2
    invoke-super {p0, p1}, LrI0;->a(Z)V

    .line 3
    invoke-virtual {p0}, LrI0;->a()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object p1

    if-eq v0, p1, :cond_0

    .line 4
    invoke-interface {p1}, LdI0;->index()I

    move-result v0

    const/4 v1, 0x3

    .line 5
    invoke-interface {p1, v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->b(II)V

    .line 6
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, LvI0;

    invoke-direct {v0, p0}, LvI0;-><init>(LwI0;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, LrI0;->a:Ljava/util/List;

    .line 2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, LrI0;->a:Ljava/util/List;

    .line 4
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->d()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g()V
    .locals 0

    .line 1
    invoke-super {p0}, LrI0;->g()V

    return-void
.end method

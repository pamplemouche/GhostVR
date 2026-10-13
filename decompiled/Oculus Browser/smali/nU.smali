.class public LnU;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field public final c:Ljava/util/List;

.field public d:Ljava/lang/Exception;

.field public final e:Ljava/util/List;

.field public final f:Ljava/lang/Thread;

.field public final g:Landroid/os/Handler;

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LnU;->a:I

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LnU;->c:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LnU;->e:Ljava/util/List;

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, LnU;->f:Ljava/lang/Thread;

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LnU;->g:Landroid/os/Handler;

    return-void
.end method

.method public static b(Ljava/lang/Object;)LnU;
    .locals 1

    .line 7
    new-instance v0, LnU;

    invoke-direct {v0}, LnU;-><init>()V

    .line 8
    invoke-virtual {v0, p0}, LnU;->a(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a(LlU;)LnU;
    .locals 2

    .line 5
    new-instance v0, LnU;

    invoke-direct {v0}, LnU;-><init>()V

    .line 6
    new-instance v1, LdU;

    invoke-direct {v1, v0, p1}, LdU;-><init>(LnU;LlU;)V

    invoke-virtual {p0, v1}, LnU;->c(Lorg/chromium/base/Callback;)V

    .line 7
    new-instance p1, LeU;

    invoke-direct {p1, v0}, LeU;-><init>(LnU;)V

    .line 8
    invoke-virtual {p0, p1}, LnU;->a(Lorg/chromium/base/Callback;)V

    return-object v0
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2

    const/4 v0, 0x2

    .line 14
    iput v0, p0, LnU;->a:I

    .line 15
    iput-object p1, p0, LnU;->d:Ljava/lang/Exception;

    .line 16
    iget-object v0, p0, LnU;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/base/Callback;

    .line 17
    invoke-virtual {p0, v1, p1}, LnU;->a(Lorg/chromium/base/Callback;Ljava/lang/Object;)V

    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, LnU;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    .line 9
    iput v0, p0, LnU;->a:I

    .line 10
    iput-object p1, p0, LnU;->b:Ljava/lang/Object;

    .line 11
    iget-object v0, p0, LnU;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/base/Callback;

    .line 12
    invoke-virtual {p0, v1, p1}, LnU;->a(Lorg/chromium/base/Callback;Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, LnU;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final a(Lorg/chromium/base/Callback;)V
    .locals 3

    .line 1
    iget v0, p0, LnU;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LnU;->d:Ljava/lang/Exception;

    .line 3
    iget-object v1, p0, LnU;->g:Landroid/os/Handler;

    new-instance v2, LhU;

    invoke-direct {v2, p1, v0}, LhU;-><init>(Lorg/chromium/base/Callback;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, LnU;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lorg/chromium/base/Callback;Ljava/lang/Object;)V
    .locals 2

    .line 19
    iget-object v0, p0, LnU;->g:Landroid/os/Handler;

    new-instance v1, LhU;

    invoke-direct {v1, p1, p2}, LhU;-><init>(Lorg/chromium/base/Callback;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Lorg/chromium/base/Callback;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, LnU;->h:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, LnU;->c(Lorg/chromium/base/Callback;)V

    return-void

    .line 3
    :cond_0
    sget-object v0, LcU;->a:Lorg/chromium/base/Callback;

    .line 4
    invoke-virtual {p0, p1}, LnU;->c(Lorg/chromium/base/Callback;)V

    .line 5
    invoke-virtual {p0, v0}, LnU;->a(Lorg/chromium/base/Callback;)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, LnU;->h:Z

    return-void
.end method

.method public final c(Lorg/chromium/base/Callback;)V
    .locals 3

    .line 1
    iget v0, p0, LnU;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LnU;->b:Ljava/lang/Object;

    .line 3
    iget-object v1, p0, LnU;->g:Landroid/os/Handler;

    new-instance v2, LhU;

    invoke-direct {v2, p1, v0}, LhU;-><init>(Lorg/chromium/base/Callback;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, LnU;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.class public Lfh0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LGg0;

.field public b:Z

.field public c:Z

.field public d:Ljava/util/List;

.field public e:Ljava/util/List;

.field public f:Ljava/lang/Boolean;

.field public g:Z

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>(LGg0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfh0;->a:LGg0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 20
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 21
    iget-boolean v0, p0, Lfh0;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfh0;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lfh0;->h:Z

    .line 23
    iget-object v0, p0, Lfh0;->a:LGg0;

    invoke-interface {v0}, LGg0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lfh0;->a:LGg0;

    invoke-interface {v0}, LGg0;->r()V

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 4

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-object v0, p0, Lfh0;->a:LGg0;

    .line 3
    invoke-interface {v0}, LGg0;->n()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, LEc0;->a(Landroid/content/Intent;Z)Z

    move-result v0

    .line 5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lfh0;->f:Ljava/lang/Boolean;

    .line 6
    new-instance v1, Ldh0;

    invoke-direct {v1, p0}, Ldh0;-><init>(Lfh0;)V

    .line 7
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, v1, Lxg0;->a:Z

    .line 9
    invoke-static {}, LHh0;->f()LHh0;

    move-result-object v0

    invoke-virtual {v0}, LHh0;->c()V

    .line 10
    invoke-static {}, LHY;->a()LHY;

    move-result-object v0

    .line 11
    new-instance v2, Lug0;

    invoke-direct {v2, v1}, Lug0;-><init>(Lxg0;)V

    .line 12
    iget-object v0, v0, LHY;->b:LWk0;

    .line 13
    iget-object v3, v0, LWk0;->b:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 14
    invoke-interface {v2, v3}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 15
    :cond_0
    new-instance v3, LVk0;

    invoke-direct {v3, v0, v2}, LVk0;-><init>(LWk0;Lorg/chromium/base/Callback;)V

    const-string v0, ""

    .line 16
    invoke-interface {v3, v0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 17
    :cond_1
    :goto_0
    iput-boolean p1, v1, Lxg0;->c:Z

    .line 18
    sget-object p1, Lsg0;->a:Ljava/util/concurrent/Executor;

    .line 19
    new-instance v0, Lrg0;

    invoke-direct {v0, v1}, Lrg0;-><init>(Lxg0;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lfh0;->a:LGg0;

    invoke-interface {v0}, LGg0;->e()V

    .line 2
    iget-object v0, p0, Lfh0;->d:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 4
    iget-object v3, p0, Lfh0;->a:LGg0;

    invoke-interface {v3, v2}, LGg0;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 5
    :cond_0
    iput-object v1, p0, Lfh0;->d:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lfh0;->e:Ljava/util/List;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 7
    :goto_1
    iget-object v2, p0, Lfh0;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 8
    iget-object v2, p0, Lfh0;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leh0;

    .line 9
    iget-object v3, p0, Lfh0;->a:LGg0;

    iget v4, v2, Leh0;->a:I

    iget v5, v2, Leh0;->b:I

    iget-object v2, v2, Leh0;->c:Landroid/content/Intent;

    invoke-interface {v3, v4, v5, v2}, LGg0;->a(IILandroid/content/Intent;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10
    :cond_2
    iput-object v1, p0, Lfh0;->e:Ljava/util/List;

    :cond_3
    return-void
.end method

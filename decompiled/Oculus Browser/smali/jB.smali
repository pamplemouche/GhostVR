.class public final LjB;
.super LiB;
.source "PG"


# instance fields
.field public final synthetic x:LiB;

.field public final synthetic y:LhB;


# direct methods
.method public constructor <init>(LhB;LHB;LiB;)V
    .locals 0

    iput-object p1, p0, LjB;->y:LhB;

    iput-object p3, p0, LjB;->x:LiB;

    invoke-direct {p0, p2}, LiB;-><init>(LHB;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-object v0, p0, LjB;->y:LhB;

    iget-object v1, p0, LjB;->x:LiB;

    .line 1
    iget-object v2, v0, LhB;->k:Landroid/os/IInterface;

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-nez v2, :cond_2

    iget-boolean v2, v0, LhB;->e:Z

    if-nez v2, :cond_2

    iget-object v2, v0, LhB;->b:LuB;

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "Initiate binding to the service."

    .line 2
    invoke-virtual {v2, v3, v6, v5}, LuB;->a(ILjava/lang/String;[Ljava/lang/Object;)I

    .line 3
    iget-object v2, v0, LhB;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LnB;

    invoke-direct {v1, v0, v4}, LnB;-><init>(LhB;B)V

    iput-object v1, v0, LhB;->j:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    iput-boolean v2, v0, LhB;->e:Z

    iget-object v5, v0, LhB;->a:Landroid/content/Context;

    iget-object v6, v0, LhB;->f:Landroid/content/Intent;

    invoke-virtual {v5, v6, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, LhB;->b:LuB;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v5, "Failed to bind to the service."

    .line 4
    invoke-virtual {v1, v3, v5, v2}, LuB;->a(ILjava/lang/String;[Ljava/lang/Object;)I

    .line 5
    iput-boolean v4, v0, LhB;->e:Z

    iget-object v1, v0, LhB;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LiB;

    .line 6
    iget-object v2, v2, LiB;->w:LHB;

    if-eqz v2, :cond_0

    .line 7
    new-instance v3, LWA;

    invoke-direct {v3}, LWA;-><init>()V

    .line 8
    iget-object v2, v2, LHB;->a:LKB;

    invoke-virtual {v2, v3}, LKB;->b(Ljava/lang/Exception;)Z

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, v0, LhB;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_2
    iget-boolean v2, v0, LhB;->e:Z

    if-eqz v2, :cond_3

    iget-object v2, v0, LhB;->b:LuB;

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Waiting to bind to the service."

    .line 10
    invoke-virtual {v2, v3, v5, v4}, LuB;->a(ILjava/lang/String;[Ljava/lang/Object;)I

    .line 11
    iget-object v0, v0, LhB;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, LiB;->run()V

    :cond_4
    :goto_1
    return-void
.end method

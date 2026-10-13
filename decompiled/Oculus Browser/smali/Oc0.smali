.class public LOc0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LQG0;


# instance fields
.field public final a:Laf1;

.field public final b:Landroid/os/Handler;

.field public final c:LrU;

.field public d:J


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;LrU;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LOc0;->b:Landroid/os/Handler;

    .line 3
    new-instance v0, Laf1;

    invoke-direct {v0, p1}, Laf1;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, LOc0;->a:Laf1;

    .line 4
    iput-object p2, p0, LOc0;->c:LrU;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, LOc0;->a:Laf1;

    .line 2
    iget-object v1, v0, Laf1;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Laf1;->b:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {p0}, LOc0;->c()V

    .line 4
    :cond_1
    iget-object v0, p0, LOc0;->a:Laf1;

    invoke-virtual {v0, p1}, Laf1;->a(I)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 5
    iget-object v0, p0, LOc0;->a:Laf1;

    invoke-virtual {v0}, Laf1;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, LOc0;->d()I

    move-result v0

    .line 2
    iget-object v1, p0, LOc0;->a:Laf1;

    invoke-virtual {v1, p1}, Laf1;->a(I)V

    return v0
.end method

.method public b()Z
    .locals 1

    .line 3
    iget-object v0, p0, LOc0;->c:LrU;

    invoke-interface {v0}, LrU;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final c()V
    .locals 7

    .line 1
    invoke-static {}, LwT;->c()LwT;

    move-result-object v0

    const-string v1, "disable-minimum-show-duration"

    invoke-virtual {v0, v1}, LwT;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, LOc0;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, LOc0;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object v4, p0, LOc0;->a:Laf1;

    invoke-virtual {v4}, Laf1;->a()I

    move-result v4

    .line 5
    iget-object v5, p0, LOc0;->b:Landroid/os/Handler;

    new-instance v6, LNc0;

    invoke-direct {v6, p0, v4}, LNc0;-><init>(LOc0;I)V

    sub-long/2addr v2, v0

    invoke-virtual {v5, v6, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public d()I
    .locals 2

    .line 1
    iget-object v0, p0, LOc0;->a:Laf1;

    invoke-virtual {v0}, Laf1;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LOc0;->d:J

    .line 2
    :cond_0
    iget-object v0, p0, LOc0;->a:Laf1;

    invoke-virtual {v0}, Laf1;->a()I

    move-result v0

    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, LOc0;->a:Laf1;

    invoke-virtual {v0}, Laf1;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LOc0;->d:J

    .line 2
    :cond_0
    invoke-virtual {p0}, LOc0;->c()V

    return-void
.end method

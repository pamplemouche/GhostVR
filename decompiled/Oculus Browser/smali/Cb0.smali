.class public abstract LCb0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LAb0;


# instance fields
.field public a:LBb0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    .line 2
    iget-object v0, p0, LCb0;->a:LBb0;

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, LBb0;

    invoke-direct {v0, p0, p1}, LBb0;-><init>(LCb0;Ljava/lang/Runnable;)V

    iput-object v0, p0, LCb0;->a:LBb0;

    .line 4
    sget-object p1, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p1}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    return-void
.end method

.method public final a()Z
    .locals 2

    .line 1
    iget-object v0, p0, LCb0;->a:LBb0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LkW;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

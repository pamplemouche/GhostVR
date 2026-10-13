.class public final synthetic LJZ;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LLZ;

.field public final x:Ljava/lang/String;


# direct methods
.method public constructor <init>(LLZ;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJZ;->w:LLZ;

    iput-object p2, p0, LJZ;->x:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, LJZ;->w:LLZ;

    iget-object v1, p0, LJZ;->x:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    .line 1
    sget-object v1, LZ01;->a:LFW;

    new-instance v2, LKZ;

    invoke-direct {v2, v0}, LKZ;-><init>(LLZ;)V

    invoke-static {v1, v2}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance v2, LHZ;

    iget-object v3, v0, LLZ;->b:Landroid/content/Context;

    iget-wide v4, v0, LLZ;->a:J

    invoke-direct {v2, v3, v4, v5, v1}, LHZ;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    sget-object v0, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 3
    invoke-virtual {v2, v0}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 4
    throw v0
.end method

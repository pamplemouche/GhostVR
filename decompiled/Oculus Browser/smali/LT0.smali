.class public abstract LLT0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final synthetic a:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;LFT0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LLT0;->a:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
.end method

.method public abstract a(Ljava/lang/Object;)V
.end method

.method public b()V
    .locals 2

    .line 1
    new-instance v0, LKT0;

    invoke-direct {v0, p0}, LKT0;-><init>(LLT0;)V

    .line 2
    sget-object v1, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    .line 3
    sget-boolean v1, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->d:Z

    if-eqz v1, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {v0}, LkW;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-virtual {p0, v0}, LLT0;->a(Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 6
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_1
    return-void
.end method

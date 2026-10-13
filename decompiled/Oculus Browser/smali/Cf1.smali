.class public final synthetic LCf1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LGf1;

.field public final x:Ljava/util/concurrent/Callable;

.field public final y:Lorg/chromium/base/Callback;


# direct methods
.method public constructor <init>(LGf1;Ljava/util/concurrent/Callable;Lorg/chromium/base/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LCf1;->w:LGf1;

    iput-object p2, p0, LCf1;->x:Ljava/util/concurrent/Callable;

    iput-object p3, p0, LCf1;->y:Lorg/chromium/base/Callback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, LCf1;->w:LGf1;

    iget-object v1, p0, LCf1;->x:Ljava/util/concurrent/Callable;

    iget-object v2, p0, LCf1;->y:Lorg/chromium/base/Callback;

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    .line 1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 2
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v3

    .line 3
    :goto_0
    iget-object v3, v0, LGf1;->c:LFW;

    new-instance v4, LDf1;

    invoke-direct {v4, v0, v2, v1}, LDf1;-><init>(LGf1;Lorg/chromium/base/Callback;Ljava/lang/Boolean;)V

    const-wide/16 v0, 0x0

    .line 4
    invoke-static {v3, v4, v0, v1}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 5
    throw v0
.end method

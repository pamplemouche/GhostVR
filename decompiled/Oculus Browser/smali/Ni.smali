.class public LNi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LRi;


# instance fields
.field public final synthetic a:LQi;


# direct methods
.method public constructor <init>(LQi;)V
    .locals 0

    .line 1
    iput-object p1, p0, LNi;->a:LQi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LUi;)V
    .locals 2

    .line 1
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, LMi;

    invoke-direct {v1, p0, p1}, LMi;-><init>(LNi;LUi;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

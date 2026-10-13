.class public LIY0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LQY0;


# direct methods
.method public constructor <init>(LQY0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LIY0;->w:LQY0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, LIY0;->w:LQY0;

    .line 2
    invoke-virtual {v0}, LQY0;->a()V

    .line 3
    :goto_0
    iget-object v1, v0, LQY0;->h:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LtY0;

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v1}, LtY0;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0, v1}, LQY0;->c(LtY0;)V

    goto :goto_0
.end method

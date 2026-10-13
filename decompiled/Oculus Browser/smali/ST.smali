.class public LST;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LQT;


# instance fields
.field public final a:Ljava/lang/Thread;

.field public final b:Landroid/os/Handler;

.field public c:Ljava/lang/Object;

.field public final d:LWT;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, LST;->a:Ljava/lang/Thread;

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LST;->b:Landroid/os/Handler;

    .line 4
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, LST;->d:LWT;

    return-void
.end method


# virtual methods
.method public a(Lorg/chromium/base/Callback;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, LST;->d:LWT;

    invoke-virtual {v0, p1}, LWT;->a(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, LST;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, LST;->b:Landroid/os/Handler;

    new-instance v2, LRT;

    invoke-direct {v2, p0, v0, p1}, LRT;-><init>(LST;Ljava/lang/Object;Lorg/chromium/base/Callback;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    :cond_0
    iget-object p1, p0, LST;->c:Ljava/lang/Object;

    return-object p1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 5
    iget-object v0, p0, LST;->c:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    return-void

    .line 6
    :cond_0
    iput-object p1, p0, LST;->c:Ljava/lang/Object;

    .line 7
    iget-object p1, p0, LST;->d:LWT;

    invoke-virtual {p1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/Callback;

    .line 8
    iget-object v1, p0, LST;->c:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, LST;->c:Ljava/lang/Object;

    return-object v0
.end method

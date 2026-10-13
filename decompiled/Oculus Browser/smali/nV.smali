.class public LnV;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LKV;


# instance fields
.field public final synthetic a:LKV;

.field public final synthetic b:LsV;


# direct methods
.method public constructor <init>(LsV;LKV;)V
    .locals 0

    .line 1
    iput-object p1, p0, LnV;->b:LsV;

    iput-object p2, p0, LnV;->a:LKV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, LnV;->a:LKV;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LnV;->b:LsV;

    .line 3
    iget-object v0, v0, LsV;->a:Landroid/os/Handler;

    .line 4
    new-instance v1, LjV;

    invoke-direct {v1, p0}, LjV;-><init>(LnV;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(LLV;)V
    .locals 4

    .line 5
    iget-object v0, p0, LnV;->a:LKV;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, LnV;->b:LsV;

    .line 7
    iget-object v0, v0, LsV;->a:Landroid/os/Handler;

    .line 8
    new-instance v1, LlV;

    invoke-direct {v1, p0, p1}, LlV;-><init>(LnV;LLV;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    :cond_0
    iget-object v0, p0, LnV;->b:LsV;

    .line 10
    iget-object v0, v0, LsV;->a:Landroid/os/Handler;

    .line 11
    new-instance v1, LmV;

    invoke-direct {v1, p0, p1}, LmV;-><init>(LnV;LLV;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public b(LLV;)V
    .locals 4

    .line 1
    iget-object v0, p0, LnV;->a:LKV;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LnV;->b:LsV;

    .line 3
    iget-object v0, v0, LsV;->a:Landroid/os/Handler;

    .line 4
    new-instance v1, LkV;

    invoke-direct {v1, p0, p1}, LkV;-><init>(LnV;LLV;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5
    :cond_0
    iget-object v0, p0, LnV;->b:LsV;

    .line 6
    iget-object v0, v0, LsV;->a:Landroid/os/Handler;

    .line 7
    new-instance v1, LmV;

    invoke-direct {v1, p0, p1}, LmV;-><init>(LnV;LLV;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

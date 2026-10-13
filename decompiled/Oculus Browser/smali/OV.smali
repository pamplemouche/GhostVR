.class public LOV;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LKV;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Z

.field public final synthetic c:LRV;


# direct methods
.method public constructor <init>(LRV;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, LOV;->c:LRV;

    iput-boolean p2, p0, LOV;->a:Z

    iput-boolean p3, p0, LOV;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(LLV;)V
    .locals 4

    .line 1
    iget-object p1, p0, LOV;->c:LRV;

    .line 2
    iget-object v0, p1, LRV;->g:LLV;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget v0, v0, LLV;->m:I

    :goto_0
    if-eqz v0, :cond_7

    .line 4
    iget-object v0, p1, LRV;->b:LQV;

    iget-object p1, p1, LRV;->g:LLV;

    check-cast v0, LWV0;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 5
    iget v2, p1, LLV;->m:I

    if-nez v2, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    sget-object v3, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->q:Ljava/util/Map;

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    if-nez v2, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    iget-object v2, v0, LWV0;->a:Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    .line 9
    iget-object v2, v2, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->b:LKV0;

    if-eqz v2, :cond_4

    .line 10
    iget-object v3, v2, LKV0;->w:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 11
    iget-object v3, v2, LKV0;->A:LLV;

    if-ne p1, v3, :cond_3

    .line 12
    iput-object v1, v2, LKV0;->A:LLV;

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {p1}, LLV;->k()V

    .line 14
    :cond_4
    :goto_1
    iget-object v1, v0, LWV0;->a:Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    .line 15
    iget-object v2, v1, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->a:LfW0;

    if-eqz v2, :cond_7

    .line 16
    invoke-virtual {v2, p1}, LfW0;->a(LLV;)I

    move-result v3

    .line 17
    iget-object v2, v2, LfW0;->y:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v3

    .line 18
    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->a(I)V

    .line 19
    iget-object v1, v0, LWV0;->a:Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    .line 20
    iget-object v1, v1, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->a:LfW0;

    .line 21
    invoke-virtual {v1, p1}, LfW0;->a(LLV;)I

    move-result p1

    .line 22
    iget-object v2, v1, LfW0;->y:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 23
    sget-boolean p1, LfW0;->C:Z

    if-eqz p1, :cond_5

    invoke-virtual {v1}, LfW0;->c()V

    .line 24
    :cond_5
    iget-object p1, v0, LWV0;->a:Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    .line 25
    iget-object p1, p1, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->b:LKV0;

    if-eqz p1, :cond_7

    .line 26
    invoke-virtual {p1}, LKV0;->a()V

    goto :goto_2

    .line 27
    :cond_6
    throw v1

    :cond_7
    :goto_2
    return-void
.end method

.method public b(LLV;)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "ChildProcLauncher"

    const-string v1, "ChildProcessConnection.start failed, trying again"

    .line 1
    invoke-static {v0, v1, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, LOV;->c:LRV;

    .line 3
    iget-object p1, p1, LRV;->a:Landroid/os/Handler;

    .line 4
    new-instance v0, LNV;

    invoke-direct {v0, p0}, LNV;-><init>(LOV;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

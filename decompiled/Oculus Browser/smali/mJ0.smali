.class public LmJ0;
.super LTH0;
.source "PG"


# instance fields
.field public final synthetic a:LpJ0;


# direct methods
.method public constructor <init>(LpJ0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LmJ0;->a:LpJ0;

    invoke-direct {p0}, LTH0;-><init>()V

    return-void
.end method


# virtual methods
.method public restoreCompleted()V
    .locals 5

    .line 1
    iget-object v0, p0, LmJ0;->a:LpJ0;

    .line 2
    iget v0, v0, LpJ0;->i:I

    const-string v1, "TabGroups.UserGroupCount"

    .line 3
    invoke-static {v1, v0}, LfV;->c(Ljava/lang/String;I)V

    .line 4
    iget-object v0, p0, LmJ0;->a:LpJ0;

    .line 5
    iget-object v0, v0, LgI0;->a:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 6
    invoke-static {v0}, LFI0;->a(LdI0;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v1, p0, LmJ0;->a:LpJ0;

    if-eqz v1, :cond_2

    .line 8
    iget v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->m:I

    .line 9
    iget-object v2, v1, LpJ0;->g:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v1, LpJ0;->g:Ljava/util/Map;

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LoJ0;

    invoke-virtual {v2}, LoJ0;->a()I

    move-result v2

    if-le v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    sget-object v2, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v3, LkJ0;

    invoke-direct {v3, v1, v0}, LkJ0;-><init>(LpJ0;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 12
    throw v0

    .line 13
    :cond_3
    :goto_1
    iget-object v0, p0, LmJ0;->a:LpJ0;

    .line 14
    iget-object v0, v0, LgI0;->b:LWT;

    invoke-virtual {v0, p0}, LWT;->b(Ljava/lang/Object;)Z

    return-void
.end method

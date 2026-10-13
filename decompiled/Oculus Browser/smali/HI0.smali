.class public final synthetic LHI0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LWI0;


# direct methods
.method public constructor <init>(LWI0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LHI0;->w:LWI0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LHI0;->w:LWI0;

    .line 1
    check-cast v0, LsI0;

    .line 2
    iget-object v0, v0, LsI0;->a:LwI0;

    .line 3
    iget-boolean v1, v0, LrI0;->e:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, LrI0;->e:Z

    .line 5
    iget-object v1, v0, LrI0;->d:LWT;

    invoke-virtual {v1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LxI0;

    invoke-interface {v2}, LxI0;->onTabStateInitialized()V

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    iget-object v1, v0, LwI0;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_3

    .line 7
    :cond_2
    invoke-virtual {v0, v2}, LrI0;->b(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    check-cast v0, LkI0;

    if-eqz v0, :cond_3

    .line 8
    iget-wide v1, v0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->b:J

    .line 9
    invoke-static {v1, v2, v0}, LJ/N;->MY_BqaOA(JLjava/lang/Object;)V

    .line 10
    iget-object v0, v0, LkI0;->p:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LlI0;

    invoke-interface {v1}, LlI0;->restoreCompleted()V

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.class public final synthetic LYy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LJx;


# instance fields
.field public final a:Liz;

.field public final b:I

.field public final c:LkJ;


# direct methods
.method public constructor <init>(Liz;ILkJ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LYy;->a:Liz;

    iput p2, p0, LYy;->b:I

    iput-object p3, p0, LYy;->c:LkJ;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 11

    iget-object v0, p0, LYy;->a:Liz;

    iget v1, p0, LYy;->b:I

    iget-object v5, p0, LYy;->c:LkJ;

    check-cast p1, Lsx;

    .line 1
    iget-object v2, v0, Liz;->j:LYw;

    invoke-virtual {v2}, LYw;->b()V

    .line 2
    iget-boolean v2, v0, Liz;->o:Z

    const/4 v8, 0x0

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {v0}, Liz;->a()LfQ;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v2, p1, Lsx;->b:Z

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {p1}, Lsx;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LfQ;

    .line 6
    iget-object v2, v0, Liz;->i:Lpx;

    .line 7
    invoke-interface {v2}, Lpx;->f()Lmx;

    move-result-object v2

    .line 8
    invoke-static {}, LNI;->n()LLI;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, LFF;->g()V

    .line 10
    iget-object v4, v3, LFF;->x:LTF;

    check-cast v4, LNI;

    if-eqz p1, :cond_1

    .line 11
    iput-object p1, v4, LNI;->B:Ljava/lang/Object;

    const/16 v6, 0x9

    .line 12
    iput v6, v4, LNI;->A:I

    .line 13
    invoke-virtual {v3}, LFF;->e()LTF;

    move-result-object v3

    check-cast v3, LNI;

    .line 14
    check-cast v2, LTz;

    .line 15
    iget-object v4, v2, LTz;->a:Ljava/util/List;

    new-instance v6, LWw;

    const-string v7, "ct"

    invoke-direct {v6, v7, v3}, LWw;-><init>(Ljava/lang/String;LNI;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v2}, LTz;->a()Lxw;

    goto :goto_0

    .line 17
    :cond_1
    throw v8

    .line 18
    :cond_2
    invoke-virtual {v0}, Liz;->a()LfQ;

    move-result-object p1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "FeedSessionManagerImpl"

    const-string v4, "TriggerRefresh didn\'t get a consistencyToken Back"

    .line 19
    invoke-static {v3, v4, v2}, Lhy;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    :goto_0
    iget-object v9, v0, Liz;->l:Lgx;

    .line 21
    sget-object v2, LkJ;->B:LkJ;

    const/4 v6, 0x0

    .line 22
    new-instance v10, Llw;

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v7}, Llw;-><init>(LeJ;Ljava/lang/String;LkJ;ZLkw;)V

    .line 23
    new-instance v2, Lgz;

    const-string v3, "triggerRefresh"

    invoke-direct {v2, v0, v10, v3, v8}, Lgz;-><init>(Liz;Llw;Ljava/lang/String;Lez;)V

    .line 24
    check-cast v9, LSy;

    invoke-virtual {v9, v1, p1, v2}, LSy;->a(ILfQ;LJx;)V

    return-void
.end method

.class public final LQk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LMs;


# instance fields
.field public final synthetic a:Lok;


# direct methods
.method public constructor <init>(Lok;)V
    .locals 0

    .line 1
    iput-object p1, p0, LQk;->a:Lok;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, LQk;->a:Lok;

    .line 2
    iget-object v0, v0, Lok;->g:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhk;

    .line 4
    check-cast v1, Lgs;

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2}, Lgs;->a(Z)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, LQk;->a:Lok;

    iget-object v0, v0, Lok;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgk;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 7
    throw v0

    :cond_2
    return-void
.end method

.method public final a([I)V
    .locals 2

    .line 8
    iget-object v0, p0, LQk;->a:Lok;

    iget-object v0, v0, Lok;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgk;

    .line 9
    invoke-virtual {v1, p1}, Lgk;->a([I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.class public final synthetic LiA;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LZz;


# direct methods
.method public constructor <init>(LZz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LiA;->w:LZz;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, LiA;->w:LZz;

    .line 1
    iget-object v1, v0, LZz;->d:Lry;

    const-string v2, "LocalActionGc"

    invoke-virtual {v1, v2}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, LZz;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    iget-object v3, v0, LZz;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LJI;

    .line 4
    iget-object v5, v0, LZz;->b:Ljava/util/List;

    .line 5
    iget-object v6, v4, LJI;->B:Ljava/lang/String;

    .line 6
    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    iget-object v3, v0, LZz;->e:Ljava/lang/String;

    .line 9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v5, LNw;

    invoke-direct {v5}, LNw;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LJI;

    .line 12
    invoke-virtual {v6}, LfF;->e()[B

    move-result-object v6

    .line 13
    new-instance v7, LLw;

    invoke-direct {v7, v6}, LLw;-><init>([B)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_2
    iget-object v5, v0, LZz;->c:LQw;

    .line 15
    new-instance v6, LJw;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v4, 0x0

    invoke-direct {v6, v3, v7, v4}, LJw;-><init>(Ljava/lang/String;Ljava/util/List;LIw;)V

    .line 16
    invoke-interface {v5, v6}, LQw;->a(LJw;)Lxw;

    move-result-object v3

    .line 17
    sget-object v4, Lxw;->b:Lxw;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "gcMutation"

    aput-object v4, v3, v5

    .line 18
    iget-object v0, v0, LZz;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {v1, v3}, Lny;->a([Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    new-array v0, v6, [Ljava/lang/Object;

    const-string v2, "gcMutation failed"

    aput-object v2, v0, v5

    .line 19
    invoke-virtual {v1, v0}, Lny;->a([Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

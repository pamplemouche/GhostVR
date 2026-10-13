.class public LqV;
.super LsV;
.source "PG"


# instance fields
.field public final h:Ljava/lang/Runnable;

.field public final i:[LLV;

.field public final j:Ljava/util/ArrayList;

.field public final k:Ljava/util/Queue;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;ZZZILnV;)V
    .locals 10

    move-object v8, p0

    move/from16 v9, p8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    .line 1
    invoke-direct/range {v0 .. v7}, LsV;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;ZZZLnV;)V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, v8, LqV;->k:Ljava/util/Queue;

    move-object v0, p2

    .line 3
    iput-object v0, v8, LqV;->h:Ljava/lang/Runnable;

    .line 4
    new-array v0, v9, [LLV;

    iput-object v0, v8, LqV;->i:[LLV;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v8, LqV;->j:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v9, :cond_0

    .line 6
    iget-object v1, v8, LqV;->j:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 20
    iget-object v0, p0, LqV;->i:[LLV;

    array-length v0, v0

    return v0
.end method

.method public a(Landroid/content/Context;Landroid/os/Bundle;)LLV;
    .locals 9

    .line 1
    iget-object v0, p0, LqV;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, LqV;->j:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3
    new-instance v4, Landroid/content/ComponentName;

    iget-object v2, p0, LsV;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, LsV;->c:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, LsV;->g:LoV;

    iget-boolean v5, p0, LsV;->d:Z

    iget-boolean v6, p0, LsV;->e:Z

    const/4 v8, 0x0

    .line 5
    check-cast v2, LpV;

    if-eqz v2, :cond_1

    .line 6
    new-instance v1, LLV;

    move-object v2, v1

    move-object v3, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v8}, LLV;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, LqV;->i:[LLV;

    aput-object v1, p1, v0

    return-object v1

    .line 8
    :cond_1
    throw v1
.end method

.method public a(LLV;)V
    .locals 2

    .line 9
    iget-object v0, p0, LqV;->i:[LLV;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "ChildConnAllocator"

    const-string v1, "Unable to find connection to free."

    .line 10
    invoke-static {v0, v1, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, LqV;->i:[LLV;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 12
    iget-object v0, p0, LqV;->j:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :goto_0
    iget-object p1, p0, LqV;->k:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 14
    :cond_1
    iget-object p1, p0, LqV;->k:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 15
    iget-object p1, p0, LqV;->k:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, LqV;->h:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 16
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 2

    .line 17
    iget-object v0, p0, LqV;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    .line 18
    iget-object v1, p0, LqV;->k:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 19
    iget-object p1, p0, LqV;->h:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

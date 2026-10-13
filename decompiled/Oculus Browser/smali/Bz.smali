.class public final synthetic LBz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LDz;

.field public final x:Lmx;

.field public final y:Lnx;


# direct methods
.method public constructor <init>(LDz;Lmx;Lnx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LBz;->w:LDz;

    iput-object p2, p0, LBz;->x:Lmx;

    iput-object p3, p0, LBz;->y:Lnx;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, LBz;->w:LDz;

    iget-object v1, p0, LBz;->x:Lmx;

    iget-object v2, p0, LBz;->y:Lnx;

    if-eqz v0, :cond_3

    .line 1
    check-cast v1, LTz;

    invoke-virtual {v1}, LTz;->a()Lxw;

    move-result-object v1

    .line 2
    iget v1, v1, Lxw;->a:I

    const/4 v3, 0x0

    const-string v4, "SessionManagerMutation"

    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    .line 3
    iget-object v1, v0, LDz;->k:LEz;

    .line 4
    iget v6, v1, LEz;->n:I

    add-int/2addr v6, v5

    iput v6, v1, LEz;->n:I

    new-array v1, v3, [Ljava/lang/Object;

    const-string v6, "contentMutation failed"

    .line 5
    invoke-static {v4, v6, v1}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object v1, v0, LDz;->g:Lxx;

    new-instance v6, LCz;

    invoke-direct {v6, v0}, LCz;-><init>(LDz;)V

    const-string v7, "CONTENT_MUTATION_FAILED"

    invoke-virtual {v1, v7, v6}, Lxx;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 7
    :cond_0
    check-cast v2, LUz;

    .line 8
    iget-object v1, v2, LUz;->b:LIx;

    iget-object v2, v2, LUz;->a:Ljava/util/Map;

    invoke-interface {v1, v2}, LIx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxw;

    .line 9
    iget v1, v1, Lxw;->a:I

    if-ne v1, v5, :cond_1

    .line 10
    iget-object v1, v0, LDz;->k:LEz;

    .line 11
    iget v2, v1, LEz;->o:I

    add-int/2addr v2, v5

    iput v2, v1, LEz;->o:I

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "semanticPropertiesMutation failed"

    .line 12
    invoke-static {v4, v2, v1}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    :cond_1
    iget-object v0, v0, LDz;->k:LEz;

    .line 14
    iget-object v0, v0, LEz;->c:Ljz;

    .line 15
    iget-object v1, v0, Ljz;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget v2, v0, Ljz;->d:I

    if-le v1, v2, :cond_2

    .line 16
    iget-object v1, v0, Ljz;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iput v1, v0, Ljz;->d:I

    .line 17
    :cond_2
    iget-object v0, v0, Ljz;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 18
    throw v0
.end method

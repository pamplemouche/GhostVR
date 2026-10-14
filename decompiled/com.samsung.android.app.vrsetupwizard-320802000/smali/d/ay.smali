.class public final Ld/ay;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ld/ap;

.field private b:Lb/h;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private c:Lb/ai;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld/l;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld/i;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/Executor;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Ld/ap;->a()Ld/ap;

    move-result-object v0

    invoke-direct {p0, v0}, Ld/ay;-><init>(Ld/ap;)V

    return-void
.end method

.method constructor <init>(Ld/ap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/ay;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/ay;->e:Ljava/util/List;

    iput-object p1, p0, Ld/ay;->a:Ld/ap;

    iget-object p1, p0, Ld/ay;->d:Ljava/util/List;

    new-instance v0, Ld/a;

    invoke-direct {v0}, Ld/a;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()Ld/aw;
    .locals 8

    iget-object v0, p0, Ld/ay;->c:Lb/ai;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ld/ay;->b:Lb/h;

    if-nez v0, :cond_0

    new-instance v0, Lb/ar;

    invoke-direct {v0}, Lb/ar;-><init>()V

    :cond_0
    move-object v2, v0

    iget-object v0, p0, Ld/ay;->f:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    iget-object v0, p0, Ld/ay;->a:Ld/ap;

    invoke-virtual {v0}, Ld/ap;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    :cond_1
    move-object v6, v0

    new-instance v5, Ljava/util/ArrayList;

    iget-object v0, p0, Ld/ay;->e:Ljava/util/List;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Ld/ay;->a:Ld/ap;

    invoke-virtual {v0, v6}, Ld/ap;->a(Ljava/util/concurrent/Executor;)Ld/i;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Ld/ay;->d:Ljava/util/List;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ld/aw;

    iget-object v3, p0, Ld/ay;->c:Lb/ai;

    iget-boolean v7, p0, Ld/ay;->g:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ld/aw;-><init>(Lb/h;Lb/ai;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Z)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Base URL required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lb/ai;)Ld/ay;
    .locals 3

    const-string v0, "baseUrl == null"

    invoke-static {p1, v0}, Ld/bb;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lb/ai;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Ld/ay;->c:Lb/ai;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "baseUrl must end in /: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lb/ar;)Ld/ay;
    .locals 1

    const-string v0, "client == null"

    invoke-static {p1, v0}, Ld/bb;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/h;

    invoke-virtual {p0, p1}, Ld/ay;->a(Lb/h;)Ld/ay;

    move-result-object p1

    return-object p1
.end method

.method public a(Lb/h;)Ld/ay;
    .locals 1

    const-string v0, "factory == null"

    invoke-static {p1, v0}, Ld/bb;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/h;

    iput-object p1, p0, Ld/ay;->b:Lb/h;

    return-object p0
.end method

.method public a(Ld/l;)Ld/ay;
    .locals 2

    iget-object v0, p0, Ld/ay;->d:Ljava/util/List;

    const-string v1, "factory == null"

    invoke-static {p1, v1}, Ld/bb;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Ljava/lang/String;)Ld/ay;
    .locals 3

    const-string v0, "baseUrl == null"

    invoke-static {p1, v0}, Ld/bb;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Lb/ai;->e(Ljava/lang/String;)Lb/ai;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Ld/ay;->a(Lb/ai;)Ld/ay;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class public Lcom/samsung/a/a/a/a/g/d/a;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/samsung/a/a/a/a/g/d/a;


# instance fields
.field private a:Lcom/samsung/a/a/a/a/g/d/a/a;

.field private b:Lcom/samsung/a/a/a/a/g/d/b/a;

.field private c:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;ZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    new-instance v0, Lcom/samsung/a/a/a/a/g/d/a/a;

    invoke-direct {v0, p1}, Lcom/samsung/a/a/a/a/g/d/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/a/a/a/a/g/d/a;->a:Lcom/samsung/a/a/a/a/g/d/a/a;

    :cond_0
    new-instance p1, Lcom/samsung/a/a/a/a/g/d/b/a;

    invoke-direct {p1, p3}, Lcom/samsung/a/a/a/a/g/d/b/a;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/a/a/a/a/g/d/a;->b:Lcom/samsung/a/a/a/a/g/d/b/a;

    iput-boolean p2, p0, Lcom/samsung/a/a/a/a/g/d/a;->c:Z

    return-void
.end method

.method private constructor <init>(Lcom/samsung/a/a/a/d;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/a/a/a/a/g/d/a/a;

    invoke-direct {v0, p1}, Lcom/samsung/a/a/a/a/g/d/a/a;-><init>(Lcom/samsung/a/a/a/d;)V

    iput-object v0, p0, Lcom/samsung/a/a/a/a/g/d/a;->a:Lcom/samsung/a/a/a/a/g/d/a/a;

    new-instance p1, Lcom/samsung/a/a/a/a/g/d/b/a;

    invoke-direct {p1, p2}, Lcom/samsung/a/a/a/a/g/d/b/a;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/a/a/a/a/g/d/a;->b:Lcom/samsung/a/a/a/a/g/d/b/a;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/a/a/a/a/g/d/a;->c:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/a/a/a/c;)Lcom/samsung/a/a/a/a/g/d/a;
    .locals 6

    sget-object v0, Lcom/samsung/a/a/a/a/g/d/a;->d:Lcom/samsung/a/a/a/a/g/d/a;

    if-nez v0, :cond_3

    const-class v0, Lcom/samsung/a/a/a/a/g/d/a;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/a/a/a/c;->m()I

    move-result v1

    sget-object v2, Lcom/samsung/a/a/a/a/b;->a:Lcom/samsung/a/a/a/a/e/b;

    invoke-virtual {v2}, Lcom/samsung/a/a/a/a/e/b;->c()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/samsung/a/a/a/a/j/d;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "lgt"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "rtb"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/a/a/a/c;->n()Lcom/samsung/a/a/a/d;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p0, Lcom/samsung/a/a/a/a/g/d/a;

    invoke-direct {p0, p1, v1}, Lcom/samsung/a/a/a/a/g/d/a;-><init>(Lcom/samsung/a/a/a/d;I)V

    sput-object p0, Lcom/samsung/a/a/a/a/g/d/a;->d:Lcom/samsung/a/a/a/a/g/d/a;

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/samsung/a/a/a/a/g/d/a;

    const/4 v2, 0x1

    invoke-direct {p1, p0, v2, v1}, Lcom/samsung/a/a/a/a/g/d/a;-><init>(Landroid/content/Context;ZI)V

    :goto_0
    sput-object p1, Lcom/samsung/a/a/a/a/g/d/a;->d:Lcom/samsung/a/a/a/a/g/d/a;

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/samsung/a/a/a/a/g/d/a;

    invoke-direct {p1, p0, v3, v1}, Lcom/samsung/a/a/a/a/g/d/a;-><init>(Landroid/content/Context;ZI)V

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/samsung/a/a/a/a/g/d/a;

    invoke-direct {p1, p0, v3, v1}, Lcom/samsung/a/a/a/a/g/d/a;-><init>(Landroid/content/Context;ZI)V

    goto :goto_0

    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_2
    sget-object p0, Lcom/samsung/a/a/a/a/g/d/a;->d:Lcom/samsung/a/a/a/a/g/d/a;

    return-object p0
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/d/a;->b:Lcom/samsung/a/a/a/a/g/d/b/a;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/g/d/b/a;->a()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/d/a;->b:Lcom/samsung/a/a/a/a/g/d/b/a;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/g/d/b/a;->a()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/a/a/a/a/g/f;

    iget-object v2, p0, Lcom/samsung/a/a/a/a/g/d/a;->a:Lcom/samsung/a/a/a/a/g/d/a/a;

    invoke-virtual {v2, v1}, Lcom/samsung/a/a/a/a/g/d/a/a;->a(Lcom/samsung/a/a/a/a/g/f;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/d/a;->b:Lcom/samsung/a/a/a/a/g/d/b/a;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/g/d/b/a;->a()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)Ljava/util/Queue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Queue<",
            "Lcom/samsung/a/a/a/a/g/f;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/a/a/a/a/g/d/a;->c:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/a/a/a/a/g/d/a;->b()V

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/a/a/a/a/g/d/a;->a:Lcom/samsung/a/a/a/a/g/d/a/a;

    invoke-virtual {p1}, Lcom/samsung/a/a/a/a/g/d/a/a;->a()Ljava/util/Queue;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/d/a;->a:Lcom/samsung/a/a/a/a/g/d/a/a;

    invoke-virtual {v0, p1}, Lcom/samsung/a/a/a/a/g/d/a/a;->a(I)Ljava/util/Queue;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/a/a/a/a/g/d/a;->b:Lcom/samsung/a/a/a/a/g/d/b/a;

    invoke-virtual {p1}, Lcom/samsung/a/a/a/a/g/d/b/a;->a()Ljava/util/Queue;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get log from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/a/a/a/a/g/d/a;->c:Z

    if-eqz v1, :cond_2

    const-string v1, "Database "

    goto :goto_1

    :cond_2
    const-string v1, "Queue "

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/a/a/a/a/j/a;->a(Ljava/lang/String;)V

    :cond_3
    return-object p1
.end method

.method public a(JLjava/lang/String;Lcom/samsung/a/a/a/a/g/c;)V
    .locals 1

    new-instance v0, Lcom/samsung/a/a/a/a/g/f;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/a/a/a/a/g/f;-><init>(JLjava/lang/String;Lcom/samsung/a/a/a/a/g/c;)V

    invoke-virtual {p0, v0}, Lcom/samsung/a/a/a/a/g/d/a;->a(Lcom/samsung/a/a/a/a/g/f;)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/samsung/a/a/a/a/g/d/a/a;

    invoke-direct {v0, p1}, Lcom/samsung/a/a/a/a/g/d/a/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/samsung/a/a/a/a/g/d/a;->a(Lcom/samsung/a/a/a/a/g/d/a/a;)V

    return-void
.end method

.method public a(Lcom/samsung/a/a/a/a/g/d/a/a;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/a/a/a/a/g/d/a;->c:Z

    iput-object p1, p0, Lcom/samsung/a/a/a/a/g/d/a;->a:Lcom/samsung/a/a/a/a/g/d/a/a;

    invoke-direct {p0}, Lcom/samsung/a/a/a/a/g/d/a;->d()V

    return-void
.end method

.method public a(Lcom/samsung/a/a/a/a/g/f;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/a/a/a/a/g/d/a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/d/a;->a:Lcom/samsung/a/a/a/a/g/d/a/a;

    invoke-virtual {v0, p1}, Lcom/samsung/a/a/a/a/g/d/a/a;->a(Lcom/samsung/a/a/a/a/g/f;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/d/a;->b:Lcom/samsung/a/a/a/a/g/d/b/a;

    invoke-virtual {v0, p1}, Lcom/samsung/a/a/a/a/g/d/b/a;->a(Lcom/samsung/a/a/a/a/g/f;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/samsung/a/a/a/d;)V
    .locals 1

    new-instance v0, Lcom/samsung/a/a/a/a/g/d/a/a;

    invoke-direct {v0, p1}, Lcom/samsung/a/a/a/a/g/d/a/a;-><init>(Lcom/samsung/a/a/a/d;)V

    invoke-virtual {p0, v0}, Lcom/samsung/a/a/a/a/g/d/a;->a(Lcom/samsung/a/a/a/a/g/d/a/a;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/a/a/a/a/g/d/a;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/d/a;->a:Lcom/samsung/a/a/a/a/g/d/a/a;

    invoke-virtual {v0, p1}, Lcom/samsung/a/a/a/a/g/d/a/a;->a(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/a/a/a/a/g/d/a;->c:Z

    return v0
.end method

.method public b()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/a/a/a/a/g/d/a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/d/a;->a:Lcom/samsung/a/a/a/a/g/d/a/a;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/samsung/a/a/a/a/j/e;->a(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/a/a/a/a/g/d/a/a;->a(J)V

    :cond_0
    return-void
.end method

.method public c()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lcom/samsung/a/a/a/a/g/f;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/a/a/a/a/g/d/a;->a(I)Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

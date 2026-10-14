.class Lb/a/e/p;
.super Lb/a/b;


# instance fields
.field final synthetic a:I

.field final synthetic c:Lc/f;

.field final synthetic d:I

.field final synthetic e:Z

.field final synthetic f:Lb/a/e/j;


# direct methods
.method varargs constructor <init>(Lb/a/e/j;Ljava/lang/String;[Ljava/lang/Object;ILc/f;IZ)V
    .locals 0

    iput-object p1, p0, Lb/a/e/p;->f:Lb/a/e/j;

    iput p4, p0, Lb/a/e/p;->a:I

    iput-object p5, p0, Lb/a/e/p;->c:Lc/f;

    iput p6, p0, Lb/a/e/p;->d:I

    iput-boolean p7, p0, Lb/a/e/p;->e:Z

    invoke-direct {p0, p2, p3}, Lb/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lb/a/e/p;->f:Lb/a/e/j;

    iget-object v0, v0, Lb/a/e/j;->i:Lb/a/e/aj;

    iget v1, p0, Lb/a/e/p;->a:I

    iget-object v2, p0, Lb/a/e/p;->c:Lc/f;

    iget v3, p0, Lb/a/e/p;->d:I

    iget-boolean v4, p0, Lb/a/e/p;->e:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lb/a/e/aj;->a(ILc/j;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lb/a/e/p;->f:Lb/a/e/j;

    iget-object v1, v1, Lb/a/e/j;->p:Lb/a/e/af;

    iget v2, p0, Lb/a/e/p;->a:I

    sget-object v3, Lb/a/e/b;->f:Lb/a/e/b;

    invoke-virtual {v1, v2, v3}, Lb/a/e/af;->a(ILb/a/e/b;)V

    :cond_0
    if-nez v0, :cond_1

    iget-boolean v0, p0, Lb/a/e/p;->e:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lb/a/e/p;->f:Lb/a/e/j;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lb/a/e/p;->f:Lb/a/e/j;

    iget-object v1, v1, Lb/a/e/j;->r:Ljava/util/Set;

    iget v2, p0, Lb/a/e/p;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

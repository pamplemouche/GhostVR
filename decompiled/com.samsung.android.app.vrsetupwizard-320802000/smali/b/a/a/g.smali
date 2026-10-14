.class public final Lb/a/a/g;
.super Ljava/lang/Object;


# instance fields
.field final a:Lb/a/a/h;

.field final b:[Z

.field final synthetic c:Lb/a/a/f;

.field private d:Z


# virtual methods
.method a()V
    .locals 3

    iget-object v0, p0, Lb/a/a/g;->a:Lb/a/a/h;

    iget-object v0, v0, Lb/a/a/h;->f:Lb/a/a/g;

    if-ne v0, p0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lb/a/a/g;->c:Lb/a/a/f;

    iget v1, v1, Lb/a/a/f;->c:I

    if-ge v0, v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lb/a/a/g;->c:Lb/a/a/f;

    iget-object v1, v1, Lb/a/a/f;->b:Lb/a/f/a;

    iget-object v2, p0, Lb/a/a/g;->a:Lb/a/a/h;

    iget-object v2, v2, Lb/a/a/h;->d:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lb/a/f/a;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/a/a/g;->a:Lb/a/a/h;

    const/4 v1, 0x0

    iput-object v1, v0, Lb/a/a/h;->f:Lb/a/a/g;

    :cond_1
    return-void
.end method

.method public b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/a/g;->c:Lb/a/a/f;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lb/a/a/g;->d:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lb/a/a/g;->a:Lb/a/a/h;

    iget-object v1, v1, Lb/a/a/h;->f:Lb/a/a/g;

    if-ne v1, p0, :cond_0

    iget-object v1, p0, Lb/a/a/g;->c:Lb/a/a/f;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lb/a/a/f;->a(Lb/a/a/g;Z)V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lb/a/a/g;->d:Z

    monitor-exit v0

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

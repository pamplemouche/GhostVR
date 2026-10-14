.class public final Lb/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field final a:Lb/a/a/i;

.field final b:Lb/a/a/f;


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/d;->b:Lb/a/a/f;

    invoke-virtual {v0}, Lb/a/a/f;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/d;->b:Lb/a/a/f;

    invoke-virtual {v0}, Lb/a/a/f;->flush()V

    return-void
.end method

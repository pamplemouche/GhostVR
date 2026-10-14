.class Lb/a/e/i;
.super Lc/l;


# instance fields
.field final synthetic a:Lb/a/e/h;


# direct methods
.method constructor <init>(Lb/a/e/h;Lc/aa;)V
    .locals 0

    iput-object p1, p0, Lb/a/e/i;->a:Lb/a/e/h;

    invoke-direct {p0, p2}, Lc/l;-><init>(Lc/aa;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/e/i;->a:Lb/a/e/h;

    iget-object v0, v0, Lb/a/e/h;->a:Lb/a/b/g;

    iget-object v1, p0, Lb/a/e/i;->a:Lb/a/e/h;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lb/a/b/g;->a(ZLb/a/c/c;)V

    invoke-super {p0}, Lc/l;->close()V

    return-void
.end method

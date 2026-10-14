.class Lb/a/e/v;
.super Lb/a/b;


# instance fields
.field final synthetic a:Lb/a/e/ab;

.field final synthetic c:Lb/a/e/u;


# direct methods
.method varargs constructor <init>(Lb/a/e/u;Ljava/lang/String;[Ljava/lang/Object;Lb/a/e/ab;)V
    .locals 0

    iput-object p1, p0, Lb/a/e/v;->c:Lb/a/e/u;

    iput-object p4, p0, Lb/a/e/v;->a:Lb/a/e/ab;

    invoke-direct {p0, p2, p3}, Lb/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lb/a/e/v;->c:Lb/a/e/u;

    iget-object v0, v0, Lb/a/e/u;->c:Lb/a/e/j;

    iget-object v0, v0, Lb/a/e/j;->c:Lb/a/e/s;

    iget-object v1, p0, Lb/a/e/v;->a:Lb/a/e/ab;

    invoke-virtual {v0, v1}, Lb/a/e/s;->a(Lb/a/e/ab;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lb/a/g/h;->b()Lb/a/g/h;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Http2Connection.Listener failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lb/a/e/v;->c:Lb/a/e/u;

    iget-object v4, v4, Lb/a/e/u;->c:Lb/a/e/j;

    iget-object v4, v4, Lb/a/e/j;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lb/a/g/h;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :try_start_1
    iget-object v0, p0, Lb/a/e/v;->a:Lb/a/e/ab;

    sget-object v1, Lb/a/e/b;->b:Lb/a/e/b;

    invoke-virtual {v0, v1}, Lb/a/e/ab;->a(Lb/a/e/b;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method

.class Ld/v;
.super Ljava/lang/Object;

# interfaces
.implements Lb/i;


# instance fields
.field final synthetic a:Ld/j;

.field final synthetic b:Ld/u;


# direct methods
.method constructor <init>(Ld/u;Ld/j;)V
    .locals 0

    iput-object p1, p0, Ld/v;->b:Ld/u;

    iput-object p2, p0, Ld/v;->a:Ld/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ld/av;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/av<",
            "TT;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ld/v;->a:Ld/j;

    iget-object v1, p0, Ld/v;->b:Ld/u;

    invoke-interface {v0, v1, p1}, Ld/j;->a(Ld/g;Ld/av;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ld/v;->a:Ld/j;

    iget-object v1, p0, Ld/v;->b:Ld/u;

    invoke-interface {v0, v1, p1}, Ld/j;->a(Ld/g;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lb/g;Lb/bc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Ld/v;->b:Ld/u;

    invoke-virtual {p1, p2}, Ld/u;->a(Lb/bc;)Ld/av;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, p1}, Ld/v;->a(Ld/av;)V

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Ld/v;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Lb/g;Ljava/io/IOException;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Ld/v;->a:Ld/j;

    iget-object v0, p0, Ld/v;->b:Ld/u;

    invoke-interface {p1, v0, p2}, Ld/j;->a(Ld/g;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.class Ld/x;
.super Lc/l;


# instance fields
.field final synthetic a:Ld/w;


# direct methods
.method constructor <init>(Ld/w;Lc/aa;)V
    .locals 0

    iput-object p1, p0, Ld/x;->a:Ld/w;

    invoke-direct {p0, p2}, Lc/l;-><init>(Lc/aa;)V

    return-void
.end method


# virtual methods
.method public a(Lc/f;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lc/l;->a(Lc/f;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    iget-object p2, p0, Ld/x;->a:Ld/w;

    iput-object p1, p2, Ld/w;->a:Ljava/io/IOException;

    throw p1
.end method

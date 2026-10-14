.class final Lb/ba;
.super Lb/az;


# instance fields
.field final synthetic a:Lb/an;

.field final synthetic b:Lc/k;


# direct methods
.method constructor <init>(Lb/an;Lc/k;)V
    .locals 0

    iput-object p1, p0, Lb/ba;->a:Lb/an;

    iput-object p2, p0, Lb/ba;->b:Lc/k;

    invoke-direct {p0}, Lb/az;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lb/an;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lb/ba;->a:Lb/an;

    return-object v0
.end method

.method public a(Lc/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/ba;->b:Lc/k;

    invoke-interface {p1, v0}, Lc/i;->b(Lc/k;)Lc/i;

    return-void
.end method

.method public b()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/ba;->b:Lc/k;

    invoke-virtual {v0}, Lc/k;->g()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

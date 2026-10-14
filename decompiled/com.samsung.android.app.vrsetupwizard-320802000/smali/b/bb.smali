.class final Lb/bb;
.super Lb/az;


# instance fields
.field final synthetic a:Lb/an;

.field final synthetic b:I

.field final synthetic c:[B

.field final synthetic d:I


# direct methods
.method constructor <init>(Lb/an;I[BI)V
    .locals 0

    iput-object p1, p0, Lb/bb;->a:Lb/an;

    iput p2, p0, Lb/bb;->b:I

    iput-object p3, p0, Lb/bb;->c:[B

    iput p4, p0, Lb/bb;->d:I

    invoke-direct {p0}, Lb/az;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lb/an;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lb/bb;->a:Lb/an;

    return-object v0
.end method

.method public a(Lc/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/bb;->c:[B

    iget v1, p0, Lb/bb;->d:I

    iget v2, p0, Lb/bb;->b:I

    invoke-interface {p1, v0, v1, v2}, Lc/i;->c([BII)Lc/i;

    return-void
.end method

.method public b()J
    .locals 2

    iget v0, p0, Lb/bb;->b:I

    int-to-long v0, v0

    return-wide v0
.end method

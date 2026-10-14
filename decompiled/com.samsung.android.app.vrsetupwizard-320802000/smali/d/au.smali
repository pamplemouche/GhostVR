.class Ld/au;
.super Lb/az;


# instance fields
.field private final a:Lb/az;

.field private final b:Lb/an;


# direct methods
.method constructor <init>(Lb/az;Lb/an;)V
    .locals 0

    invoke-direct {p0}, Lb/az;-><init>()V

    iput-object p1, p0, Ld/au;->a:Lb/az;

    iput-object p2, p0, Ld/au;->b:Lb/an;

    return-void
.end method


# virtual methods
.method public a()Lb/an;
    .locals 1

    iget-object v0, p0, Ld/au;->b:Lb/an;

    return-object v0
.end method

.method public a(Lc/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ld/au;->a:Lb/az;

    invoke-virtual {v0, p1}, Lb/az;->a(Lc/i;)V

    return-void
.end method

.method public b()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ld/au;->a:Lb/az;

    invoke-virtual {v0}, Lb/az;->b()J

    move-result-wide v0

    return-wide v0
.end method

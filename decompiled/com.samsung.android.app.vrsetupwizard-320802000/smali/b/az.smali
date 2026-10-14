.class public abstract Lb/az;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lb/an;Lc/k;)Lb/az;
    .locals 1
    .param p0    # Lb/an;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lb/ba;

    invoke-direct {v0, p0, p1}, Lb/ba;-><init>(Lb/an;Lc/k;)V

    return-object v0
.end method

.method public static a(Lb/an;[B)Lb/az;
    .locals 2
    .param p0    # Lb/an;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lb/az;->a(Lb/an;[BII)Lb/az;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lb/an;[BII)Lb/az;
    .locals 7
    .param p0    # Lb/an;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lb/a/c;->a(JJJ)V

    new-instance v0, Lb/bb;

    invoke-direct {v0, p0, p3, p1, p2}, Lb/bb;-><init>(Lb/an;I[BI)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "content == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract a()Lb/an;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract a(Lc/i;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public b()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    return-wide v0
.end method

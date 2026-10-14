.class final Ld/y;
.super Lb/be;


# instance fields
.field private final a:Lb/an;

.field private final b:J


# direct methods
.method constructor <init>(Lb/an;J)V
    .locals 0

    invoke-direct {p0}, Lb/be;-><init>()V

    iput-object p1, p0, Ld/y;->a:Lb/an;

    iput-wide p2, p0, Ld/y;->b:J

    return-void
.end method


# virtual methods
.method public a()Lb/an;
    .locals 1

    iget-object v0, p0, Ld/y;->a:Lb/an;

    return-object v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Ld/y;->b:J

    return-wide v0
.end method

.method public c()Lc/j;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read raw response body of a converted body."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

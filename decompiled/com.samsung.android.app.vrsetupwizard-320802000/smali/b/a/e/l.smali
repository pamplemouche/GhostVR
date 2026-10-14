.class Lb/a/e/l;
.super Lb/a/b;


# instance fields
.field final synthetic a:I

.field final synthetic c:J

.field final synthetic d:Lb/a/e/j;


# direct methods
.method varargs constructor <init>(Lb/a/e/j;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .locals 0

    iput-object p1, p0, Lb/a/e/l;->d:Lb/a/e/j;

    iput p4, p0, Lb/a/e/l;->a:I

    iput-wide p5, p0, Lb/a/e/l;->c:J

    invoke-direct {p0, p2, p3}, Lb/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lb/a/e/l;->d:Lb/a/e/j;

    iget-object v0, v0, Lb/a/e/j;->p:Lb/a/e/af;

    iget v1, p0, Lb/a/e/l;->a:I

    iget-wide v2, p0, Lb/a/e/l;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lb/a/e/af;->a(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.class Lb/a/e/k;
.super Lb/a/b;


# instance fields
.field final synthetic a:I

.field final synthetic c:Lb/a/e/b;

.field final synthetic d:Lb/a/e/j;


# direct methods
.method varargs constructor <init>(Lb/a/e/j;Ljava/lang/String;[Ljava/lang/Object;ILb/a/e/b;)V
    .locals 0

    iput-object p1, p0, Lb/a/e/k;->d:Lb/a/e/j;

    iput p4, p0, Lb/a/e/k;->a:I

    iput-object p5, p0, Lb/a/e/k;->c:Lb/a/e/b;

    invoke-direct {p0, p2, p3}, Lb/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lb/a/e/k;->d:Lb/a/e/j;

    iget v1, p0, Lb/a/e/k;->a:I

    iget-object v2, p0, Lb/a/e/k;->c:Lb/a/e/b;

    invoke-virtual {v0, v1, v2}, Lb/a/e/j;->b(ILb/a/e/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

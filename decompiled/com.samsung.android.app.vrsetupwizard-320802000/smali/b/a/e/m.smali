.class Lb/a/e/m;
.super Lb/a/b;


# instance fields
.field final synthetic a:Z

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lb/a/e/ai;

.field final synthetic f:Lb/a/e/j;


# direct methods
.method varargs constructor <init>(Lb/a/e/j;Ljava/lang/String;[Ljava/lang/Object;ZIILb/a/e/ai;)V
    .locals 0

    iput-object p1, p0, Lb/a/e/m;->f:Lb/a/e/j;

    iput-boolean p4, p0, Lb/a/e/m;->a:Z

    iput p5, p0, Lb/a/e/m;->c:I

    iput p6, p0, Lb/a/e/m;->d:I

    iput-object p7, p0, Lb/a/e/m;->e:Lb/a/e/ai;

    invoke-direct {p0, p2, p3}, Lb/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lb/a/e/m;->f:Lb/a/e/j;

    iget-boolean v1, p0, Lb/a/e/m;->a:Z

    iget v2, p0, Lb/a/e/m;->c:I

    iget v3, p0, Lb/a/e/m;->d:I

    iget-object v4, p0, Lb/a/e/m;->e:Lb/a/e/ai;

    invoke-virtual {v0, v1, v2, v3, v4}, Lb/a/e/j;->b(ZIILb/a/e/ai;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

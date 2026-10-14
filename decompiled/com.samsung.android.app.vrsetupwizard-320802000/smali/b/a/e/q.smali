.class Lb/a/e/q;
.super Lb/a/b;


# instance fields
.field final synthetic a:I

.field final synthetic c:Lb/a/e/b;

.field final synthetic d:Lb/a/e/j;


# direct methods
.method varargs constructor <init>(Lb/a/e/j;Ljava/lang/String;[Ljava/lang/Object;ILb/a/e/b;)V
    .locals 0

    iput-object p1, p0, Lb/a/e/q;->d:Lb/a/e/j;

    iput p4, p0, Lb/a/e/q;->a:I

    iput-object p5, p0, Lb/a/e/q;->c:Lb/a/e/b;

    invoke-direct {p0, p2, p3}, Lb/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    iget-object v0, p0, Lb/a/e/q;->d:Lb/a/e/j;

    iget-object v0, v0, Lb/a/e/j;->i:Lb/a/e/aj;

    iget v1, p0, Lb/a/e/q;->a:I

    iget-object v2, p0, Lb/a/e/q;->c:Lb/a/e/b;

    invoke-interface {v0, v1, v2}, Lb/a/e/aj;->a(ILb/a/e/b;)V

    iget-object v0, p0, Lb/a/e/q;->d:Lb/a/e/j;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lb/a/e/q;->d:Lb/a/e/j;

    iget-object v1, v1, Lb/a/e/j;->r:Ljava/util/Set;

    iget v2, p0, Lb/a/e/q;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

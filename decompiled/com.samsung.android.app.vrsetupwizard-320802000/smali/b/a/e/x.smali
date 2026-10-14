.class Lb/a/e/x;
.super Lb/a/b;


# instance fields
.field final synthetic a:Lb/a/e/al;

.field final synthetic c:Lb/a/e/u;


# direct methods
.method varargs constructor <init>(Lb/a/e/u;Ljava/lang/String;[Ljava/lang/Object;Lb/a/e/al;)V
    .locals 0

    iput-object p1, p0, Lb/a/e/x;->c:Lb/a/e/u;

    iput-object p4, p0, Lb/a/e/x;->a:Lb/a/e/al;

    invoke-direct {p0, p2, p3}, Lb/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lb/a/e/x;->c:Lb/a/e/u;

    iget-object v0, v0, Lb/a/e/u;->c:Lb/a/e/j;

    iget-object v0, v0, Lb/a/e/j;->p:Lb/a/e/af;

    iget-object v1, p0, Lb/a/e/x;->a:Lb/a/e/al;

    invoke-virtual {v0, v1}, Lb/a/e/af;->a(Lb/a/e/al;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

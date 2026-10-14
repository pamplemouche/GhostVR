.class Lb/a/e/w;
.super Lb/a/b;


# instance fields
.field final synthetic a:Lb/a/e/u;


# direct methods
.method varargs constructor <init>(Lb/a/e/u;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lb/a/e/w;->a:Lb/a/e/u;

    invoke-direct {p0, p2, p3}, Lb/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    iget-object v0, p0, Lb/a/e/w;->a:Lb/a/e/u;

    iget-object v0, v0, Lb/a/e/u;->c:Lb/a/e/j;

    iget-object v0, v0, Lb/a/e/j;->c:Lb/a/e/s;

    iget-object v1, p0, Lb/a/e/w;->a:Lb/a/e/u;

    iget-object v1, v1, Lb/a/e/u;->c:Lb/a/e/j;

    invoke-virtual {v0, v1}, Lb/a/e/s;->a(Lb/a/e/j;)V

    return-void
.end method

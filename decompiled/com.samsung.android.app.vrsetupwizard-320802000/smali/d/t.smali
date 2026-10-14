.class Ld/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Ld/r;


# direct methods
.method constructor <init>(Ld/r;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Ld/t;->b:Ld/r;

    iput-object p2, p0, Ld/t;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ld/t;->b:Ld/r;

    iget-object v0, v0, Ld/r;->a:Ld/j;

    iget-object v1, p0, Ld/t;->b:Ld/r;

    iget-object v1, v1, Ld/r;->b:Ld/q;

    iget-object v2, p0, Ld/t;->a:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2}, Ld/j;->a(Ld/g;Ljava/lang/Throwable;)V

    return-void
.end method

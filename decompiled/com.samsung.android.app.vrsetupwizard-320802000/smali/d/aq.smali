.class Ld/aq;
.super Ld/ap;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld/ap;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/util/concurrent/Executor;)Ld/i;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    new-instance v0, Ld/o;

    invoke-direct {v0, p1}, Ld/o;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public b()Ljava/util/concurrent/Executor;
    .locals 1

    new-instance v0, Ld/ar;

    invoke-direct {v0}, Ld/ar;-><init>()V

    return-object v0
.end method

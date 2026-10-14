.class public final Lb/ap;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lc/k;

.field private b:Lb/an;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/aq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/ap;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lb/ao;->a:Lb/an;

    iput-object v0, p0, Lb/ap;->b:Lb/an;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/ap;->c:Ljava/util/List;

    invoke-static {p1}, Lc/k;->a(Ljava/lang/String;)Lc/k;

    move-result-object p1

    iput-object p1, p0, Lb/ap;->a:Lc/k;

    return-void
.end method


# virtual methods
.method public a()Lb/ao;
    .locals 4

    iget-object v0, p0, Lb/ap;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lb/ao;

    iget-object v1, p0, Lb/ap;->a:Lc/k;

    iget-object v2, p0, Lb/ap;->b:Lb/an;

    iget-object v3, p0, Lb/ap;->c:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lb/ao;-><init>(Lc/k;Lb/an;Ljava/util/List;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multipart body must have at least one part."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lb/ag;Lb/az;)Lb/ap;
    .locals 0
    .param p1    # Lb/ag;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1, p2}, Lb/aq;->a(Lb/ag;Lb/az;)Lb/aq;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/ap;->a(Lb/aq;)Lb/ap;

    move-result-object p1

    return-object p1
.end method

.method public a(Lb/an;)Lb/ap;
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lb/an;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lb/ap;->b:Lb/an;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multipart != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "type == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lb/aq;)Lb/ap;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lb/ap;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "part == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

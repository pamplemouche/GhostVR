.class public Lb/ay;
.super Ljava/lang/Object;


# instance fields
.field a:Lb/ai;

.field b:Ljava/lang/String;

.field c:Lb/ah;

.field d:Lb/az;

.field e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    iput-object v0, p0, Lb/ay;->b:Ljava/lang/String;

    new-instance v0, Lb/ah;

    invoke-direct {v0}, Lb/ah;-><init>()V

    iput-object v0, p0, Lb/ay;->c:Lb/ah;

    return-void
.end method

.method constructor <init>(Lb/ax;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lb/ax;->a:Lb/ai;

    iput-object v0, p0, Lb/ay;->a:Lb/ai;

    iget-object v0, p1, Lb/ax;->b:Ljava/lang/String;

    iput-object v0, p0, Lb/ay;->b:Ljava/lang/String;

    iget-object v0, p1, Lb/ax;->d:Lb/az;

    iput-object v0, p0, Lb/ay;->d:Lb/az;

    iget-object v0, p1, Lb/ax;->e:Ljava/lang/Object;

    iput-object v0, p0, Lb/ay;->e:Ljava/lang/Object;

    iget-object p1, p1, Lb/ax;->c:Lb/ag;

    invoke-virtual {p1}, Lb/ag;->b()Lb/ah;

    move-result-object p1

    iput-object p1, p0, Lb/ay;->c:Lb/ah;

    return-void
.end method


# virtual methods
.method public a()Lb/ax;
    .locals 2

    iget-object v0, p0, Lb/ay;->a:Lb/ai;

    if-eqz v0, :cond_0

    new-instance v0, Lb/ax;

    invoke-direct {v0, p0}, Lb/ax;-><init>(Lb/ay;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lb/ag;)Lb/ay;
    .locals 0

    invoke-virtual {p1}, Lb/ag;->b()Lb/ah;

    move-result-object p1

    iput-object p1, p0, Lb/ay;->c:Lb/ah;

    return-object p0
.end method

.method public a(Lb/ai;)Lb/ay;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lb/ay;->a:Lb/ai;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;)Lb/ay;
    .locals 1

    iget-object v0, p0, Lb/ay;->c:Lb/ah;

    invoke-virtual {v0, p1}, Lb/ah;->b(Ljava/lang/String;)Lb/ah;

    return-object p0
.end method

.method public a(Ljava/lang/String;Lb/az;)Lb/ay;
    .locals 2
    .param p2    # Lb/az;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "method "

    if-eqz p2, :cond_1

    invoke-static {p1}, Lb/a/c/g;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must not have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-nez p2, :cond_3

    invoke-static {p1}, Lb/a/c/g;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_1
    iput-object p1, p0, Lb/ay;->b:Ljava/lang/String;

    iput-object p2, p0, Lb/ay;->d:Lb/az;

    return-object p0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method.length() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lb/ay;
    .locals 1

    iget-object v0, p0, Lb/ay;->c:Lb/ah;

    invoke-virtual {v0, p1, p2}, Lb/ah;->c(Ljava/lang/String;Ljava/lang/String;)Lb/ah;

    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lb/ay;
    .locals 1

    iget-object v0, p0, Lb/ay;->c:Lb/ah;

    invoke-virtual {v0, p1, p2}, Lb/ah;->a(Ljava/lang/String;Ljava/lang/String;)Lb/ah;

    return-object p0
.end method

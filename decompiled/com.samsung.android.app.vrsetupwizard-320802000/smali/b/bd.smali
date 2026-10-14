.class public Lb/bd;
.super Ljava/lang/Object;


# instance fields
.field a:Lb/ax;

.field b:Lb/au;

.field c:I

.field d:Ljava/lang/String;

.field e:Lb/af;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field f:Lb/ah;

.field g:Lb/be;

.field h:Lb/bc;

.field i:Lb/bc;

.field j:Lb/bc;

.field k:J

.field l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lb/bd;->c:I

    new-instance v0, Lb/ah;

    invoke-direct {v0}, Lb/ah;-><init>()V

    iput-object v0, p0, Lb/bd;->f:Lb/ah;

    return-void
.end method

.method constructor <init>(Lb/bc;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lb/bd;->c:I

    iget-object v0, p1, Lb/bc;->a:Lb/ax;

    iput-object v0, p0, Lb/bd;->a:Lb/ax;

    iget-object v0, p1, Lb/bc;->b:Lb/au;

    iput-object v0, p0, Lb/bd;->b:Lb/au;

    iget v0, p1, Lb/bc;->c:I

    iput v0, p0, Lb/bd;->c:I

    iget-object v0, p1, Lb/bc;->d:Ljava/lang/String;

    iput-object v0, p0, Lb/bd;->d:Ljava/lang/String;

    iget-object v0, p1, Lb/bc;->e:Lb/af;

    iput-object v0, p0, Lb/bd;->e:Lb/af;

    iget-object v0, p1, Lb/bc;->f:Lb/ag;

    invoke-virtual {v0}, Lb/ag;->b()Lb/ah;

    move-result-object v0

    iput-object v0, p0, Lb/bd;->f:Lb/ah;

    iget-object v0, p1, Lb/bc;->g:Lb/be;

    iput-object v0, p0, Lb/bd;->g:Lb/be;

    iget-object v0, p1, Lb/bc;->h:Lb/bc;

    iput-object v0, p0, Lb/bd;->h:Lb/bc;

    iget-object v0, p1, Lb/bc;->i:Lb/bc;

    iput-object v0, p0, Lb/bd;->i:Lb/bc;

    iget-object v0, p1, Lb/bc;->j:Lb/bc;

    iput-object v0, p0, Lb/bd;->j:Lb/bc;

    iget-wide v0, p1, Lb/bc;->k:J

    iput-wide v0, p0, Lb/bd;->k:J

    iget-wide v0, p1, Lb/bc;->l:J

    iput-wide v0, p0, Lb/bd;->l:J

    return-void
.end method

.method private a(Ljava/lang/String;Lb/bc;)V
    .locals 1

    iget-object v0, p2, Lb/bc;->g:Lb/be;

    if-nez v0, :cond_3

    iget-object v0, p2, Lb/bc;->h:Lb/bc;

    if-nez v0, :cond_2

    iget-object v0, p2, Lb/bc;->i:Lb/bc;

    if-nez v0, :cond_1

    iget-object p2, p2, Lb/bc;->j:Lb/bc;

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".priorResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".cacheResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".networkResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".body != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private d(Lb/bc;)V
    .locals 1

    iget-object p1, p1, Lb/bc;->g:Lb/be;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "priorResponse.body != null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lb/bc;
    .locals 3

    iget-object v0, p0, Lb/bd;->a:Lb/ax;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lb/bd;->b:Lb/au;

    if-eqz v0, :cond_2

    iget v0, p0, Lb/bd;->c:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lb/bd;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lb/bc;

    invoke-direct {v0, p0}, Lb/bc;-><init>(Lb/bd;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lb/bd;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(I)Lb/bd;
    .locals 0

    iput p1, p0, Lb/bd;->c:I

    return-object p0
.end method

.method public a(J)Lb/bd;
    .locals 0

    iput-wide p1, p0, Lb/bd;->k:J

    return-object p0
.end method

.method public a(Lb/af;)Lb/bd;
    .locals 0
    .param p1    # Lb/af;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lb/bd;->e:Lb/af;

    return-object p0
.end method

.method public a(Lb/ag;)Lb/bd;
    .locals 0

    invoke-virtual {p1}, Lb/ag;->b()Lb/ah;

    move-result-object p1

    iput-object p1, p0, Lb/bd;->f:Lb/ah;

    return-object p0
.end method

.method public a(Lb/au;)Lb/bd;
    .locals 0

    iput-object p1, p0, Lb/bd;->b:Lb/au;

    return-object p0
.end method

.method public a(Lb/ax;)Lb/bd;
    .locals 0

    iput-object p1, p0, Lb/bd;->a:Lb/ax;

    return-object p0
.end method

.method public a(Lb/bc;)Lb/bd;
    .locals 1
    .param p1    # Lb/bc;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    invoke-direct {p0, v0, p1}, Lb/bd;->a(Ljava/lang/String;Lb/bc;)V

    :cond_0
    iput-object p1, p0, Lb/bd;->h:Lb/bc;

    return-object p0
.end method

.method public a(Lb/be;)Lb/bd;
    .locals 0
    .param p1    # Lb/be;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lb/bd;->g:Lb/be;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lb/bd;
    .locals 0

    iput-object p1, p0, Lb/bd;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lb/bd;
    .locals 1

    iget-object v0, p0, Lb/bd;->f:Lb/ah;

    invoke-virtual {v0, p1, p2}, Lb/ah;->a(Ljava/lang/String;Ljava/lang/String;)Lb/ah;

    return-object p0
.end method

.method public b(J)Lb/bd;
    .locals 0

    iput-wide p1, p0, Lb/bd;->l:J

    return-object p0
.end method

.method public b(Lb/bc;)Lb/bd;
    .locals 1
    .param p1    # Lb/bc;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    invoke-direct {p0, v0, p1}, Lb/bd;->a(Ljava/lang/String;Lb/bc;)V

    :cond_0
    iput-object p1, p0, Lb/bd;->i:Lb/bc;

    return-object p0
.end method

.method public c(Lb/bc;)Lb/bd;
    .locals 0
    .param p1    # Lb/bc;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lb/bd;->d(Lb/bc;)V

    :cond_0
    iput-object p1, p0, Lb/bd;->j:Lb/bc;

    return-object p0
.end method

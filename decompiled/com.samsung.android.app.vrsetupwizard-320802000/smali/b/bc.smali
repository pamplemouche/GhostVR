.class public final Lb/bc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field final a:Lb/ax;

.field final b:Lb/au;

.field final c:I

.field final d:Ljava/lang/String;

.field final e:Lb/af;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final f:Lb/ag;

.field final g:Lb/be;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final h:Lb/bc;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final i:Lb/bc;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final j:Lb/bc;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final k:J

.field final l:J

.field private volatile m:Lb/e;


# direct methods
.method constructor <init>(Lb/bd;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lb/bd;->a:Lb/ax;

    iput-object v0, p0, Lb/bc;->a:Lb/ax;

    iget-object v0, p1, Lb/bd;->b:Lb/au;

    iput-object v0, p0, Lb/bc;->b:Lb/au;

    iget v0, p1, Lb/bd;->c:I

    iput v0, p0, Lb/bc;->c:I

    iget-object v0, p1, Lb/bd;->d:Ljava/lang/String;

    iput-object v0, p0, Lb/bc;->d:Ljava/lang/String;

    iget-object v0, p1, Lb/bd;->e:Lb/af;

    iput-object v0, p0, Lb/bc;->e:Lb/af;

    iget-object v0, p1, Lb/bd;->f:Lb/ah;

    invoke-virtual {v0}, Lb/ah;->a()Lb/ag;

    move-result-object v0

    iput-object v0, p0, Lb/bc;->f:Lb/ag;

    iget-object v0, p1, Lb/bd;->g:Lb/be;

    iput-object v0, p0, Lb/bc;->g:Lb/be;

    iget-object v0, p1, Lb/bd;->h:Lb/bc;

    iput-object v0, p0, Lb/bc;->h:Lb/bc;

    iget-object v0, p1, Lb/bd;->i:Lb/bc;

    iput-object v0, p0, Lb/bc;->i:Lb/bc;

    iget-object v0, p1, Lb/bd;->j:Lb/bc;

    iput-object v0, p0, Lb/bc;->j:Lb/bc;

    iget-wide v0, p1, Lb/bd;->k:J

    iput-wide v0, p0, Lb/bc;->k:J

    iget-wide v0, p1, Lb/bd;->l:J

    iput-wide v0, p0, Lb/bc;->l:J

    return-void
.end method


# virtual methods
.method public a()Lb/ax;
    .locals 1

    iget-object v0, p0, Lb/bc;->a:Lb/ax;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lb/bc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lb/bc;->f:Lb/ag;

    invoke-virtual {v0, p1}, Lb/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lb/bc;->c:I

    return v0
.end method

.method public c()Z
    .locals 2

    iget v0, p0, Lb/bc;->c:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lb/bc;->g:Lb/be;

    invoke-virtual {v0}, Lb/be;->close()V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/bc;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lb/af;
    .locals 1

    iget-object v0, p0, Lb/bc;->e:Lb/af;

    return-object v0
.end method

.method public f()Lb/ag;
    .locals 1

    iget-object v0, p0, Lb/bc;->f:Lb/ag;

    return-object v0
.end method

.method public g()Lb/be;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lb/bc;->g:Lb/be;

    return-object v0
.end method

.method public h()Lb/bd;
    .locals 1

    new-instance v0, Lb/bd;

    invoke-direct {v0, p0}, Lb/bd;-><init>(Lb/bc;)V

    return-object v0
.end method

.method public i()Lb/e;
    .locals 1

    iget-object v0, p0, Lb/bc;->m:Lb/e;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/bc;->f:Lb/ag;

    invoke-static {v0}, Lb/e;->a(Lb/ag;)Lb/e;

    move-result-object v0

    iput-object v0, p0, Lb/bc;->m:Lb/e;

    :goto_0
    return-object v0
.end method

.method public j()J
    .locals 2

    iget-wide v0, p0, Lb/bc;->k:J

    return-wide v0
.end method

.method public k()J
    .locals 2

    iget-wide v0, p0, Lb/bc;->l:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/bc;->b:Lb/au;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/bc;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/bc;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/bc;->a:Lb/ax;

    invoke-virtual {v1}, Lb/ax;->a()Lb/ai;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

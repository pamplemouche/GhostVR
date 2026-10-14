.class public final Lb/ax;
.super Ljava/lang/Object;


# instance fields
.field final a:Lb/ai;

.field final b:Ljava/lang/String;

.field final c:Lb/ag;

.field final d:Lb/az;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final e:Ljava/lang/Object;

.field private volatile f:Lb/e;


# direct methods
.method constructor <init>(Lb/ay;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lb/ay;->a:Lb/ai;

    iput-object v0, p0, Lb/ax;->a:Lb/ai;

    iget-object v0, p1, Lb/ay;->b:Ljava/lang/String;

    iput-object v0, p0, Lb/ax;->b:Ljava/lang/String;

    iget-object v0, p1, Lb/ay;->c:Lb/ah;

    invoke-virtual {v0}, Lb/ah;->a()Lb/ag;

    move-result-object v0

    iput-object v0, p0, Lb/ax;->c:Lb/ag;

    iget-object v0, p1, Lb/ay;->d:Lb/az;

    iput-object v0, p0, Lb/ax;->d:Lb/az;

    iget-object v0, p1, Lb/ay;->e:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lb/ay;->e:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    iput-object p1, p0, Lb/ax;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lb/ai;
    .locals 1

    iget-object v0, p0, Lb/ax;->a:Lb/ai;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/ax;->c:Lb/ag;

    invoke-virtual {v0, p1}, Lb/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/ax;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lb/ag;
    .locals 1

    iget-object v0, p0, Lb/ax;->c:Lb/ag;

    return-object v0
.end method

.method public d()Lb/az;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lb/ax;->d:Lb/az;

    return-object v0
.end method

.method public e()Lb/ay;
    .locals 1

    new-instance v0, Lb/ay;

    invoke-direct {v0, p0}, Lb/ay;-><init>(Lb/ax;)V

    return-object v0
.end method

.method public f()Lb/e;
    .locals 1

    iget-object v0, p0, Lb/ax;->f:Lb/e;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/ax;->c:Lb/ag;

    invoke-static {v0}, Lb/e;->a(Lb/ag;)Lb/e;

    move-result-object v0

    iput-object v0, p0, Lb/ax;->f:Lb/e;

    :goto_0
    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lb/ax;->a:Lb/ai;

    invoke-virtual {v0}, Lb/ai;->c()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/ax;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/ax;->a:Lb/ai;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/ax;->e:Ljava/lang/Object;

    if-eq v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

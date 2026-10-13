.class public Lcom/facebook/common/util/Tuple;
.super Ljava/lang/Object;
.source "Tuple.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T0:",
        "Ljava/lang/Object;",
        "T1:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final d0:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT0;"
        }
    .end annotation
.end field

.field public final d1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT1;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT0;TT1;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Lcom/facebook/common/util/Tuple;, "Lcom/facebook/common/util/Tuple<TT0;TT1;>;"
    .local p1, "_d0":Ljava/lang/Object;, "TT0;"
    .local p2, "_d1":Ljava/lang/Object;, "TT1;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/facebook/common/util/Tuple;->d0:Ljava/lang/Object;

    .line 19
    iput-object p2, p0, Lcom/facebook/common/util/Tuple;->d1:Ljava/lang/Object;

    .line 20
    return-void
.end method

.method public static create(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/common/util/Tuple;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            ">(TT0;TT1;)",
            "Lcom/facebook/common/util/Tuple",
            "<TT0;TT1;>;"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, "d0":Ljava/lang/Object;, "TT0;"
    .local p1, "d1":Ljava/lang/Object;, "TT1;"
    new-instance v0, Lcom/facebook/common/util/Tuple;

    invoke-direct {v0, p0, p1}, Lcom/facebook/common/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/facebook/common/util/Tuple;, "Lcom/facebook/common/util/Tuple<TT0;TT1;>;"
    const/4 v1, 0x0

    .line 38
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/facebook/common/util/Tuple;

    if-nez v2, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 43
    check-cast v0, Lcom/facebook/common/util/Tuple;

    .line 50
    .local v0, "other_casted":Lcom/facebook/common/util/Tuple;
    iget-object v2, p0, Lcom/facebook/common/util/Tuple;->d0:Ljava/lang/Object;

    iget-object v3, v0, Lcom/facebook/common/util/Tuple;->d0:Ljava/lang/Object;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/facebook/common/util/Tuple;->d0:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/facebook/common/util/Tuple;->d0:Ljava/lang/Object;

    iget-object v3, v0, Lcom/facebook/common/util/Tuple;->d0:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    :cond_2
    iget-object v2, p0, Lcom/facebook/common/util/Tuple;->d1:Ljava/lang/Object;

    iget-object v3, v0, Lcom/facebook/common/util/Tuple;->d1:Ljava/lang/Object;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/facebook/common/util/Tuple;->d1:Ljava/lang/Object;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/facebook/common/util/Tuple;->d1:Ljava/lang/Object;

    iget-object v3, v0, Lcom/facebook/common/util/Tuple;->d1:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 24
    .local p0, "this":Lcom/facebook/common/util/Tuple;, "Lcom/facebook/common/util/Tuple<TT0;TT1;>;"
    const/4 v0, 0x0

    .line 26
    .local v0, "hashcode":I
    iget-object v1, p0, Lcom/facebook/common/util/Tuple;->d0:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/facebook/common/util/Tuple;->d0:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/facebook/common/util/Tuple;->d1:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 30
    iget-object v1, p0, Lcom/facebook/common/util/Tuple;->d1:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 33
    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 63
    .local p0, "this":Lcom/facebook/common/util/Tuple;, "Lcom/facebook/common/util/Tuple<TT0;TT1;>;"
    const-string v0, "<"

    .line 64
    .local v0, "retString":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/common/util/Tuple;->d0:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/common/util/Tuple;->d0:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/facebook/common/util/Tuple;->d1:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/common/util/Tuple;->d1:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    return-object v0
.end method

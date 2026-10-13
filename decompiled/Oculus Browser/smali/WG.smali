.class public LWG;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public w:LUG;

.field public x:Ljava/lang/Object;

.field public y:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LWG;->y:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 5

    .line 1
    iget-object v0, p0, LWG;->x:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, LWG;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LbH;

    .line 3
    iget v4, v3, LbH;->a:I

    invoke-static {v4}, LSG;->c(I)I

    move-result v4

    add-int/2addr v4, v1

    .line 4
    iget-object v3, v3, LbH;->b:[B

    array-length v3, v3

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    const/4 v0, 0x0

    .line 5
    throw v0
.end method

.method public a(LSG;)V
    .locals 3

    .line 6
    iget-object v0, p0, LWG;->x:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, LWG;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LbH;

    .line 8
    iget v2, v1, LbH;->a:I

    invoke-virtual {p1, v2}, LSG;->b(I)V

    .line 9
    iget-object v1, v1, LbH;->b:[B

    invoke-virtual {p1, v1}, LSG;->a([B)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 10
    throw p1
.end method

.method public final b()[B
    .locals 4

    .line 1
    invoke-virtual {p0}, LWG;->a()I

    move-result v0

    new-array v1, v0, [B

    .line 2
    new-instance v2, LSG;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, LSG;-><init>([BII)V

    .line 3
    invoke-virtual {p0, v2}, LWG;->a(LSG;)V

    return-object v1
.end method

.method public final clone()LWG;
    .locals 5

    .line 2
    new-instance v0, LWG;

    invoke-direct {v0}, LWG;-><init>()V

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, LWG;->w:LUG;

    .line 4
    :try_start_0
    iget-object v2, p0, LWG;->y:Ljava/util/List;

    if-nez v2, :cond_0

    .line 5
    iput-object v1, v0, LWG;->y:Ljava/util/List;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, v0, LWG;->y:Ljava/util/List;

    iget-object v2, p0, LWG;->y:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    :goto_0
    iget-object v1, p0, LWG;->x:Ljava/lang/Object;

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 8
    :cond_1
    iget-object v1, p0, LWG;->x:Ljava/lang/Object;

    instance-of v1, v1, LZG;

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, p0, LWG;->x:Ljava/lang/Object;

    check-cast v1, LZG;

    check-cast v1, LTG;

    .line 10
    invoke-virtual {v1}, LTG;->clone()LTG;

    move-result-object v1

    .line 11
    iput-object v1, v0, LWG;->x:Ljava/lang/Object;

    goto/16 :goto_3

    .line 12
    :cond_2
    iget-object v1, p0, LWG;->x:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-eqz v1, :cond_3

    .line 13
    iget-object v1, p0, LWG;->x:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, LWG;->x:Ljava/lang/Object;

    goto/16 :goto_3

    .line 14
    :cond_3
    iget-object v1, p0, LWG;->x:Ljava/lang/Object;

    instance-of v1, v1, [[B

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 15
    iget-object v1, p0, LWG;->x:Ljava/lang/Object;

    check-cast v1, [[B

    .line 16
    array-length v3, v1

    new-array v3, v3, [[B

    .line 17
    iput-object v3, v0, LWG;->x:Ljava/lang/Object;

    .line 18
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_a

    .line 19
    aget-object v4, v1, v2

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 20
    :cond_4
    iget-object v1, p0, LWG;->x:Ljava/lang/Object;

    instance-of v1, v1, [Z

    if-eqz v1, :cond_5

    .line 21
    iget-object v1, p0, LWG;->x:Ljava/lang/Object;

    check-cast v1, [Z

    invoke-virtual {v1}, [Z->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, LWG;->x:Ljava/lang/Object;

    goto :goto_3

    .line 22
    :cond_5
    iget-object v1, p0, LWG;->x:Ljava/lang/Object;

    instance-of v1, v1, [I

    if-eqz v1, :cond_6

    .line 23
    iget-object v1, p0, LWG;->x:Ljava/lang/Object;

    check-cast v1, [I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, LWG;->x:Ljava/lang/Object;

    goto :goto_3

    .line 24
    :cond_6
    iget-object v1, p0, LWG;->x:Ljava/lang/Object;

    instance-of v1, v1, [J

    if-eqz v1, :cond_7

    .line 25
    iget-object v1, p0, LWG;->x:Ljava/lang/Object;

    check-cast v1, [J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, LWG;->x:Ljava/lang/Object;

    goto :goto_3

    .line 26
    :cond_7
    iget-object v1, p0, LWG;->x:Ljava/lang/Object;

    instance-of v1, v1, [F

    if-eqz v1, :cond_8

    .line 27
    iget-object v1, p0, LWG;->x:Ljava/lang/Object;

    check-cast v1, [F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, LWG;->x:Ljava/lang/Object;

    goto :goto_3

    .line 28
    :cond_8
    iget-object v1, p0, LWG;->x:Ljava/lang/Object;

    instance-of v1, v1, [D

    if-eqz v1, :cond_9

    .line 29
    iget-object v1, p0, LWG;->x:Ljava/lang/Object;

    check-cast v1, [D

    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, LWG;->x:Ljava/lang/Object;

    goto :goto_3

    .line 30
    :cond_9
    iget-object v1, p0, LWG;->x:Ljava/lang/Object;

    instance-of v1, v1, [LZG;

    if-eqz v1, :cond_a

    .line 31
    iget-object v1, p0, LWG;->x:Ljava/lang/Object;

    check-cast v1, [LZG;

    .line 32
    array-length v3, v1

    new-array v3, v3, [LZG;

    .line 33
    iput-object v3, v0, LWG;->x:Ljava/lang/Object;

    .line 34
    :goto_2
    array-length v4, v1

    if-ge v2, v4, :cond_a

    .line 35
    aget-object v4, v1, v2

    check-cast v4, LTG;

    .line 36
    invoke-virtual {v4}, LTG;->clone()LTG;

    move-result-object v4

    .line 37
    aput-object v4, v3, v2
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    :goto_3
    return-object v0

    :catch_0
    move-exception v0

    .line 38
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, LWG;->clone()LWG;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, LWG;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, LWG;

    .line 3
    iget-object v0, p0, LWG;->x:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p1, LWG;->x:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 4
    iget-object p1, p1, LWG;->w:LUG;

    const/4 p1, 0x0

    .line 5
    throw p1

    .line 6
    :cond_2
    iget-object v0, p0, LWG;->y:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v1, p1, LWG;->y:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 8
    :cond_3
    :try_start_0
    invoke-virtual {p0}, LWG;->b()[B

    move-result-object v0

    invoke-virtual {p1}, LWG;->b()[B

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x20f

    .line 1
    :try_start_0
    invoke-virtual {p0}, LWG;->b()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    return v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

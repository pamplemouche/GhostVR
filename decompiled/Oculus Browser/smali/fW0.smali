.class public LfW0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field public static final C:Z

.field public static final D:LdW0;


# instance fields
.field public A:Z

.field public B:Z

.field public final w:Landroid/os/Handler;

.field public final x:I

.field public final y:Ljava/util/List;

.field public final z:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, LfW0;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, LfW0;->C:Z

    .line 3
    new-instance v0, LdW0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LdW0;-><init>(LbW0;)V

    sput-object v0, LfW0;->D:LdW0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LfW0;->w:Landroid/os/Handler;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LfW0;->y:Ljava/util/List;

    .line 4
    new-instance v0, LZV0;

    invoke-direct {v0, p0}, LZV0;-><init>(LfW0;)V

    iput-object v0, p0, LfW0;->z:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, LfW0;->x:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LfW0;->w:Landroid/os/Handler;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LfW0;->y:Ljava/util/List;

    .line 9
    new-instance v0, LaW0;

    invoke-direct {v0, p0}, LaW0;-><init>(LfW0;)V

    iput-object v0, p0, LfW0;->z:Ljava/lang/Runnable;

    .line 10
    iput p1, p0, LfW0;->x:I

    return-void
.end method


# virtual methods
.method public final a(LLV;)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, LfW0;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, LfW0;->y:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LcW0;

    iget-object v1, v1, LcW0;->a:LLV;

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final a()V
    .locals 3

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, LfW0;->B:Z

    .line 4
    iget-object v0, p0, LfW0;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 5
    iget-object v1, p0, LfW0;->y:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LcW0;

    .line 6
    invoke-virtual {v1}, LcW0;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, v1, LcW0;->a:LLV;

    .line 8
    iget-object v1, v1, LLV;->p:LFV;

    check-cast v1, LHV;

    invoke-virtual {v1}, LHV;->a()Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 25
    :goto_0
    iget-object v2, p0, LfW0;->y:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 26
    iget-object v2, p0, LfW0;->y:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LcW0;

    .line 27
    invoke-virtual {v2}, LcW0;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 28
    iget-object v3, v2, LcW0;->a:LLV;

    .line 29
    iget v4, v3, LLV;->s:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 30
    iget v3, v3, LLV;->t:I

    if-le v3, v0, :cond_0

    move v0, v3

    goto :goto_1

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong group importance order "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not in low rank group "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_2
    iget-object v3, v2, LcW0;->a:LLV;

    .line 34
    iget v3, v3, LLV;->s:I

    if-nez v3, :cond_3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Should not be in group "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void
.end method

.method public final b(I)V
    .locals 5

    .line 1
    iget-object v0, p0, LfW0;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LcW0;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, LfW0;->y:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-object v2, LfW0;->D:LdW0;

    iget-object v3, p0, LfW0;->y:Ljava/util/List;

    .line 3
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LcW0;

    invoke-virtual {v2, v3, p1}, LdW0;->a(LcW0;LcW0;)I

    move-result v2

    if-gez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, LfW0;->y:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5
    sget-boolean v2, LfW0;->C:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, LfW0;->c()V

    .line 6
    :cond_1
    iget-boolean v2, p0, LfW0;->A:Z

    if-nez v2, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-virtual {p1}, LcW0;->a()Z

    move-result v2

    if-nez v2, :cond_4

    .line 8
    iget-object p1, p1, LcW0;->a:LLV;

    .line 9
    iget v1, p1, LLV;->s:I

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {p1, v0, v0}, LLV;->a(II)V

    :cond_3
    return-void

    :cond_4
    const/4 v2, 0x1

    if-nez v1, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    .line 11
    :goto_1
    iget-object v4, p0, LfW0;->y:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    if-ne v1, v4, :cond_6

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_2
    if-eqz v3, :cond_7

    goto :goto_3

    .line 12
    :cond_7
    iget-object v0, p0, LfW0;->y:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LcW0;

    iget-object v0, v0, LcW0;->a:LLV;

    .line 13
    iget v0, v0, LLV;->t:I

    :goto_3
    if-eqz v4, :cond_8

    const v1, 0x7fffffff

    goto :goto_4

    .line 14
    :cond_8
    iget-object v3, p0, LfW0;->y:Ljava/util/List;

    add-int/2addr v1, v2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LcW0;

    iget-object v1, v1, LcW0;->a:LLV;

    .line 15
    iget v1, v1, LLV;->t:I

    .line 16
    :goto_4
    iget-object v3, p1, LcW0;->a:LLV;

    .line 17
    iget v3, v3, LLV;->t:I

    if-le v3, v0, :cond_9

    if-ge v3, v1, :cond_9

    return-void

    :cond_9
    sub-int v3, v1, v0

    const/high16 v4, 0x10000

    if-le v3, v4, :cond_a

    .line 18
    iget-object p1, p1, LcW0;->a:LLV;

    add-int/lit16 v1, v1, -0x8000

    invoke-virtual {p1, v2, v1}, LLV;->a(II)V

    goto :goto_5

    :cond_a
    const/4 v1, 0x2

    if-le v3, v1, :cond_b

    .line 19
    iget-object p1, p1, LcW0;->a:LLV;

    div-int/2addr v3, v1

    add-int/2addr v3, v0

    invoke-virtual {p1, v2, v3}, LLV;->a(II)V

    goto :goto_5

    .line 20
    :cond_b
    invoke-virtual {p0}, LfW0;->d()V

    .line 21
    :goto_5
    iget-boolean p1, p0, LfW0;->B:Z

    if-eqz p1, :cond_c

    goto :goto_6

    .line 22
    :cond_c
    iget-object p1, p0, LfW0;->w:Landroid/os/Handler;

    iget-object v0, p0, LfW0;->z:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 23
    iput-boolean v2, p0, LfW0;->B:Z

    .line 24
    :goto_6
    sget-boolean p1, LfW0;->C:Z

    if-eqz p1, :cond_d

    invoke-virtual {p0}, LfW0;->b()V

    :cond_d
    return-void
.end method

.method public final c()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, LfW0;->y:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 2
    iget-object v2, p0, LfW0;->y:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LcW0;

    if-lez v0, :cond_1

    .line 3
    sget-object v3, LfW0;->D:LdW0;

    iget-object v4, p0, LfW0;->y:Ljava/util/List;

    add-int/lit8 v5, v0, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LcW0;

    invoke-virtual {v3, v4, v2}, LdW0;->a(LcW0;LcW0;)I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not sorted "

    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, LfW0;->y:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    :goto_1
    invoke-virtual {v2}, LcW0;->a()Z

    move-result v3

    if-eqz v1, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not in low rank "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final d()V
    .locals 5

    .line 1
    iget-object v0, p0, LfW0;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const v2, 0x7fff7fff

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v3, p0, LfW0;->y:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LcW0;

    .line 3
    invoke-virtual {v3}, LcW0;->a()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v3, v3, LcW0;->a:LLV;

    invoke-virtual {v3, v1, v2}, LLV;->a(II)V

    add-int/lit16 v2, v2, -0x8000

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, LeW0;

    invoke-direct {v0, p0}, LeW0;-><init>(LfW0;)V

    return-object v0
.end method

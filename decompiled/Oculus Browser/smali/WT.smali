.class public LWT;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final w:Ljava/util/List;

.field public x:I

.field public y:I

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LWT;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LWT;->w:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(LWT;I)Ljava/lang/Object;
    .locals 0

    .line 5
    iget-object p0, p0, LWT;->w:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()LVT;
    .locals 2

    .line 4
    new-instance v0, LUT;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LUT;-><init>(LWT;LTT;)V

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, LWT;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, LWT;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget p1, p0, LWT;->y:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, LWT;->y:I

    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, LWT;->w:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    return v0

    .line 2
    :cond_1
    iget v0, p0, LWT;->x:I

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, LWT;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_2
    iput-boolean v1, p0, LWT;->z:Z

    .line 5
    iget-object v0, p0, LWT;->w:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6
    :goto_0
    iget p1, p0, LWT;->y:I

    sub-int/2addr p1, v1

    iput p1, p0, LWT;->y:I

    return v1
.end method

.method public clear()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput v0, p0, LWT;->y:I

    .line 2
    iget v1, p0, LWT;->x:I

    if-nez v1, :cond_0

    .line 3
    iget-object v0, p0, LWT;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, LWT;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 5
    iget-boolean v2, p0, LWT;->z:Z

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    or-int/2addr v2, v3

    iput-boolean v2, p0, LWT;->z:Z

    :goto_1
    if-ge v0, v1, :cond_2

    .line 6
    iget-object v2, p0, LWT;->w:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget v0, p0, LWT;->y:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    new-instance v0, LUT;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LUT;-><init>(LWT;LTT;)V

    return-object v0
.end method

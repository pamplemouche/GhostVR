.class public Ls80;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public synthetic constructor <init>(Lr80;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget p1, p0, Ls80;->c:I

    return p1

    .line 2
    :cond_1
    iget p1, p0, Ls80;->d:I

    return p1

    .line 3
    :cond_2
    iget p1, p0, Ls80;->b:I

    return p1

    .line 4
    :cond_3
    iget p1, p0, Ls80;->a:I

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Ls80;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Ls80;

    .line 3
    iget v1, p0, Ls80;->a:I

    iget v3, p1, Ls80;->a:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Ls80;->b:I

    iget v3, p1, Ls80;->b:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Ls80;->c:I

    iget v3, p1, Ls80;->c:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Ls80;->d:I

    iget p1, p1, Ls80;->d:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Ls80;->a:I

    mul-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Ls80;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget v1, p0, Ls80;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget v1, p0, Ls80;->d:I

    add-int/2addr v0, v1

    return v0
.end method

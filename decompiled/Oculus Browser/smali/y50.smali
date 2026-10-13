.class public Ly50;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ly50;->a:I

    .line 3
    iput p2, p0, Ly50;->b:I

    mul-int/lit8 p1, p1, 0x1f

    add-int/2addr p1, p2

    .line 4
    iput p1, p0, Ly50;->c:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Ly50;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 2
    :cond_1
    check-cast p1, Ly50;

    .line 3
    iget v2, p0, Ly50;->a:I

    iget v3, p1, Ly50;->a:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Ly50;->b:I

    iget p1, p1, Ly50;->b:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Ly50;->c:I

    return v0
.end method

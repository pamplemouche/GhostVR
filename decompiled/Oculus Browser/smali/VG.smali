.class public final LVG;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final A:LWG;


# instance fields
.field public w:Z

.field public x:[I

.field public y:[LWG;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LWG;

    invoke-direct {v0}, LWG;-><init>()V

    sput-object v0, LVG;->A:LWG;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LVG;->w:Z

    .line 3
    invoke-virtual {p0, p1}, LVG;->b(I)I

    move-result p1

    .line 4
    new-array v1, p1, [I

    iput-object v1, p0, LVG;->x:[I

    .line 5
    new-array p1, p1, [LWG;

    iput-object p1, p0, LVG;->y:[LWG;

    .line 6
    iput v0, p0, LVG;->z:I

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 4

    .line 11
    iget v0, p0, LVG;->z:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 12
    iget-object v3, p0, LVG;->x:[I

    aget v3, v3, v2

    if-ge v3, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    if-le v3, p1, :cond_1

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    not-int p1, v1

    return p1
.end method

.method public final a()V
    .locals 8

    .line 1
    iget v0, p0, LVG;->z:I

    .line 2
    iget-object v1, p0, LVG;->x:[I

    .line 3
    iget-object v2, p0, LVG;->y:[LWG;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    .line 4
    aget-object v6, v2, v4

    .line 5
    sget-object v7, LVG;->A:LWG;

    if-eq v6, v7, :cond_1

    if-eq v4, v5, :cond_0

    .line 6
    aget v7, v1, v4

    aput v7, v1, v5

    .line 7
    aput-object v6, v2, v5

    const/4 v6, 0x0

    .line 8
    aput-object v6, v2, v4

    :cond_0
    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iput-boolean v3, p0, LVG;->w:Z

    .line 10
    iput v5, p0, LVG;->z:I

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget-boolean v0, p0, LVG;->w:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, LVG;->a()V

    .line 3
    :cond_0
    iget v0, p0, LVG;->z:I

    return v0
.end method

.method public final b(I)I
    .locals 3

    const/4 v0, 0x4

    mul-int/lit8 p1, p1, 0x4

    const/4 v1, 0x4

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    const/4 v2, 0x1

    shl-int/2addr v2, v1

    add-int/lit8 v2, v2, -0xc

    if-gt p1, v2, :cond_0

    move p1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    :goto_1
    div-int/2addr p1, v0

    return p1
.end method

.method public final clone()LVG;
    .locals 5

    .line 2
    invoke-virtual {p0}, LVG;->b()I

    move-result v0

    .line 3
    new-instance v1, LVG;

    invoke-direct {v1, v0}, LVG;-><init>(I)V

    .line 4
    iget-object v2, p0, LVG;->x:[I

    iget-object v3, v1, LVG;->x:[I

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-ge v4, v0, :cond_1

    .line 5
    iget-object v2, p0, LVG;->y:[LWG;

    aget-object v3, v2, v4

    if-eqz v3, :cond_0

    .line 6
    iget-object v3, v1, LVG;->y:[LWG;

    aget-object v2, v2, v4

    invoke-virtual {v2}, LWG;->clone()LWG;

    move-result-object v2

    aput-object v2, v3, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iput v0, v1, LVG;->z:I

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, LVG;->clone()LVG;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, LVG;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, LVG;

    .line 3
    invoke-virtual {p0}, LVG;->b()I

    move-result v1

    invoke-virtual {p1}, LVG;->b()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 4
    :cond_2
    iget-object v1, p0, LVG;->x:[I

    iget-object v3, p1, LVG;->x:[I

    iget v4, p0, LVG;->z:I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    .line 5
    aget v6, v1, v5

    aget v7, v3, v5

    if-eq v6, v7, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_7

    .line 6
    iget-object v1, p0, LVG;->y:[LWG;

    iget-object p1, p1, LVG;->y:[LWG;

    iget v3, p0, LVG;->z:I

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_6

    .line 7
    aget-object v5, v1, v4

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, LWG;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const/4 p1, 0x0

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    const/4 p1, 0x1

    :goto_3
    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-boolean v0, p0, LVG;->w:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, LVG;->a()V

    :cond_0
    const/16 v0, 0x11

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, LVG;->z:I

    if-ge v1, v2, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v2, p0, LVG;->x:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v2, p0, LVG;->y:[LWG;

    aget-object v2, v2, v1

    invoke-virtual {v2}, LWG;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

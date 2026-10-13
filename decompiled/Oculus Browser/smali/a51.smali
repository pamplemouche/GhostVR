.class public La51;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic w:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, La51;->w:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb51;)I
    .locals 2

    .line 1
    iget v0, p1, Lb51;->a:I

    const/16 v1, 0x1f40

    if-ge v0, v1, :cond_0

    mul-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    .line 2
    :goto_0
    iget v1, p0, La51;->w:I

    iget p1, p1, Lb51;->b:I

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v1, 0x1388

    if-ge p1, v1, :cond_1

    mul-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    sub-int/2addr p1, v1

    mul-int/lit8 p1, p1, 0x3

    add-int/2addr p1, v1

    :goto_1
    add-int/2addr v0, p1

    return v0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lb51;

    check-cast p2, Lb51;

    .line 2
    invoke-virtual {p0, p1}, La51;->a(Lb51;)I

    move-result p1

    invoke-virtual {p0, p2}, La51;->a(Lb51;)I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

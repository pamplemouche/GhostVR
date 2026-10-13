.class public Lcom/facebook/cameracore/common/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field public final height:I

.field public final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/facebook/cameracore/common/Size;->width:I

    .line 17
    iput p2, p0, Lcom/facebook/cameracore/common/Size;->height:I

    .line 18
    return-void
.end method

.method public static toString(II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Lcom/facebook/cameracore/common/Size;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 44
    if-eqz p1, :cond_0

    .line 45
    iget v1, p0, Lcom/facebook/cameracore/common/Size;->width:I

    iget v2, p1, Lcom/facebook/cameracore/common/Size;->width:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/facebook/cameracore/common/Size;->height:I

    iget v2, p1, Lcom/facebook/cameracore/common/Size;->height:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 47
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 37
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/facebook/cameracore/common/Size;

    if-eqz v0, :cond_0

    .line 38
    check-cast p1, Lcom/facebook/cameracore/common/Size;

    invoke-virtual {p0, p1}, Lcom/facebook/cameracore/common/Size;->equals(Lcom/facebook/cameracore/common/Size;)Z

    move-result v0

    .line 40
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/facebook/cameracore/common/Size;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/facebook/cameracore/common/Size;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 30
    iget v0, p0, Lcom/facebook/cameracore/common/Size;->width:I

    .line 31
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/facebook/cameracore/common/Size;->height:I

    add-int/2addr v0, v1

    .line 32
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    iget v0, p0, Lcom/facebook/cameracore/common/Size;->width:I

    iget v1, p0, Lcom/facebook/cameracore/common/Size;->height:I

    invoke-static {v0, v1}, Lcom/facebook/cameracore/common/Size;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

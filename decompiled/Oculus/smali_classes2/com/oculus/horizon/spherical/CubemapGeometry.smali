.class public Lcom/oculus/horizon/spherical/CubemapGeometry;
.super Ljava/lang/Object;
.source "CubemapGeometry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/spherical/CubemapGeometry$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/oculus/horizon/spherical/gl/IndexArray;
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcom/oculus/horizon/spherical/CubemapGeometry;->getIndexArray()Lcom/oculus/horizon/spherical/gl/IndexArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(FLcom/oculus/horizon/spherical/Quaternion;)Lcom/oculus/horizon/spherical/gl/VertexData;
    .locals 1

    .prologue
    .line 13
    invoke-static {p0, p1}, Lcom/oculus/horizon/spherical/CubemapGeometry;->getVertexData(FLcom/oculus/horizon/spherical/Quaternion;)Lcom/oculus/horizon/spherical/gl/VertexData;

    move-result-object v0

    return-object v0
.end method

.method private static getIndexArray()Lcom/oculus/horizon/spherical/gl/IndexArray;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 67
    const/16 v1, 0x24

    new-array v2, v1, [B

    move v1, v0

    .line 69
    :goto_0
    const/16 v3, 0x18

    if-ge v0, v3, :cond_0

    .line 70
    add-int/lit8 v3, v1, 0x0

    aput-byte v0, v2, v3

    .line 71
    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v0, 0x2

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 72
    add-int/lit8 v3, v1, 0x2

    add-int/lit8 v4, v0, 0x1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 74
    add-int/lit8 v3, v1, 0x3

    aput-byte v0, v2, v3

    .line 75
    add-int/lit8 v3, v1, 0x4

    add-int/lit8 v4, v0, 0x3

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 76
    add-int/lit8 v3, v1, 0x5

    add-int/lit8 v4, v0, 0x2

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 78
    add-int/lit8 v1, v1, 0x6

    .line 69
    add-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    goto :goto_0

    .line 80
    :cond_0
    new-instance v0, Lcom/oculus/horizon/spherical/gl/IndexArray;

    invoke-direct {v0, v2}, Lcom/oculus/horizon/spherical/gl/IndexArray;-><init>([B)V

    return-object v0
.end method

.method private static getVertexData(FLcom/oculus/horizon/spherical/Quaternion;)Lcom/oculus/horizon/spherical/gl/VertexData;
    .locals 13
    .param p1    # Lcom/oculus/horizon/spherical/Quaternion;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v12, 0x18

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 33
    const/high16 v0, 0x40000000    # 2.0f

    div-float v3, p0, v0

    .line 37
    new-array v4, v12, [I

    fill-array-data v4, :array_0

    .line 47
    const/16 v0, 0x48

    new-array v5, v0, [F

    move v0, v1

    move v2, v1

    .line 49
    :goto_0
    if-ge v0, v12, :cond_1

    .line 50
    aget v6, v4, v0

    .line 51
    new-array v7, v11, [F

    .line 52
    shr-int/lit8 v8, v6, 0x2

    and-int/lit8 v8, v8, 0x1

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    mul-float/2addr v8, v3

    aput v8, v7, v1

    .line 53
    shr-int/lit8 v8, v6, 0x1

    and-int/lit8 v8, v8, 0x1

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    mul-float/2addr v8, v3

    aput v8, v7, v9

    .line 54
    and-int/lit8 v6, v6, 0x1

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    mul-float/2addr v6, v3

    aput v6, v7, v10

    .line 55
    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p1, v7}, Lcom/oculus/horizon/spherical/Quaternion;->transformVector([F)V

    .line 58
    :cond_0
    add-int/lit8 v6, v2, 0x1

    aget v8, v7, v1

    aput v8, v5, v2

    .line 59
    add-int/lit8 v8, v6, 0x1

    aget v2, v7, v9

    aput v2, v5, v6

    .line 60
    add-int/lit8 v2, v8, 0x1

    aget v6, v7, v10

    aput v6, v5, v8

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_1
    new-instance v0, Lcom/oculus/horizon/spherical/gl/VertexData;

    invoke-direct {v0, v5, v11}, Lcom/oculus/horizon/spherical/gl/VertexData;-><init>([FI)V

    return-object v0

    .line 37
    nop

    :array_0
    .array-data 4
        0x5
        0x1
        0x3
        0x7
        0x0
        0x4
        0x6
        0x2
        0x6
        0x7
        0x3
        0x2
        0x0
        0x1
        0x5
        0x4
        0x4
        0x5
        0x7
        0x6
        0x1
        0x0
        0x2
        0x3
    .end array-data
.end method

.method public static newBuilder()Lcom/oculus/horizon/spherical/CubemapGeometry$Builder;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/oculus/horizon/spherical/CubemapGeometry$Builder;

    invoke-direct {v0}, Lcom/oculus/horizon/spherical/CubemapGeometry$Builder;-><init>()V

    return-object v0
.end method

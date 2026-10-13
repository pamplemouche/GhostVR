.class public Lcom/oculus/horizon/spherical/Quaternion;
.super Ljava/lang/Object;
.source "Quaternion.java"


# instance fields
.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p0}, Lcom/oculus/horizon/spherical/Quaternion;->setIdentity()V

    .line 10
    return-void
.end method


# virtual methods
.method public dot(Lcom/oculus/horizon/spherical/Quaternion;)F
    .locals 3

    .prologue
    .line 146
    iget v0, p0, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    iget v1, p1, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    iget v2, p1, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    iget v2, p1, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    iget v2, p1, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public fromArray([F)V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    .line 65
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    .line 66
    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    .line 67
    const/4 v0, 0x3

    aget v0, p1, v0

    iput v0, p0, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    .line 68
    return-void
.end method

.method public fromAxisRotation(FFFF)V
    .locals 4

    .prologue
    .line 50
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p1

    .line 51
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 52
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    iput v0, p0, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    .line 53
    mul-float v0, p2, v1

    iput v0, p0, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    .line 54
    mul-float v0, p3, v1

    iput v0, p0, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    .line 55
    mul-float v0, p4, v1

    iput v0, p0, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    .line 56
    return-void
.end method

.method public fromQuaternion(Lcom/oculus/horizon/spherical/Quaternion;)V
    .locals 1

    .prologue
    .line 35
    iget v0, p1, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    iput v0, p0, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    .line 36
    iget v0, p1, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    iput v0, p0, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    .line 37
    iget v0, p1, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    iput v0, p0, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    .line 38
    iget v0, p1, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    iput v0, p0, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    .line 39
    return-void
.end method

.method public leftMultiply(Lcom/oculus/horizon/spherical/Quaternion;)V
    .locals 6

    .prologue
    .line 168
    iget v0, p1, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    iget v1, p0, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p1, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p1, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 169
    iget v1, p1, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    mul-float/2addr v1, v2

    iget v2, p1, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    iget v3, p0, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    iget v3, p0, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    iget v3, p0, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 170
    iget v2, p1, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    iget v3, p0, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    mul-float/2addr v2, v3

    iget v3, p1, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    iget v4, p0, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p1, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    iget v4, p0, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p1, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    iget v4, p0, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 171
    iget v3, p1, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    iget v4, p0, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    iget v5, p0, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p1, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    iget v5, p0, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p1, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    iget v5, p0, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 172
    iput v0, p0, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    .line 173
    iput v1, p0, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    .line 174
    iput v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    .line 175
    iput v3, p0, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    .line 176
    return-void
.end method

.method public rightMultiply(Lcom/oculus/horizon/spherical/Quaternion;)V
    .locals 6

    .prologue
    .line 185
    iget v0, p0, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    iget v1, p1, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    iget v2, p1, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    iget v2, p1, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    iget v2, p1, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 186
    iget v1, p0, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    iget v2, p1, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    iget v3, p1, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    iget v3, p1, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    iget v3, p1, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 187
    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    iget v3, p1, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    iget v4, p1, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    iget v4, p1, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    iget v4, p1, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 188
    iget v3, p0, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    iget v4, p1, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    iget v5, p1, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    iget v5, p1, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    iget v5, p1, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 189
    iput v0, p0, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    .line 190
    iput v1, p0, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    .line 191
    iput v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    .line 192
    iput v3, p0, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    .line 193
    return-void
.end method

.method public setIdentity()V
    .locals 1

    .prologue
    .line 25
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    iput v0, p0, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    iput v0, p0, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    .line 27
    return-void
.end method

.method public slerp(Lcom/oculus/horizon/spherical/Quaternion;Lcom/oculus/horizon/spherical/Quaternion;F)V
    .locals 10

    .prologue
    .line 213
    invoke-virtual {p1, p2}, Lcom/oculus/horizon/spherical/Quaternion;->dot(Lcom/oculus/horizon/spherical/Quaternion;)F

    move-result v0

    float-to-double v0, v0

    .line 215
    const/4 v2, 0x4

    new-array v4, v2, [F

    .line 217
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 218
    neg-double v0, v0

    .line 219
    const/4 v2, 0x0

    iget v3, p2, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    neg-float v3, v3

    aput v3, v4, v2

    .line 220
    const/4 v2, 0x1

    iget v3, p2, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    neg-float v3, v3

    aput v3, v4, v2

    .line 221
    const/4 v2, 0x2

    iget v3, p2, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    neg-float v3, v3

    aput v3, v4, v2

    .line 222
    const/4 v2, 0x3

    iget v3, p2, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    neg-float v3, v3

    aput v3, v4, v2

    .line 229
    :goto_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v2, v2, v6

    if-lez v2, :cond_1

    .line 231
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v0, v0

    .line 232
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    .line 233
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    float-to-double v8, p3

    sub-double/2addr v2, v8

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    div-double/2addr v2, v6

    .line 234
    float-to-double v8, p3

    mul-double/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    div-double/2addr v0, v6

    .line 240
    :goto_1
    iget v5, p1, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    float-to-double v6, v5

    mul-double/2addr v6, v2

    const/4 v5, 0x0

    aget v5, v4, v5

    float-to-double v8, v5

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    double-to-float v5, v6

    iput v5, p0, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    .line 241
    iget v5, p1, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    float-to-double v6, v5

    mul-double/2addr v6, v2

    const/4 v5, 0x1

    aget v5, v4, v5

    float-to-double v8, v5

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    double-to-float v5, v6

    iput v5, p0, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    .line 242
    iget v5, p1, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    float-to-double v6, v5

    mul-double/2addr v6, v2

    const/4 v5, 0x2

    aget v5, v4, v5

    float-to-double v8, v5

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    double-to-float v5, v6

    iput v5, p0, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    .line 243
    iget v5, p1, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    float-to-double v6, v5

    mul-double/2addr v2, v6

    const/4 v5, 0x3

    aget v4, v4, v5

    float-to-double v4, v4

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    .line 244
    return-void

    .line 224
    :cond_0
    const/4 v2, 0x0

    iget v3, p2, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    aput v3, v4, v2

    .line 225
    const/4 v2, 0x1

    iget v3, p2, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    aput v3, v4, v2

    .line 226
    const/4 v2, 0x2

    iget v3, p2, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    aput v3, v4, v2

    .line 227
    const/4 v2, 0x3

    iget v3, p2, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    aput v3, v4, v2

    goto :goto_0

    .line 237
    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    float-to-double v2, p3

    sub-double v2, v0, v2

    .line 238
    float-to-double v0, p3

    goto :goto_1
.end method

.method public toMatrix([F)V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 119
    const/4 v0, 0x0

    iget v1, p0, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    mul-float/2addr v1, v4

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    mul-float/2addr v1, v2

    sub-float v1, v6, v1

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    mul-float/2addr v2, v4

    iget v3, p0, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, p1, v0

    .line 120
    const/4 v0, 0x1

    iget v1, p0, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    mul-float/2addr v1, v4

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    mul-float/2addr v2, v4

    iget v3, p0, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 121
    const/4 v0, 0x2

    iget v1, p0, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    mul-float/2addr v1, v4

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    mul-float/2addr v2, v4

    iget v3, p0, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, p1, v0

    .line 122
    const/4 v0, 0x3

    aput v5, p1, v0

    .line 124
    const/4 v0, 0x4

    iget v1, p0, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    mul-float/2addr v1, v4

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    mul-float/2addr v2, v4

    iget v3, p0, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, p1, v0

    .line 125
    const/4 v0, 0x5

    iget v1, p0, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    mul-float/2addr v1, v4

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    mul-float/2addr v1, v2

    sub-float v1, v6, v1

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    mul-float/2addr v2, v4

    iget v3, p0, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, p1, v0

    .line 126
    const/4 v0, 0x6

    iget v1, p0, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    mul-float/2addr v1, v4

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    mul-float/2addr v2, v4

    iget v3, p0, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 127
    const/4 v0, 0x7

    aput v5, p1, v0

    .line 129
    const/16 v0, 0x8

    iget v1, p0, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    mul-float/2addr v1, v4

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    mul-float/2addr v2, v4

    iget v3, p0, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 130
    const/16 v0, 0x9

    iget v1, p0, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    mul-float/2addr v1, v4

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    mul-float/2addr v2, v4

    iget v3, p0, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, p1, v0

    .line 131
    const/16 v0, 0xa

    iget v1, p0, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    mul-float/2addr v1, v4

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    mul-float/2addr v1, v2

    sub-float v1, v6, v1

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    mul-float/2addr v2, v4

    iget v3, p0, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, p1, v0

    .line 132
    const/16 v0, 0xb

    aput v5, p1, v0

    .line 134
    const/16 v0, 0xc

    aput v5, p1, v0

    .line 135
    const/16 v0, 0xd

    aput v5, p1, v0

    .line 136
    const/16 v0, 0xe

    aput v5, p1, v0

    .line 137
    const/16 v0, 0xf

    aput v6, p1, v0

    .line 138
    return-void
.end method

.method public transformVector([F)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 253
    iget v0, p0, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    iget v1, p0, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    mul-float/2addr v0, v1

    aget v1, p1, v6

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    mul-float/2addr v1, v5

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    mul-float/2addr v1, v2

    aget v2, p1, v8

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    mul-float/2addr v1, v5

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    mul-float/2addr v1, v2

    aget v2, p1, v7

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    mul-float/2addr v1, v2

    aget v2, p1, v6

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    mul-float/2addr v1, v5

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    mul-float/2addr v1, v2

    aget v2, p1, v7

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    mul-float/2addr v1, v5

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    mul-float/2addr v1, v2

    aget v2, p1, v8

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    mul-float/2addr v1, v2

    aget v2, p1, v6

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    mul-float/2addr v1, v2

    aget v2, p1, v6

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 262
    iget v1, p0, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    mul-float/2addr v1, v5

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    mul-float/2addr v1, v2

    aget v2, p1, v6

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    iget v3, p0, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    mul-float/2addr v2, v3

    aget v3, p1, v7

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    mul-float/2addr v2, v5

    iget v3, p0, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    mul-float/2addr v2, v3

    aget v3, p1, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    mul-float/2addr v2, v5

    iget v3, p0, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    mul-float/2addr v2, v3

    aget v3, p1, v6

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    iget v3, p0, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    mul-float/2addr v2, v3

    aget v3, p1, v7

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    iget v3, p0, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    mul-float/2addr v2, v3

    aget v3, p1, v7

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    mul-float/2addr v2, v5

    iget v3, p0, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    mul-float/2addr v2, v3

    aget v3, p1, v8

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    iget v3, p0, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    mul-float/2addr v2, v3

    aget v3, p1, v7

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 271
    iget v2, p0, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    mul-float/2addr v2, v5

    iget v3, p0, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    mul-float/2addr v2, v3

    aget v3, p1, v6

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    mul-float/2addr v3, v5

    iget v4, p0, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    mul-float/2addr v3, v4

    aget v4, p1, v7

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    iget v4, p0, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    mul-float/2addr v3, v4

    aget v4, p1, v8

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    mul-float/2addr v3, v5

    iget v4, p0, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    mul-float/2addr v3, v4

    aget v4, p1, v6

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    iget v4, p0, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    mul-float/2addr v3, v4

    aget v4, p1, v8

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    mul-float/2addr v3, v5

    iget v4, p0, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    mul-float/2addr v3, v4

    aget v4, p1, v7

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    iget v4, p0, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    mul-float/2addr v3, v4

    aget v4, p1, v8

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    iget v4, p0, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    mul-float/2addr v3, v4

    aget v4, p1, v8

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 280
    aput v0, p1, v6

    .line 281
    aput v1, p1, v7

    .line 282
    aput v2, p1, v8

    .line 283
    return-void
.end method

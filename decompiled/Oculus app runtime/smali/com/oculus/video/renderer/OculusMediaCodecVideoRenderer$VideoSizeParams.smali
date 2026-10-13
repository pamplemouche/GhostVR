.class Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;
.super Ljava/lang/Object;
.source "OculusMediaCodecVideoRenderer.java"

# interfaces
.implements Lcom/oculus/video/renderer/VideoDirectDecoder$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoSizeParams"
.end annotation


# instance fields
.field public bottomCrop:I

.field public height:I

.field public leftCrop:I

.field public pixelWidthHeightRatio:F

.field public presentationTimeUs:J

.field public rightCrop:I

.field public rotationDegrees:I

.field public topCrop:I

.field public width:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    invoke-virtual {p0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->clear()V

    return-void
.end method


# virtual methods
.method declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, -0x1

    .line 188
    :try_start_0
    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->set(IIIF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized copy(Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;)V
    .locals 4

    monitor-enter p0

    .line 192
    :try_start_0
    iget v0, p1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->width:I

    iget v1, p1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->height:I

    iget v2, p1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->rotationDegrees:I

    iget v3, p1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->pixelWidthHeightRatio:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->set(IIIF)V

    .line 193
    iget v0, p1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->topCrop:I

    iput v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->topCrop:I

    .line 194
    iget v0, p1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->leftCrop:I

    iput v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->leftCrop:I

    .line 195
    iget v0, p1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->bottomCrop:I

    iput v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->bottomCrop:I

    .line 196
    iget v0, p1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->rightCrop:I

    iput v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->rightCrop:I

    .line 197
    iget-wide v0, p1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->presentationTimeUs:J

    iput-wide v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->presentationTimeUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized equals(Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;)Z
    .locals 2

    monitor-enter p0

    .line 201
    :try_start_0
    iget v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->width:I

    iget v1, p1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->width:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->height:I

    iget v1, p1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->height:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->pixelWidthHeightRatio:F

    iget v1, p1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->pixelWidthHeightRatio:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->rotationDegrees:I

    iget p1, p1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->rotationDegrees:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getCropRect()Landroid/graphics/Rect;
    .locals 5

    monitor-enter p0

    .line 208
    :try_start_0
    iget v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->leftCrop:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->rightCrop:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->topCrop:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->bottomCrop:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->leftCrop:I

    iget v2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->topCrop:I

    iget v3, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->rightCrop:I

    iget v4, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->bottomCrop:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 212
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRenderTextureSizeChange(IIIIIIJ)V
    .locals 5

    monitor-enter p0

    .line 156
    :try_start_0
    iget-wide v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->presentationTimeUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 158
    monitor-exit p0

    return-void

    .line 160
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->width:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p1, :cond_2

    iget v0, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->height:I

    if-eq v0, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez p3, :cond_3

    if-nez p4, :cond_3

    if-nez p5, :cond_3

    if-nez p6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 168
    iget p3, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->width:I

    if-lt p1, p3, :cond_4

    iget p3, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->height:I

    if-ge p2, p3, :cond_5

    .line 170
    :cond_4
    iget p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->width:I

    .line 171
    iget p2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->height:I

    .line 175
    :cond_5
    iget p3, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->width:I

    sub-int p6, p1, p3

    .line 176
    iget p3, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->height:I

    sub-int p5, p2, p3

    const/4 p3, 0x0

    const/4 p4, 0x0

    :cond_6
    add-int v0, p6, p4

    sub-int/2addr p1, v0

    .line 178
    iput p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->width:I

    add-int p1, p5, p3

    sub-int/2addr p2, p1

    .line 179
    iput p2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->height:I

    .line 180
    iput p3, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->topCrop:I

    .line 181
    iput p4, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->leftCrop:I

    .line 182
    iput p5, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->bottomCrop:I

    .line 183
    iput p6, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->rightCrop:I

    .line 184
    iput-wide p7, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->presentationTimeUs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized set(IIIF)V
    .locals 0

    monitor-enter p0

    .line 140
    :try_start_0
    iput p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->width:I

    .line 141
    iput p2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->height:I

    .line 142
    iput p3, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->rotationDegrees:I

    .line 143
    iput p4, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->pixelWidthHeightRatio:F

    const-wide/16 p1, -0x1

    .line 144
    iput-wide p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->presentationTimeUs:J

    const/4 p1, -0x1

    .line 145
    iput p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->topCrop:I

    .line 146
    iput p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->leftCrop:I

    .line 147
    iput p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->bottomCrop:I

    .line 148
    iput p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$VideoSizeParams;->rightCrop:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

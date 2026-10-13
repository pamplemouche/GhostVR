.class public final synthetic Lla1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final A:LQa1;

.field public final w:Lma1;

.field public final x:I

.field public final y:I

.field public final z:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lma1;IILandroid/graphics/Bitmap;LQa1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lla1;->w:Lma1;

    iput p2, p0, Lla1;->x:I

    iput p3, p0, Lla1;->y:I

    iput-object p4, p0, Lla1;->z:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lla1;->A:LQa1;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lla1;->w:Lma1;

    iget v1, p0, Lla1;->x:I

    iget v2, p0, Lla1;->y:I

    iget-object v3, p0, Lla1;->z:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lla1;->A:LQa1;

    if-eqz v0, :cond_1

    .line 1
    new-instance v5, Landroid/media/FaceDetector;

    iget v6, v0, Lma1;->w:I

    invoke-direct {v5, v1, v2, v6}, Landroid/media/FaceDetector;-><init>(III)V

    .line 2
    iget v0, v0, Lma1;->w:I

    new-array v0, v0, [Landroid/media/FaceDetector$Face;

    .line 3
    invoke-virtual {v5, v3, v0}, Landroid/media/FaceDetector;->findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I

    move-result v1

    .line 4
    new-array v2, v1, [Lab1;

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_0

    .line 5
    new-instance v6, Lab1;

    invoke-direct {v6}, Lab1;-><init>()V

    aput-object v6, v2, v5

    .line 6
    aget-object v6, v0, v5

    .line 7
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    .line 8
    invoke-virtual {v6, v7}, Landroid/media/FaceDetector$Face;->getMidPoint(Landroid/graphics/PointF;)V

    .line 9
    invoke-virtual {v6}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v6

    .line 10
    aget-object v8, v2, v5

    new-instance v9, LX31;

    invoke-direct {v9}, LX31;-><init>()V

    iput-object v9, v8, Lab1;->b:LX31;

    .line 11
    aget-object v8, v2, v5

    iget-object v8, v8, Lab1;->b:LX31;

    iget v9, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v6

    iput v9, v8, LX31;->b:F

    .line 12
    aget-object v8, v2, v5

    iget-object v8, v8, Lab1;->b:LX31;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v6

    iput v7, v8, LX31;->c:F

    .line 13
    aget-object v7, v2, v5

    iget-object v7, v7, Lab1;->b:LX31;

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v6, v6, v8

    iput v6, v7, LX31;->d:F

    .line 14
    aget-object v7, v2, v5

    iget-object v7, v7, Lab1;->b:LX31;

    iput v6, v7, LX31;->e:F

    .line 15
    aget-object v6, v2, v5

    new-array v7, v3, [Lkb1;

    iput-object v7, v6, Lab1;->c:[Lkb1;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 16
    :cond_0
    check-cast v4, Lfb1;

    invoke-virtual {v4, v2}, Lfb1;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 17
    throw v0
.end method

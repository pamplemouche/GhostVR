.class public Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$RenderState;
.super Ljava/lang/Object;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenderState"
.end annotation


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public final bitmapRect:Landroid/graphics/Rect;

.field public final drawingRect:Landroid/graphics/RectF;

.field public final flip:Z

.field public final mirror:Z

.field public final viewRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Rect;Landroid/graphics/Bitmap;ZZ)V
    .locals 1

    .prologue
    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 714
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$RenderState;->drawingRect:Landroid/graphics/RectF;

    .line 715
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$RenderState;->viewRect:Landroid/graphics/RectF;

    .line 716
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$RenderState;->bitmapRect:Landroid/graphics/Rect;

    .line 717
    iput-object p4, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$RenderState;->bitmap:Landroid/graphics/Bitmap;

    .line 718
    iput-boolean p5, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$RenderState;->flip:Z

    .line 719
    iput-boolean p6, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$RenderState;->mirror:Z

    .line 720
    return-void
.end method


# virtual methods
.method public getDrawingCenter()Landroid/graphics/PointF;
    .locals 4

    .prologue
    .line 723
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$RenderState;->viewRect:Landroid/graphics/RectF;

    .line 724
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$RenderState;->drawingRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$RenderState;->viewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$RenderState;->drawingRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getScale()F
    .locals 2

    .prologue
    .line 728
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$RenderState;->drawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$RenderState;->bitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

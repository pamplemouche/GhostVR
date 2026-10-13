.class public LVb1;
.super Landroid/view/animation/Animation;
.source "PG"


# instance fields
.field public final synthetic w:LZb1;


# direct methods
.method public constructor <init>(LZb1;)V
    .locals 0

    .line 1
    iput-object p1, p0, LVb1;->w:LZb1;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 1
    iget-object p2, p0, LVb1;->w:LZb1;

    .line 2
    iget-boolean v0, p2, LZb1;->R:Z

    if-nez v0, :cond_0

    .line 3
    iget v0, p2, LZb1;->N:F

    .line 4
    iget p2, p2, LZb1;->J:I

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr v0, p2

    float-to-int p2, v0

    goto :goto_0

    .line 5
    :cond_0
    iget p2, p2, LZb1;->N:F

    float-to-int p2, p2

    .line 6
    :goto_0
    iget-object v0, p0, LVb1;->w:LZb1;

    iget v1, v0, LZb1;->I:I

    sub-int/2addr p2, v1

    int-to-float p2, p2

    mul-float p2, p2, p1

    float-to-int p2, p2

    add-int/2addr v1, p2

    .line 7
    iget-object p2, v0, LZb1;->G:LMb1;

    .line 8
    invoke-virtual {p2}, Landroid/widget/ImageView;->getTop()I

    move-result p2

    sub-int/2addr v1, p2

    .line 9
    iget-object p2, p0, LVb1;->w:LZb1;

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p2, v1, v0}, LZb1;->a(IZ)V

    .line 11
    iget-object p2, p0, LVb1;->w:LZb1;

    .line 12
    iget-object p2, p2, LZb1;->K:LRb1;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 13
    iget-object p1, p2, LRb1;->y:LQb1;

    .line 14
    iget p2, p1, LQb1;->q:F

    cmpl-float p2, v0, p2

    if-eqz p2, :cond_1

    .line 15
    iput v0, p1, LQb1;->q:F

    .line 16
    invoke-virtual {p1}, LQb1;->a()V

    :cond_1
    return-void
.end method

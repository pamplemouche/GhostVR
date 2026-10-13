.class public LMv;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:Landroid/graphics/PointF;

.field public c:F

.field public d:F

.field public e:F

.field public f:Ljava/util/List;


# direct methods
.method public constructor <init>(ILandroid/graphics/PointF;FFFF[LOv;FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LMv;->a:I

    iput-object p2, p0, LMv;->b:Landroid/graphics/PointF;

    iput p3, p0, LMv;->c:F

    iput p4, p0, LMv;->d:F

    iput p6, p0, LMv;->e:F

    invoke-static {p7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LMv;->f:Ljava/util/List;

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 p2, 0x0

    cmpl-float p3, p8, p2

    if-ltz p3, :cond_0

    cmpg-float p3, p8, p1

    :cond_0
    cmpl-float p3, p9, p2

    if-ltz p3, :cond_1

    cmpg-float p3, p9, p1

    :cond_1
    cmpl-float p2, p10, p2

    if-ltz p2, :cond_2

    cmpg-float p1, p10, p1

    if-gtz p1, :cond_2

    :cond_2
    return-void
.end method

.class public Lha;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Landroid/graphics/drawable/BitmapDrawable;

.field public b:F

.field public c:Landroid/graphics/Rect;

.field public d:Landroid/view/animation/Interpolator;

.field public e:J

.field public f:Landroid/graphics/Rect;

.field public g:I

.field public h:F

.field public i:F

.field public j:J

.field public k:Z

.field public l:Z

.field public m:Lga;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lha;->b:F

    .line 3
    iput v0, p0, Lha;->h:F

    .line 4
    iput v0, p0, Lha;->i:F

    .line 5
    iput-object p1, p0, Lha;->a:Landroid/graphics/drawable/BitmapDrawable;

    .line 6
    iput-object p2, p0, Lha;->f:Landroid/graphics/Rect;

    .line 7
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lha;->c:Landroid/graphics/Rect;

    .line 8
    iget-object p2, p0, Lha;->a:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 9
    iget p1, p0, Lha;->b:F

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 10
    iget-object p1, p0, Lha;->a:Landroid/graphics/drawable/BitmapDrawable;

    iget-object p2, p0, Lha;->c:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

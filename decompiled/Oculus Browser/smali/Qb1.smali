.class public LQb1;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/graphics/RectF;

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Paint;

.field public final d:Landroid/graphics/drawable/Drawable$Callback;

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:[I

.field public k:I

.field public l:F

.field public m:F

.field public n:F

.field public o:Z

.field public p:Landroid/graphics/Path;

.field public q:F

.field public r:D

.field public s:I

.field public t:I

.field public u:I

.field public final v:Landroid/graphics/Paint;

.field public w:I

.field public x:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, LQb1;->a:Landroid/graphics/RectF;

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, LQb1;->b:Landroid/graphics/Paint;

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, LQb1;->c:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, LQb1;->e:F

    .line 6
    iput v0, p0, LQb1;->f:F

    .line 7
    iput v0, p0, LQb1;->g:F

    const/high16 v0, 0x40a00000    # 5.0f

    .line 8
    iput v0, p0, LQb1;->h:F

    const/high16 v0, 0x40200000    # 2.5f

    .line 9
    iput v0, p0, LQb1;->i:F

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, LQb1;->v:Landroid/graphics/Paint;

    .line 11
    iput-object p1, p0, LQb1;->d:Landroid/graphics/drawable/Drawable$Callback;

    .line 12
    iget-object p1, p0, LQb1;->b:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 13
    iget-object p1, p0, LQb1;->b:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 14
    iget-object p1, p0, LQb1;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15
    iget-object p1, p0, LQb1;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 16
    iget-object p1, p0, LQb1;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 6
    iget-object v0, p0, LQb1;->d:Landroid/graphics/drawable/Drawable$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 1
    iput p1, p0, LQb1;->k:I

    .line 2
    iget-object v0, p0, LQb1;->j:[I

    aget p1, v0, p1

    iput p1, p0, LQb1;->x:I

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 3
    iget-boolean v0, p0, LQb1;->o:Z

    if-eq v0, p1, :cond_0

    .line 4
    iput-boolean p1, p0, LQb1;->o:Z

    .line 5
    invoke-virtual {p0}, LQb1;->a()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, LQb1;->l:F

    .line 2
    iput v0, p0, LQb1;->m:F

    .line 3
    iput v0, p0, LQb1;->n:F

    .line 4
    iput v0, p0, LQb1;->e:F

    .line 5
    invoke-virtual {p0}, LQb1;->a()V

    .line 6
    iput v0, p0, LQb1;->f:F

    .line 7
    invoke-virtual {p0}, LQb1;->a()V

    .line 8
    iput v0, p0, LQb1;->g:F

    .line 9
    invoke-virtual {p0}, LQb1;->a()V

    return-void
.end method

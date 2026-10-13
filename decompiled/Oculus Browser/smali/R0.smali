.class public LR0;
.super LU0;
.source "PG"


# instance fields
.field public d:[I

.field public e:Lc4;

.field public f:F

.field public g:Lc4;

.field public h:F

.field public i:I

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:Landroid/graphics/Paint$Cap;

.field public o:Landroid/graphics/Paint$Join;

.field public p:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, LU0;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LR0;->f:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    iput v1, p0, LR0;->h:F

    const/4 v2, 0x0

    .line 4
    iput v2, p0, LR0;->i:I

    .line 5
    iput v1, p0, LR0;->j:F

    .line 6
    iput v0, p0, LR0;->k:F

    .line 7
    iput v1, p0, LR0;->l:F

    .line 8
    iput v0, p0, LR0;->m:F

    .line 9
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, LR0;->n:Landroid/graphics/Paint$Cap;

    .line 10
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, LR0;->o:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    .line 11
    iput v0, p0, LR0;->p:F

    return-void
.end method

.method public constructor <init>(LR0;)V
    .locals 3

    .line 12
    invoke-direct {p0, p1}, LU0;-><init>(LU0;)V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, LR0;->f:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 14
    iput v1, p0, LR0;->h:F

    const/4 v2, 0x0

    .line 15
    iput v2, p0, LR0;->i:I

    .line 16
    iput v1, p0, LR0;->j:F

    .line 17
    iput v0, p0, LR0;->k:F

    .line 18
    iput v1, p0, LR0;->l:F

    .line 19
    iput v0, p0, LR0;->m:F

    .line 20
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, LR0;->n:Landroid/graphics/Paint$Cap;

    .line 21
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, LR0;->o:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    .line 22
    iput v0, p0, LR0;->p:F

    .line 23
    iget-object v0, p1, LR0;->d:[I

    iput-object v0, p0, LR0;->d:[I

    .line 24
    iget-object v0, p1, LR0;->e:Lc4;

    iput-object v0, p0, LR0;->e:Lc4;

    .line 25
    iget v0, p1, LR0;->f:F

    iput v0, p0, LR0;->f:F

    .line 26
    iget v0, p1, LR0;->h:F

    iput v0, p0, LR0;->h:F

    .line 27
    iget-object v0, p1, LR0;->g:Lc4;

    iput-object v0, p0, LR0;->g:Lc4;

    .line 28
    iget v0, p1, LR0;->i:I

    iput v0, p0, LR0;->i:I

    .line 29
    iget v0, p1, LR0;->j:F

    iput v0, p0, LR0;->j:F

    .line 30
    iget v0, p1, LR0;->k:F

    iput v0, p0, LR0;->k:F

    .line 31
    iget v0, p1, LR0;->l:F

    iput v0, p0, LR0;->l:F

    .line 32
    iget v0, p1, LR0;->m:F

    iput v0, p0, LR0;->m:F

    .line 33
    iget-object v0, p1, LR0;->n:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, LR0;->n:Landroid/graphics/Paint$Cap;

    .line 34
    iget-object v0, p1, LR0;->o:Landroid/graphics/Paint$Join;

    iput-object v0, p0, LR0;->o:Landroid/graphics/Paint$Join;

    .line 35
    iget p1, p1, LR0;->p:F

    iput p1, p0, LR0;->p:F

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, LR0;->g:Lc4;

    invoke-virtual {v0}, Lc4;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LR0;->e:Lc4;

    invoke-virtual {v0}, Lc4;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public a([I)Z
    .locals 2

    .line 2
    iget-object v0, p0, LR0;->g:Lc4;

    invoke-virtual {v0, p1}, Lc4;->a([I)Z

    move-result v0

    .line 3
    iget-object v1, p0, LR0;->e:Lc4;

    invoke-virtual {v1, p1}, Lc4;->a([I)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public getFillAlpha()F
    .locals 1

    .line 1
    iget v0, p0, LR0;->j:F

    return v0
.end method

.method public getFillColor()I
    .locals 1

    .line 1
    iget-object v0, p0, LR0;->g:Lc4;

    .line 2
    iget v0, v0, Lc4;->c:I

    return v0
.end method

.method public getStrokeAlpha()F
    .locals 1

    .line 1
    iget v0, p0, LR0;->h:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .line 1
    iget-object v0, p0, LR0;->e:Lc4;

    .line 2
    iget v0, v0, Lc4;->c:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 1
    iget v0, p0, LR0;->f:F

    return v0
.end method

.method public getTrimPathEnd()F
    .locals 1

    .line 1
    iget v0, p0, LR0;->l:F

    return v0
.end method

.method public getTrimPathOffset()F
    .locals 1

    .line 1
    iget v0, p0, LR0;->m:F

    return v0
.end method

.method public getTrimPathStart()F
    .locals 1

    .line 1
    iget v0, p0, LR0;->k:F

    return v0
.end method

.method public setFillAlpha(F)V
    .locals 0

    .line 1
    iput p1, p0, LR0;->j:F

    return-void
.end method

.method public setFillColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LR0;->g:Lc4;

    .line 2
    iput p1, v0, Lc4;->c:I

    return-void
.end method

.method public setStrokeAlpha(F)V
    .locals 0

    .line 1
    iput p1, p0, LR0;->h:F

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LR0;->e:Lc4;

    .line 2
    iput p1, v0, Lc4;->c:I

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0

    .line 1
    iput p1, p0, LR0;->f:F

    return-void
.end method

.method public setTrimPathEnd(F)V
    .locals 0

    .line 1
    iput p1, p0, LR0;->l:F

    return-void
.end method

.method public setTrimPathOffset(F)V
    .locals 0

    .line 1
    iput p1, p0, LR0;->m:F

    return-void
.end method

.method public setTrimPathStart(F)V
    .locals 0

    .line 1
    iput p1, p0, LR0;->k:F

    return-void
.end method

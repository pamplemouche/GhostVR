.class public Lcom/oculus/vrshell/panels/views/ShellProgressBarView;
.super Landroid/view/View;
.source "ShellProgressBarView.java"


# instance fields
.field private final mProgressPaint:Landroid/graphics/Paint;

.field private mProgressRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/oculus/vrshell/panels/views/ShellProgressBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/vrshell/panels/views/ShellProgressBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 62
    iput p1, p0, Lcom/oculus/vrshell/panels/views/ShellProgressBarView;->mProgressRatio:F

    .line 25
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oculus/vrshell/panels/views/ShellProgressBarView;->mProgressPaint:Landroid/graphics/Paint;

    .line 27
    iget-object p1, p0, Lcom/oculus/vrshell/panels/views/ShellProgressBarView;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/views/ShellProgressBarView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/oculus/vrshell/shellpanel/R$color;->oc_blue_2:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public getProgressRatio()F
    .locals 1

    .line 39
    iget v0, p0, Lcom/oculus/vrshell/panels/views/ShellProgressBarView;->mProgressRatio:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 49
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 51
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/views/ShellProgressBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oculus/vrshell/shellpanel/R$color;->oc_gray_e:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/oculus/vrshell/panels/views/ShellProgressBarView;->mProgressRatio:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    int-to-float v4, v0

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/oculus/vrshell/panels/views/ShellProgressBarView;->mProgressPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    .line 54
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setPaintColor(I)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/oculus/vrshell/panels/views/ShellProgressBarView;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/views/ShellProgressBarView;->invalidate()V

    return-void
.end method

.method public setProgressRatio(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 33
    iput p1, p0, Lcom/oculus/vrshell/panels/views/ShellProgressBarView;->mProgressRatio:F

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/views/ShellProgressBarView;->invalidate()V

    return-void
.end method

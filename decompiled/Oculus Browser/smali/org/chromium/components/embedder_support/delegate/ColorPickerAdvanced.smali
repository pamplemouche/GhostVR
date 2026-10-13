.class public Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;
.super Landroid/widget/LinearLayout;
.source "PG"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public A:I

.field public final B:[F

.field public w:LdT0;

.field public x:LdT0;

.field public y:LdT0;

.field public z:LlT0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 2
    iput-object p1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->B:[F

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const p1, 0x7f130217

    const/16 p2, 0x168

    .line 4
    invoke-virtual {p0, p1, p2, p0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->a(IILandroid/widget/SeekBar$OnSeekBarChangeListener;)LdT0;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->w:LdT0;

    const/16 p1, 0x64

    const p2, 0x7f130218

    .line 5
    invoke-virtual {p0, p2, p1, p0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->a(IILandroid/widget/SeekBar$OnSeekBarChangeListener;)LdT0;

    move-result-object p2

    iput-object p2, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->x:LdT0;

    const p2, 0x7f130219

    .line 6
    invoke-virtual {p0, p2, p1, p0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->a(IILandroid/widget/SeekBar$OnSeekBarChangeListener;)LdT0;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->y:LdT0;

    .line 7
    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->a()V

    return-void
.end method


# virtual methods
.method public a(IILandroid/widget/SeekBar$OnSeekBarChangeListener;)LdT0;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0e0058

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4
    new-instance v1, LdT0;

    invoke-direct {v1, v0, p1, p2, p3}, LdT0;-><init>(Landroid/view/View;IILandroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-object v1
.end method

.method public final a()V
    .locals 6

    .line 5
    iget-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->B:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/16 v2, 0x64

    .line 6
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v3, 0x0

    .line 7
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 8
    iget-object v4, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->B:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    mul-float v4, v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 9
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 10
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 11
    iget-object v2, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->w:LdT0;

    iget-object v4, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->B:[F

    aget v3, v4, v3

    invoke-virtual {v2, v3}, LdT0;->a(F)V

    .line 12
    iget-object v2, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->x:LdT0;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, LdT0;->a(F)V

    .line 13
    iget-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->y:LdT0;

    int-to-float v1, v1

    invoke-virtual {v0, v1}, LdT0;->a(F)V

    .line 14
    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->b()V

    .line 15
    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->c()V

    .line 16
    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->d()V

    return-void
.end method

.method public final b()V
    .locals 7

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 1
    iget-object v1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->B:[F

    const/4 v2, 0x1

    aget v3, v1, v2

    aput v3, v0, v2

    const/4 v2, 0x2

    .line 2
    aget v1, v1, v2

    aput v1, v0, v2

    const/4 v1, 0x7

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    int-to-float v5, v4

    const/high16 v6, 0x42700000    # 60.0f

    mul-float v5, v5, v6

    aput v5, v0, v3

    .line 3
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->w:LdT0;

    invoke-virtual {v0, v2}, LdT0;->a([I)V

    return-void
.end method

.method public final c()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 1
    iget-object v1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->B:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    aput v3, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v3, v0, v4

    const/4 v3, 0x2

    .line 2
    aget v1, v1, v3

    aput v1, v0, v3

    new-array v1, v3, [I

    .line 3
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    aput v3, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v4

    .line 4
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    aput v0, v1, v4

    .line 5
    iget-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->x:LdT0;

    invoke-virtual {v0, v1}, LdT0;->a([I)V

    return-void
.end method

.method public final d()V
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 1
    iget-object v1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->B:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    aput v3, v0, v2

    const/4 v3, 0x1

    .line 2
    aget v1, v1, v3

    aput v1, v0, v3

    const/4 v1, 0x0

    const/4 v4, 0x2

    aput v1, v0, v4

    new-array v1, v4, [I

    .line 3
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    aput v5, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v4

    .line 4
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    aput v0, v1, v3

    .line 5
    iget-object v0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->y:LdT0;

    invoke-virtual {v0, v1}, LdT0;->a([I)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    .line 1
    iget-object p1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->B:[F

    const/4 p2, 0x0

    iget-object p3, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->w:LdT0;

    invoke-virtual {p3}, LdT0;->a()F

    move-result p3

    aput p3, p1, p2

    .line 2
    iget-object p1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->B:[F

    const/4 p2, 0x1

    iget-object p3, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->x:LdT0;

    invoke-virtual {p3}, LdT0;->a()F

    move-result p3

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p3, v0

    aput p3, p1, p2

    .line 3
    iget-object p1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->B:[F

    const/4 p2, 0x2

    iget-object p3, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->y:LdT0;

    invoke-virtual {p3}, LdT0;->a()F

    move-result p3

    div-float/2addr p3, v0

    aput p3, p1, p2

    .line 4
    iget-object p1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->B:[F

    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    iput p1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->A:I

    .line 5
    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->b()V

    .line 6
    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->c()V

    .line 7
    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->d()V

    .line 8
    iget-object p1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->z:LlT0;

    if-eqz p1, :cond_0

    .line 9
    iget p2, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerAdvanced;->A:I

    .line 10
    invoke-interface {p1, p2}, LlT0;->a(I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

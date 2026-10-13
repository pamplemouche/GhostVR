.class public Lorg/chromium/ui/gfx/ViewConfigurationHelper;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Landroid/view/ViewConfiguration;

.field public b:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->a:Landroid/view/ViewConfiguration;

    .line 4
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->b:F

    return-void
.end method

.method public static synthetic a(Lorg/chromium/ui/gfx/ViewConfigurationHelper;)V
    .locals 7

    if-eqz p0, :cond_1

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->a:Landroid/view/ViewConfiguration;

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput-object v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->a:Landroid/view/ViewConfiguration;

    .line 5
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->b:F

    .line 7
    invoke-direct {p0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->getMaximumFlingVelocity()F

    move-result v2

    invoke-direct {p0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->getMinimumFlingVelocity()F

    move-result v3

    invoke-direct {p0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->getTouchSlop()F

    move-result v4

    .line 8
    invoke-direct {p0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->getDoubleTapSlop()F

    move-result v5

    invoke-direct {p0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->getMinScalingSpan()F

    move-result v6

    move-object v1, p0

    .line 9
    invoke-static/range {v1 .. v6}, LJ/N;->MtrEpb2R(Ljava/lang/Object;FFFFF)V

    :goto_0
    return-void

    :cond_1
    const/4 p0, 0x0

    .line 10
    throw p0
.end method

.method public static createWithListener()Lorg/chromium/ui/gfx/ViewConfigurationHelper;
    .locals 3

    .line 1
    new-instance v0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;

    invoke-direct {v0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;-><init>()V

    .line 2
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 3
    new-instance v2, Ltd1;

    invoke-direct {v2, v0}, Ltd1;-><init>(Lorg/chromium/ui/gfx/ViewConfigurationHelper;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-object v0
.end method

.method private getDoubleTapSlop()F
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->a:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->a(I)F

    move-result v0

    return v0
.end method

.method public static getDoubleTapTimeout()I
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    return v0
.end method

.method public static getLongPressTimeout()I
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    return v0
.end method

.method private getMaximumFlingVelocity()F
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->a:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->a(I)F

    move-result v0

    return v0
.end method

.method private getMinScalingSpan()F
    .locals 3

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070095

    .line 3
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x5

    const/high16 v2, 0x41400000    # 12.0f

    .line 4
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 5
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 6
    :goto_0
    invoke-virtual {p0, v0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->a(I)F

    move-result v0

    return v0
.end method

.method private getMinimumFlingVelocity()F
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->a:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->a(I)F

    move-result v0

    return v0
.end method

.method public static getTapTimeout()I
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    return v0
.end method

.method private getTouchSlop()F
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->a:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->a(I)F

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(I)F
    .locals 1

    int-to-float p1, p1

    .line 11
    iget v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->b:F

    div-float/2addr p1, v0

    return p1
.end method

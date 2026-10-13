.class public Lorg/chromium/ui/resources/ResourceManager;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LHe1;


# instance fields
.field public final a:Landroid/util/SparseArray;

.field public final b:Landroid/util/SparseArray;

.field public final c:F

.field public d:J


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;IJ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/resources/ResourceManager;->a:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/resources/ResourceManager;->b:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    iput v1, p0, Lorg/chromium/ui/resources/ResourceManager;->c:F

    .line 5
    new-instance v0, LSe1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, LSe1;-><init>(ILHe1;Landroid/content/res/Resources;)V

    .line 6
    iget-object p1, p0, Lorg/chromium/ui/resources/ResourceManager;->a:Landroid/util/SparseArray;

    .line 7
    iget v1, v0, LIe1;->a:I

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    new-instance p1, LNe1;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, LNe1;-><init>(ILHe1;)V

    .line 10
    iget-object v0, p0, Lorg/chromium/ui/resources/ResourceManager;->a:Landroid/util/SparseArray;

    .line 11
    iget v1, p1, LIe1;->a:I

    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    new-instance p1, LNe1;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p0}, LNe1;-><init>(ILHe1;)V

    .line 14
    iget-object v0, p0, Lorg/chromium/ui/resources/ResourceManager;->a:Landroid/util/SparseArray;

    .line 15
    iget v1, p1, LIe1;->a:I

    .line 16
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    new-instance p1, LUe1;

    const/4 v0, 0x3

    invoke-direct {p1, v0, p0, p2}, LUe1;-><init>(ILHe1;I)V

    .line 18
    iget-object p2, p0, Lorg/chromium/ui/resources/ResourceManager;->a:Landroid/util/SparseArray;

    .line 19
    iget v0, p1, LIe1;->a:I

    .line 20
    invoke-virtual {p2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    iput-wide p3, p0, Lorg/chromium/ui/resources/ResourceManager;->d:J

    return-void
.end method

.method public static create(Lorg/chromium/ui/base/WindowAndroid;J)Lorg/chromium/ui/resources/ResourceManager;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getDisplay()Lcd1;

    move-result-object p0

    .line 3
    iget-object p0, p0, Lcd1;->c:Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Point;->x:I

    .line 4
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 5
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 7
    new-instance v1, Lorg/chromium/ui/resources/ResourceManager;

    invoke-direct {v1, v0, p0, p1, p2}, Lorg/chromium/ui/resources/ResourceManager;-><init>(Landroid/content/res/Resources;IJ)V

    return-object v1

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Context should not be null during initialization."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private destroy()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/chromium/ui/resources/ResourceManager;->d:J

    return-void
.end method

.method private getNativePtr()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/ui/resources/ResourceManager;->d:J

    return-wide v0
.end method

.method private preloadResource(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/ui/resources/ResourceManager;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LIe1;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p2}, LIe1;->b(I)V

    :cond_0
    return-void
.end method

.method private resourceRequested(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/ui/resources/ResourceManager;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LIe1;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p2}, LIe1;->a(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(IILCe1;)V
    .locals 10

    if-nez p3, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-interface {p3}, LCe1;->c()Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Lorg/chromium/ui/resources/ResourceManager;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_2

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    iget-object v1, p0, Lorg/chromium/ui/resources/ResourceManager;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    :cond_2
    new-instance v1, LBe1;

    iget v2, p0, Lorg/chromium/ui/resources/ResourceManager;->c:F

    invoke-direct {v1, v2, p3}, LBe1;-><init>(FLCe1;)V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    iget-wide v0, p0, Lorg/chromium/ui/resources/ResourceManager;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    return-void

    .line 7
    :cond_3
    iget-wide v0, p0, Lorg/chromium/ui/resources/ResourceManager;->d:J

    .line 8
    invoke-interface {p3}, LCe1;->a()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 9
    invoke-interface {p3}, LCe1;->a()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-interface {p3}, LCe1;->d()J

    move-result-wide v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    .line 10
    invoke-static/range {v0 .. v9}, LJ/N;->MM7E4tBk(JLjava/lang/Object;IILjava/lang/Object;IIJ)V

    return-void
.end method

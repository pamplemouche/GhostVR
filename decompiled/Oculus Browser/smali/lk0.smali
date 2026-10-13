.class public Llk0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/content_public/browser/ImageDownloadCallback;


# instance fields
.field public a:Lorg/chromium/content_public/browser/WebContents;

.field public final b:I

.field public final c:I

.field public d:I

.field public e:Lkk0;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Llk0;->b:I

    .line 3
    iput p2, p0, Llk0;->c:I

    .line 4
    invoke-virtual {p0}, Llk0;->a()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;)D
    .locals 7

    .line 16
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const-wide v1, 0x3fe999999999999aL    # 0.8

    if-nez v0, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    iget v3, p0, Llk0;->b:I

    if-ge v0, v3, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_0

    .line 19
    :cond_1
    iget v4, p0, Llk0;->c:I

    if-gt v0, v4, :cond_2

    sub-int/2addr v0, v3

    int-to-double v5, v0

    mul-double v5, v5, v1

    sub-int/2addr v4, v3

    int-to-double v0, v4

    div-double/2addr v5, v0

    const-wide v0, 0x3fc999999999999aL    # 0.2

    add-double v1, v5, v0

    goto :goto_0

    :cond_2
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    int-to-double v3, v4

    mul-double v3, v3, v1

    int-to-double v0, v0

    div-double v1, v3, v0

    .line 20
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    .line 21
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v3, v3

    .line 22
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-double v5, p1

    div-double/2addr v5, v3

    mul-double v1, v1, v5

    return-wide v1
.end method

.method public final a()V
    .locals 1

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Llk0;->d:I

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Llk0;->e:Lkk0;

    return-void
.end method

.method public a(IILjava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 5

    .line 1
    iget p2, p0, Llk0;->d:I

    if-eq p1, p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 3
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const-wide/16 p3, 0x0

    const/4 p5, 0x0

    move-wide v0, p3

    move-object p3, p5

    .line 4
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Bitmap;

    .line 6
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 7
    invoke-virtual {p0, v2}, Llk0;->a(Landroid/graphics/Rect;)D

    move-result-wide v2

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    move-object p3, p4

    move-wide v0, v2

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Llk0;->e:Lkk0;

    check-cast p1, LDk0;

    if-eqz p1, :cond_3

    .line 9
    invoke-static {p3}, Lxk0;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p1, LDk0;->c:Landroid/graphics/Bitmap;

    .line 10
    iput-object p5, p1, LDk0;->d:Landroid/graphics/Bitmap;

    .line 11
    invoke-virtual {p1, p2}, LDk0;->a(Landroid/graphics/Bitmap;)V

    .line 12
    invoke-virtual {p0}, Llk0;->a()V

    return-void

    .line 13
    :cond_3
    throw p5
.end method

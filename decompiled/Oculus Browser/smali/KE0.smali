.class public LKE0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LLE0;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:I

.field public final c:LIE0;

.field public final d:Landroid/graphics/drawable/Drawable;

.field public final e:LWT;

.field public final f:Ljava/util/Map;

.field public final g:LXU0;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILIE0;)V
    .locals 4

    .line 1
    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacade;->get()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lorg/chromium/components/signin/AccountManagerFacade;->a:LnU0;

    check-cast v0, LdV0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, LKE0;->e:LWT;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LKE0;->f:Ljava/util/Map;

    .line 6
    iput-object p1, p0, LKE0;->a:Landroid/content/Context;

    .line 7
    iput p2, p0, LKE0;->b:I

    .line 8
    iput-object p3, p0, LKE0;->c:LIE0;

    const p3, 0x7f080258

    .line 9
    invoke-static {p1, p3}, Lsa;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 10
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 11
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    .line 12
    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 13
    invoke-virtual {p3, v3, v3, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 14
    invoke-virtual {p3, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 15
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p2, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 16
    iput-object p2, p0, LKE0;->d:Landroid/graphics/drawable/Drawable;

    .line 17
    iput-object v1, p0, LKE0;->g:LXU0;

    return-void

    .line 18
    :cond_0
    throw v1
.end method

.method public static a(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 13
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 14
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    .line 15
    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    int-to-float v4, p2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 16
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/4 v6, 0x1

    .line 17
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v6, -0x1

    .line 18
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    invoke-virtual {v2, v4, v4, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 20
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 21
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v3, v3, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, p1, v0, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 22
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)LGE0;
    .locals 3

    .line 7
    iget-object v0, p0, LKE0;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGE0;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, LGE0;

    iget-object v1, p0, LKE0;->d:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, v2}, LGE0;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 6

    if-eqz p1, :cond_0

    .line 23
    iget-object v0, p0, LKE0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, LKE0;->b:I

    invoke-static {v0, p1, v1}, LKE0;->a(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, p0, LKE0;->d:Landroid/graphics/drawable/Drawable;

    .line 25
    :goto_0
    iget-object v0, p0, LKE0;->c:LIE0;

    if-nez v0, :cond_1

    return-object p1

    .line 26
    :cond_1
    iget-object v0, v0, LIE0;->a:Landroid/graphics/Bitmap;

    .line 27
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 28
    iget-object v1, p0, LKE0;->c:LIE0;

    .line 29
    iget-object v1, v1, LIE0;->b:Landroid/graphics/Point;

    .line 30
    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v0

    iget v2, p0, LKE0;->b:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 31
    iget-object v2, p0, LKE0;->c:LIE0;

    .line 32
    iget-object v2, v2, LIE0;->b:Landroid/graphics/Point;

    .line 33
    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v0

    iget v3, p0, LKE0;->b:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 34
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 35
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 36
    iget v3, p0, LKE0;->b:I

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 37
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 38
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    .line 39
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 40
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 41
    div-int/lit8 v0, v0, 0x2

    .line 42
    iget-object v3, p0, LKE0;->c:LIE0;

    .line 43
    iget-object v4, v3, LIE0;->b:Landroid/graphics/Point;

    .line 44
    iget v5, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v5, v0

    .line 45
    iget v4, v4, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v0

    int-to-float v5, v5

    int-to-float v4, v4

    .line 46
    iget v3, v3, LIE0;->c:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    .line 47
    invoke-virtual {v2, v5, v4, v0, p1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 48
    iget-object p1, p0, LKE0;->c:LIE0;

    .line 49
    iget-object v0, p1, LIE0;->a:Landroid/graphics/Bitmap;

    .line 50
    iget-object p1, p1, LIE0;->b:Landroid/graphics/Point;

    .line 51
    iget v3, p1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    .line 52
    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    const/4 v4, 0x0

    .line 53
    invoke-virtual {v2, v0, v3, p1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 54
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, LKE0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method public a(LJE0;)V
    .locals 1

    .line 9
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 10
    iget-object v0, p0, LKE0;->e:LWT;

    invoke-virtual {v0}, LWT;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    sget-object v0, Lorg/chromium/chrome/browser/signin/ProfileDownloader;->a:LWT;

    invoke-virtual {v0, p0}, LWT;->a(Ljava/lang/Object;)Z

    .line 12
    :cond_0
    iget-object v0, p0, LKE0;->e:LWT;

    invoke-virtual {v0, p1}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 5

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, LKE0;->f:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, LKE0;->a:Landroid/content/Context;

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget v3, p0, LKE0;->b:I

    const/4 v4, 0x1

    .line 6
    invoke-static {v1, v2, v3, v4}, Lorg/chromium/chrome/browser/signin/ProfileDownloader;->a(Landroid/content/Context;Ljava/lang/String;IZ)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(LJE0;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-object v0, p0, LKE0;->e:LWT;

    invoke-virtual {v0, p1}, LWT;->b(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, LKE0;->e:LWT;

    invoke-virtual {p1}, LWT;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    sget-object p1, Lorg/chromium/chrome/browser/signin/ProfileDownloader;->a:LWT;

    invoke-virtual {p1, p0}, LWT;->b(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

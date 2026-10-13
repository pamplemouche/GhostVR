.class public LCa0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field public b:Landroid/graphics/Bitmap;

.field public c:Landroid/graphics/Bitmap;

.field public d:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    invoke-static {p2}, LMm0;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 2
    iget-object v1, p0, LCa0;->a:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    iget-object v1, p0, LCa0;->b:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 3
    iget-object v1, p0, LCa0;->c:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    iget-object v1, p0, LCa0;->d:Landroid/graphics/Bitmap;

    :goto_0
    if-eqz v1, :cond_3

    return-object v1

    .line 4
    :cond_3
    invoke-static {p2}, LMm0;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    const p2, 0x7f0800ba

    goto :goto_1

    :cond_4
    const p2, 0x7f0800d4

    .line 5
    :goto_1
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 7
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 8
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz p3, :cond_5

    const v3, 0x7f060079

    goto :goto_2

    :cond_5
    const v3, 0x7f060084

    .line 9
    :goto_2
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 10
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 11
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, p1, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 p1, 0x0

    .line 12
    invoke-virtual {v2, p2, p1, p1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz v0, :cond_6

    if-eqz p3, :cond_6

    .line 13
    iput-object v1, p0, LCa0;->a:Landroid/graphics/Bitmap;

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_7

    .line 14
    iput-object v1, p0, LCa0;->b:Landroid/graphics/Bitmap;

    goto :goto_3

    :cond_7
    if-eqz p3, :cond_8

    .line 15
    iput-object v1, p0, LCa0;->c:Landroid/graphics/Bitmap;

    goto :goto_3

    .line 16
    :cond_8
    iput-object v1, p0, LCa0;->d:Landroid/graphics/Bitmap;

    :goto_3
    return-object v1
.end method

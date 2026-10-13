.class public abstract LEa0;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Landroid/content/res/Resources;)LCM0;
    .locals 8

    const v0, 0x7f070085

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 2
    div-int/lit8 v4, v3, 0x2

    const v0, 0x7f070086

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 4
    new-instance v7, LCM0;

    const v1, 0x7f060075

    .line 5
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    int-to-float v6, v0

    move-object v1, v7

    move v2, v3

    .line 6
    invoke-direct/range {v1 .. v6}, LCM0;-><init>(IIIIF)V

    return-object v7
.end method

.method public static a(Landroid/graphics/Bitmap;Ljava/lang/String;ILCM0;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 7
    iget-object p0, p3, LCM0;->e:Landroid/graphics/Paint;

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    invoke-virtual {p3, p1, v0}, LCM0;->a(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 9
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, p4, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1

    .line 10
    :cond_0
    invoke-static {p0, p5, p5, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    const p1, 0x7f0700b3

    .line 11
    invoke-virtual {p4, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 12
    new-instance p2, Ly4;

    invoke-direct {p2, p4, p0}, Ly4;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    int-to-float p0, p1

    .line 13
    invoke-virtual {p2, p0}, Lz4;->a(F)V

    return-object p2
.end method

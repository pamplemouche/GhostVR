.class public Lfd1;
.super Lcd1;
.source "PG"


# static fields
.field public static n:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Landroid/view/Display;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    invoke-direct {p0, p1}, Lcd1;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Display;)V
    .locals 11

    .line 1
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 2
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 5
    sget-object v2, Lfd1;->n:Ljava/lang/Float;

    const/4 v3, 0x0

    .line 6
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v2, :cond_2

    .line 7
    invoke-static {}, LwT;->c()LwT;

    move-result-object v2

    const-string v7, "force-device-scale-factor"

    invoke-virtual {v2, v7}, LwT;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 8
    sput-object v4, Lfd1;->n:Ljava/lang/Float;

    goto :goto_2

    .line 9
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    sput-object v7, Lfd1;->n:Ljava/lang/Float;

    .line 10
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    cmpg-float v7, v7, v3

    if-gtz v7, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    :catch_0
    :goto_0
    const/4 v7, 0x1

    :goto_1
    if-eqz v7, :cond_2

    const-string v7, "Ignoring invalid forced DIP scale \'"

    const-string v8, "\'"

    .line 11
    invoke-static {v7, v2, v8}, LZi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v7, v6, [Ljava/lang/Object;

    const-string v8, "DisplayAndroid"

    invoke-static {v8, v2, v7}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    sput-object v4, Lfd1;->n:Ljava/lang/Float;

    .line 13
    :cond_2
    :goto_2
    sget-object v2, Lfd1;->n:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_4

    .line 14
    sget-object v2, Lfd1;->n:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 15
    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_5

    .line 16
    invoke-static {p1}, LBU;->a(Landroid/view/Display;)Z

    move-result v2

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    .line 17
    :goto_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    const/4 v7, 0x0

    if-lt v3, v4, :cond_6

    .line 18
    invoke-virtual {p1}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v3

    .line 19
    invoke-virtual {p1}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object v9, v3

    move-object v10, v4

    goto :goto_5

    :cond_6
    move-object v9, v7

    move-object v10, v9

    .line 20
    :goto_5
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/16 v0, 0x18

    if-ne v5, v5, :cond_7

    goto :goto_6

    .line 21
    :cond_7
    new-instance v4, Landroid/graphics/PixelFormat;

    invoke-direct {v4}, Landroid/graphics/PixelFormat;-><init>()V

    .line 22
    invoke-static {v5, v4}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 23
    invoke-static {v5}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v7

    if-nez v7, :cond_8

    iget v0, v4, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    goto :goto_6

    :cond_8
    if-eq v5, v5, :cond_c

    const/16 v4, 0x2b

    if-eq v5, v4, :cond_b

    const/4 v4, 0x6

    if-eq v5, v4, :cond_a

    const/4 v4, 0x7

    if-eq v5, v4, :cond_9

    goto :goto_6

    :cond_9
    const/16 v0, 0xc

    goto :goto_6

    :cond_a
    const/16 v0, 0xf

    goto :goto_6

    :cond_b
    const/16 v0, 0x1e

    .line 24
    :cond_c
    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    const/16 v6, 0x8

    goto :goto_7

    :pswitch_1
    const/4 v6, 0x2

    goto :goto_7

    :pswitch_2
    const/4 v6, 0x4

    goto :goto_7

    :pswitch_3
    const/4 v6, 0x5

    .line 25
    :goto_7
    :pswitch_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x0

    .line 26
    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    move-object v0, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, p1

    .line 27
    invoke-super/range {v0 .. v10}, Lcd1;->a(Landroid/graphics/Point;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Float;Landroid/view/Display$Mode;Ljava/util/List;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

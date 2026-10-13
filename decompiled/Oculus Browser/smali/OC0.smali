.class public LOC0;
.super LXx0;
.source "PG"

# interfaces
.implements Lorg/chromium/chrome/browser/favicon/FaviconHelper$FaviconImageCallback;


# instance fields
.field public final n0:LyC0;

.field public final o0:LuC0;

.field public p0:LDa0;

.field public q0:Z

.field public r0:I


# direct methods
.method public constructor <init>(Landroid/content/Context;LyC0;LuC0;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, LXx0;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, LOC0;->n0:LyC0;

    .line 3
    iput-object p3, p0, LOC0;->o0:LuC0;

    const p2, 0x7f0e01e0

    .line 4
    iput p2, p0, Landroid/support/v7/preference/Preference;->c0:I

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700b6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, LOC0;->r0:I

    .line 6
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->a(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object p1, p0, LOC0;->n0:LyC0;

    invoke-virtual {p1}, LyC0;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, LOC0;->n0:LyC0;

    .line 9
    iget-object p1, p1, LyC0;->x:LzC0;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, LzC0;->d()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 11
    iget-object p3, p0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    const v0, 0x7f130697

    .line 12
    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, p2

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/preference/Preference;)I
    .locals 6

    .line 1
    instance-of v0, p1, LOC0;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference;)I

    move-result p1

    return p1

    .line 3
    :cond_0
    check-cast p1, LOC0;

    .line 4
    iget-object v0, p0, LOC0;->o0:LuC0;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, LuC0;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5
    iget-object v0, p0, LOC0;->n0:LyC0;

    iget-object p1, p1, LOC0;->n0:LyC0;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    if-ne v0, p1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, LyC0;->c()J

    move-result-wide v2

    invoke-virtual {v0}, LyC0;->c()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-gez p1, :cond_2

    const/4 v1, -0x1

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_4
    const/4 p1, 0x0

    .line 7
    throw p1

    .line 8
    :cond_5
    iget-object v0, p0, LOC0;->n0:LyC0;

    iget-object p1, p1, LOC0;->n0:LyC0;

    invoke-virtual {v0, p1}, LyC0;->a(LyC0;)I

    move-result p1

    return p1
.end method

.method public a(LGc;)V
    .locals 9

    .line 9
    invoke-super {p0, p1}, LXx0;->a(LGc;)V

    const v0, 0x7f0b04db

    .line 10
    invoke-virtual {p1, v0}, LGc;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v1, p0, LOC0;->o0:LuC0;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, LuC0;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    iget-object v1, p0, LOC0;->n0:LyC0;

    invoke-virtual {v1}, LyC0;->c()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 14
    iget-object v3, p0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    .line 15
    invoke-static {v3, v1, v2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41500000    # 13.0f

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    :cond_0
    iget-boolean v0, p0, LOC0;->q0:Z

    if-nez v0, :cond_2

    .line 19
    new-instance v0, LDa0;

    invoke-direct {v0}, LDa0;-><init>()V

    iput-object v0, p0, LOC0;->p0:LDa0;

    .line 20
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v1

    invoke-virtual {p0}, LOC0;->w()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, LOC0;->r0:I

    .line 21
    invoke-virtual {v0, v1, v2, v3, p0}, LDa0;->a(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;ILorg/chromium/chrome/browser/favicon/FaviconHelper$FaviconImageCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 22
    iget-object v0, p0, LOC0;->p0:LDa0;

    invoke-virtual {v0}, LDa0;->a()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, LOC0;->p0:LDa0;

    .line 24
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    .line 25
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 27
    iget v2, p0, LOC0;->r0:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 28
    new-instance v8, LCM0;

    const/high16 v1, 0x3e000000    # 0.125f

    int-to-float v2, v4

    mul-float v1, v1, v2

    .line 29
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v5

    const v6, -0x69696a

    const/high16 v1, 0x3f200000    # 0.625f

    mul-float v2, v2, v1

    .line 30
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object v1, v8

    move-object v2, v0

    move v3, v4

    invoke-direct/range {v1 .. v7}, LCM0;-><init>(Landroid/content/res/Resources;IIIII)V

    .line 31
    invoke-virtual {p0}, LOC0;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, LCM0;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 32
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v2}, Landroid/support/v7/preference/Preference;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, LOC0;->q0:Z

    .line 34
    :cond_2
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    .line 35
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v0, v0, v1

    .line 36
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const v1, 0x1020006

    .line 37
    invoke-virtual {p1, v1}, LGc;->c(I)Landroid/view/View;

    move-result-object p1

    .line 38
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, p1}, LOC0;->a(Landroid/support/v7/preference/Preference;)I

    move-result p1

    return p1
.end method

.method public onFaviconAvailable(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object p2, p0, LOC0;->p0:LDa0;

    invoke-virtual {p2}, LDa0;->a()V

    const/4 p2, 0x0

    .line 2
    iput-object p2, p0, LOC0;->p0:LDa0;

    .line 3
    iget-object p2, p0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    .line 4
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 6
    iget v0, p0, LOC0;->r0:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 7
    new-instance p1, LCM0;

    const/high16 v0, 0x3e000000    # 0.125f

    int-to-float v1, v3

    mul-float v0, v0, v1

    .line 8
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    const v5, -0x69696a

    const/high16 v0, 0x3f200000    # 0.625f

    mul-float v1, v1, v0

    .line 9
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v6

    move-object v0, p1

    move-object v1, p2

    move v2, v3

    invoke-direct/range {v0 .. v6}, LCM0;-><init>(Landroid/content/res/Resources;IIIII)V

    .line 10
    invoke-virtual {p0}, LOC0;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, LCM0;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 11
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final w()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, LOC0;->n0:LyC0;

    .line 2
    iget-object v0, v0, LyC0;->w:LzC0;

    .line 3
    invoke-virtual {v0}, LzC0;->b()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/net/Uri;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

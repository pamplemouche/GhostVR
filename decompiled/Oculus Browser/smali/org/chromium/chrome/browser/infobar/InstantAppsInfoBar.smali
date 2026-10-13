.class public Lorg/chromium/chrome/browser/infobar/InstantAppsInfoBar;
.super Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;
.source "PG"


# instance fields
.field public J:Lorg/chromium/chrome/browser/instantapps/InstantAppsBannerData;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/instantapps/InstantAppsBannerData;)V
    .locals 8

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v7}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;-><init>(IILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/InstantAppsInfoBar;->J:Lorg/chromium/chrome/browser/instantapps/InstantAppsBannerData;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public static create(Lorg/chromium/chrome/browser/instantapps/InstantAppsBannerData;)Lorg/chromium/chrome/browser/infobar/InfoBar;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/infobar/InstantAppsInfoBar;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/infobar/InstantAppsInfoBar;-><init>(Lorg/chromium/chrome/browser/instantapps/InstantAppsBannerData;)V

    return-object v0
.end method


# virtual methods
.method public a(LUf0;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->a(LUf0;)V

    .line 2
    iget-object v0, p1, LUf0;->J:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LTf0;

    .line 4
    iget v1, p1, LUf0;->y:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    iget v1, p1, LUf0;->z:I

    iput v1, v0, LTf0;->b:I

    .line 7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07014f

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 9
    iget-object v1, p1, LUf0;->I:Landroid/widget/TextView;

    invoke-static {}, Lwc1;->a()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 10
    iget-object v1, p1, LUf0;->I:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 11
    iget-object v1, p1, LUf0;->I:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 12
    iget-object v1, p1, LUf0;->I:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 13
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InstantAppsInfoBar;->J:Lorg/chromium/chrome/browser/instantapps/InstantAppsBannerData;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v1}, LUf0;->a(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p1, LUf0;->G:LRf0;

    .line 15
    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/InstantAppsInfoBar;->J:Lorg/chromium/chrome/browser/instantapps/InstantAppsBannerData;

    if-eqz v2, :cond_3

    .line 16
    invoke-static {v1}, LJ/N;->MNXObKbV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-virtual {v0, v2}, LRf0;->a(Ljava/lang/CharSequence;)Landroid/view/View;

    .line 18
    iget-object p1, p1, LUf0;->K:Lorg/chromium/chrome/browser/ui/widget/DualControlLayout;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const v0, 0x7f0b0096

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/chromium/ui/widget/ButtonCompat;

    .line 20
    :goto_1
    iget-object p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->C:Landroid/content/Context;

    const v0, 0x7f06001d

    .line 21
    invoke-static {p1, v0}, Lsa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 22
    iget-object v0, v1, Lorg/chromium/ui/widget/ButtonCompat;->y:Lif1;

    .line 23
    iget-object v1, v0, Lif1;->b:Landroid/content/res/ColorStateList;

    if-ne p1, v1, :cond_2

    goto :goto_2

    .line 24
    :cond_2
    iput-object p1, v0, Lif1;->b:Landroid/content/res/ColorStateList;

    .line 25
    iget-object v0, v0, Lif1;->c:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :goto_2
    return-void

    .line 26
    :cond_3
    throw v1

    .line 27
    :cond_4
    throw v1
.end method

.method public a(LUf0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 28
    new-instance p3, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0800ef

    .line 29
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x2

    .line 30
    invoke-virtual {p1, p2, p3, v0}, LUf0;->a(Ljava/lang/String;Landroid/view/View;I)V

    return-void
.end method

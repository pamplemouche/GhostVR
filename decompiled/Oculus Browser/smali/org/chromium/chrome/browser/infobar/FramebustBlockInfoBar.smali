.class public Lorg/chromium/chrome/browser/infobar/FramebustBlockInfoBar;
.super Lorg/chromium/chrome/browser/infobar/InfoBar;
.source "PG"


# instance fields
.field public final G:Ljava/lang/String;

.field public H:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const v1, 0x7f08023d

    const v2, 0x7f0600e9

    .line 1
    invoke-direct {p0, v1, v2, v0, v0}, Lorg/chromium/chrome/browser/infobar/InfoBar;-><init>(IILjava/lang/CharSequence;Landroid/graphics/Bitmap;)V

    .line 2
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/FramebustBlockInfoBar;->G:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;)Lorg/chromium/chrome/browser/infobar/FramebustBlockInfoBar;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/infobar/FramebustBlockInfoBar;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/infobar/FramebustBlockInfoBar;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(LUf0;)V
    .locals 5

    .line 8
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->C:Landroid/content/Context;

    const v1, 0x7f13051c

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, LUf0;->a(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p1}, LUf0;->a()LRf0;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->C:Landroid/content/Context;

    .line 13
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e00dc

    const/4 v3, 0x0

    .line 14
    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 15
    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/FramebustBlockInfoBar;->G:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 16
    iget-object v3, p0, Lorg/chromium/chrome/browser/infobar/FramebustBlockInfoBar;->G:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "://"

    .line 17
    invoke-static {v2}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/infobar/FramebustBlockInfoBar;->G:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, ""

    .line 18
    :cond_0
    invoke-static {v3}, LJ/N;->MN7bz_Mm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0b04d8

    .line 20
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 21
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0b04d6

    .line 22
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 23
    check-cast v2, Lorg/chromium/chrome/browser/infobar/TextViewEllipsizerSafe;

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/infobar/TextViewEllipsizerSafe;->a(Ljava/lang/String;)V

    .line 24
    new-instance v2, Lff0;

    invoke-direct {v2, p0}, Lff0;-><init>(Lorg/chromium/chrome/browser/infobar/FramebustBlockInfoBar;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 26
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->C:Landroid/content/Context;

    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f13013e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 28
    invoke-virtual {p1, v0, v1}, LUf0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lpf0;)V
    .locals 2

    .line 1
    new-instance v0, Lof0;

    invoke-direct {v0, p1}, Lof0;-><init>(Lpf0;)V

    .line 2
    iget-object p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->C:Landroid/content/Context;

    const v1, 0x7f13051d

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    iput-object p1, v0, Lof0;->b:Ljava/lang/CharSequence;

    .line 5
    new-instance p1, Lgf0;

    invoke-direct {p1, p0}, Lgf0;-><init>(Lorg/chromium/chrome/browser/infobar/FramebustBlockInfoBar;)V

    const v1, 0x7f13029d

    .line 6
    invoke-virtual {v0, v1, p1}, Lof0;->a(ILorg/chromium/base/Callback;)Lof0;

    .line 7
    invoke-virtual {v0}, Lof0;->a()V

    return-void
.end method

.method public b(Z)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/infobar/InfoBar;->b(I)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/FramebustBlockInfoBar;->H:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/FramebustBlockInfoBar;->H:Z

    .line 3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBar;->h()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/infobar/InfoBar;->a(Landroid/view/View;)V

    return-void

    .line 4
    :cond_0
    invoke-super {p0}, Lorg/chromium/chrome/browser/infobar/InfoBar;->d()V

    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/FramebustBlockInfoBar;->H:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

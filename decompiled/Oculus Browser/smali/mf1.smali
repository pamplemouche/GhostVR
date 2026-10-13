.class public Lmf1;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Landroid/widget/Toast;

.field public b:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Toast;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lmf1;->a:Landroid/widget/Toast;

    .line 3
    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Landroid/widget/FrameLayout;

    new-instance v1, Llf1;

    invoke-direct {v1, p0, p1}, Llf1;-><init>(Lmf1;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmf1;->b:Landroid/view/ViewGroup;

    .line 5
    invoke-virtual {p2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmf1;->a(Landroid/view/View;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lmf1;->a:Landroid/widget/Toast;

    .line 7
    invoke-virtual {p1}, Landroid/widget/Toast;->getGravity()I

    move-result p2

    iget-object v0, p0, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getXOffset()I

    move-result v0

    iget-object v1, p0, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getYOffset()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    .line 8
    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/Toast;->setGravity(III)V

    return-void
.end method

.method public static a(Landroid/content/Context;II)Lmf1;
    .locals 1

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lmf1;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Lmf1;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;I)Lmf1;
    .locals 2

    .line 7
    new-instance v0, Lmf1;

    invoke-static {}, Lnf1;->a()Lnf1;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 9
    invoke-direct {v0, p0, p1}, Lmf1;-><init>(Landroid/content/Context;Landroid/widget/Toast;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    .line 10
    throw p0
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;Ljava/lang/CharSequence;)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 14
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 17
    aget v6, v4, v0

    div-int/lit8 v7, v1, 0x2

    const/4 v8, 0x3

    if-ge v6, v7, :cond_1

    const/4 v6, 0x3

    goto :goto_0

    :cond_1
    const/4 v6, 0x5

    .line 18
    :goto_0
    aget v9, v4, v0

    if-ge v9, v7, :cond_2

    .line 19
    aget v1, v4, v0

    div-int/2addr v5, v3

    add-int/2addr v5, v1

    goto :goto_1

    .line 20
    :cond_2
    aget v7, v4, v0

    sub-int/2addr v1, v7

    div-int/2addr v5, v3

    sub-int v5, v1, v5

    :goto_1
    const/4 v1, 0x1

    .line 21
    aget v7, v4, v1

    div-int/2addr v2, v3

    if-ge v7, v2, :cond_3

    aget v2, v4, v1

    div-int/2addr p1, v3

    add-int/2addr p1, v2

    goto :goto_2

    .line 22
    :cond_3
    aget v2, v4, v1

    mul-int/lit8 p1, p1, 0x3

    div-int/2addr p1, v3

    sub-int p1, v2, p1

    .line 23
    :goto_2
    invoke-static {p0, p2, v0}, Lmf1;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Lmf1;

    move-result-object p0

    or-int/lit8 p2, v6, 0x30

    .line 24
    iget-object v0, p0, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {v0, p2, v5, p1}, Landroid/widget/Toast;->setGravity(III)V

    .line 25
    iget-object p0, p0, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v1
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmf1;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lmf1;->b:Landroid/view/ViewGroup;

    const/4 v1, -0x2

    invoke-virtual {v0, p1, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 4
    iget-object p1, p0, Lmf1;->a:Landroid/widget/Toast;

    iget-object v0, p0, Lmf1;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lmf1;->a:Landroid/widget/Toast;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.class public LBZ;
.super Landroid/widget/BaseAdapter;
.source "PG"


# instance fields
.field public w:Ljava/lang/Integer;

.field public final synthetic x:LCZ;


# direct methods
.method public synthetic constructor <init>(LCZ;LzZ;)V
    .locals 0

    .line 1
    iput-object p1, p0, LBZ;->x:LCZ;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, LBZ;->x:LCZ;

    .line 2
    iget-object v0, v0, LCZ;->A:LS01;

    .line 3
    invoke-virtual {v0}, LS01;->a()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, LBZ;->x:LCZ;

    .line 2
    iget-object v0, v0, LCZ;->A:LS01;

    .line 3
    iget-object v0, v0, LS01;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/content_public/browser/NavigationEntry;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, LBZ;->x:LCZ;

    .line 2
    iget-object v0, v0, LCZ;->A:LS01;

    .line 3
    iget-object v0, v0, LS01;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/content_public/browser/NavigationEntry;

    .line 4
    iget p1, p1, Lorg/chromium/content_public/browser/NavigationEntry;->a:I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v2, 0x7f0e011e

    .line 2
    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 3
    new-instance p3, LAZ;

    invoke-direct {p3, v0}, LAZ;-><init>(LzZ;)V

    .line 4
    iput-object p2, p3, LAZ;->a:Landroid/view/View;

    const v2, 0x7f0b01bc

    .line 5
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p3, LAZ;->b:Landroid/widget/ImageView;

    const v2, 0x7f0b0199

    .line 6
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p3, LAZ;->c:Landroid/widget/TextView;

    .line 7
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LAZ;

    .line 9
    :goto_0
    iget-object v2, p0, LBZ;->x:LCZ;

    .line 10
    iget-object v2, v2, LCZ;->A:LS01;

    .line 11
    iget-object v2, v2, LS01;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/content_public/browser/NavigationEntry;

    .line 12
    iget-object v3, p3, LAZ;->c:Landroid/widget/TextView;

    .line 13
    iget-object v4, v2, Lorg/chromium/content_public/browser/NavigationEntry;->d:Ljava/lang/String;

    .line 14
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 15
    iget-object v4, v2, Lorg/chromium/content_public/browser/NavigationEntry;->c:Ljava/lang/String;

    .line 16
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 17
    iget-object v4, v2, Lorg/chromium/content_public/browser/NavigationEntry;->b:Ljava/lang/String;

    .line 18
    :cond_2
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v3, p3, LAZ;->b:Landroid/widget/ImageView;

    .line 20
    iget-object v4, v2, Lorg/chromium/content_public/browser/NavigationEntry;->e:Landroid/graphics/Bitmap;

    .line 21
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 22
    iget v2, v2, Lorg/chromium/content_public/browser/NavigationEntry;->a:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 23
    iget-object v0, p3, LAZ;->b:Landroid/widget/ImageView;

    iget-object v2, p0, LBZ;->x:LCZ;

    .line 24
    iget-object v2, v2, LCZ;->x:Landroid/content/Context;

    const v3, 0x7f06007a

    .line 25
    invoke-static {v2, v3}, Lsa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 27
    :cond_3
    iget-object v2, p3, LAZ;->b:Landroid/widget/ImageView;

    .line 28
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 29
    :goto_1
    iget-object v0, p0, LBZ;->x:LCZ;

    .line 30
    iget v0, v0, LCZ;->C:I

    if-nez v0, :cond_6

    .line 31
    iget-object v0, p3, LAZ;->a:Landroid/view/View;

    .line 32
    iget-object v2, p0, LBZ;->w:Ljava/lang/Integer;

    if-nez v2, :cond_4

    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, LBZ;->w:Ljava/lang/Integer;

    .line 34
    :cond_4
    iget-object p3, p3, LAZ;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    if-nez p1, :cond_5

    .line 35
    iget-object p1, p0, LBZ;->w:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 37
    invoke-virtual {p3, v2, v1, p1, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_6
    return-object p2
.end method

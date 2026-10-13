.class public LAz0;
.super Landroid/widget/ArrayAdapter;
.source "PG"


# static fields
.field public static D:I

.field public static E:I


# instance fields
.field public A:Ljava/util/List;

.field public B:Ljava/util/List;

.field public C:Ljava/util/List;

.field public w:I

.field public x:Landroid/content/Context;

.field public y:Landroid/view/LayoutInflater;

.field public z:Lzz0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LAz0;

    const/4 v0, -0x1

    .line 2
    sput v0, LAz0;->D:I

    const/4 v0, -0x2

    .line 3
    sput v0, LAz0;->E:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lzz0;)V
    .locals 1

    const v0, 0x1090008

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 2
    sget v0, LAz0;->E:I

    iput v0, p0, LAz0;->w:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LAz0;->A:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LAz0;->B:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LAz0;->C:Ljava/util/List;

    .line 6
    iput-object p1, p0, LAz0;->x:Landroid/content/Context;

    .line 7
    iput-object p2, p0, LAz0;->z:Lzz0;

    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, LAz0;->y:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, LAz0;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, LAz0;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, LAz0;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    sget-object v0, Ld80;->a:Le80;

    .line 5
    new-instance v1, Lyz0;

    invoke-direct {v1, p0}, Lyz0;-><init>(LAz0;)V

    invoke-virtual {v0, v1}, Le80;->a(Lorg/chromium/base/Callback;)V

    return-void
.end method

.method public b()I
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, LAz0;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2
    invoke-virtual {p0, v1}, LAz0;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LN70;

    if-nez v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-wide v3, v2, LN70;->c:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    .line 4
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    iget-object v2, v2, LN70;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v0, v2}, LJ/N;->M_a1HEOR(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput v1, p0, LAz0;->w:I

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 7
    throw v0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_3
    iget-object v1, p0, LAz0;->A:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, LAz0;->B:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v1

    if-lez v2, :cond_4

    .line 9
    iget-object v1, p0, LAz0;->C:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_2

    .line 10
    :cond_4
    iget-object v1, p0, LAz0;->C:Ljava/util/List;

    new-instance v10, LN70;

    iget-object v2, p0, LAz0;->x:Landroid/content/Context;

    const v3, 0x7f1302b5

    .line 11
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x2

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, LN70;-><init>(Ljava/lang/String;Ljava/lang/String;JJI)V

    .line 12
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    return v0
.end method

.method public getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, LAz0;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, LAz0;->B:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, LAz0;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p2, p0, LAz0;->y:Landroid/view/LayoutInflater;

    const p3, 0x7f0e009a

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1}, LAz0;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LN70;

    if-nez p3, :cond_1

    return-object p2

    :cond_1
    const v0, 0x7f0b0494

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0151

    .line 5
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 6
    invoke-virtual {p0, p1}, LAz0;->isEnabled(I)Z

    move-result p1

    .line 7
    iget-object v2, p3, LN70;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 9
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    const/16 v0, 0x8

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, LAz0;->x:Landroid/content/Context;

    iget-wide v2, p3, LN70;->c:J

    .line 11
    sget-object p3, Lorg/chromium/chrome/browser/download/DownloadUtils;->a:[I

    invoke-static {p1, p3, v2, v3}, Lorg/chromium/chrome/browser/download/DownloadUtils;->a(Landroid/content/Context;[IJ)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object p1, p0, LAz0;->C:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 14
    iget-object p1, p0, LAz0;->x:Landroid/content/Context;

    const p3, 0x7f1302b8

    invoke-virtual {p1, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const p1, 0x7f0b020b

    .line 16
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 17
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, LAz0;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, LAz0;->C:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, LAz0;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 4
    iget-object v0, p0, LAz0;->A:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, LAz0;->B:Ljava/util/List;

    iget-object v1, p0, LAz0;->A:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p2, p0, LAz0;->y:Landroid/view/LayoutInflater;

    const p3, 0x7f0e009b

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1}, LAz0;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LN70;

    if-nez p1, :cond_1

    return-object p2

    :cond_1
    const p3, 0x7f0b047a

    .line 4
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 5
    iget-object p1, p1, LN70;->a:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-nez p1, :cond_2

    .line 7
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p3, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, LAz0;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LN70;

    if-eqz p1, :cond_0

    .line 2
    iget-wide v0, p1, LN70;->c:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

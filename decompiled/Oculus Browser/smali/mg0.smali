.class public final Lmg0;
.super Landroid/widget/ArrayAdapter;
.source "PG"


# instance fields
.field public final w:Landroid/view/LayoutInflater;

.field public x:I

.field public final synthetic y:Log0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Log0;

    return-void
.end method

.method public constructor <init>(Log0;I)V
    .locals 3

    .line 1
    iput-object p1, p0, Lmg0;->y:Log0;

    .line 2
    iget-object v0, p1, Log0;->y:Landroid/view/ContextThemeWrapper;

    const v1, 0x7f0e01d0

    .line 3
    invoke-static {p1, p2}, Log0;->a(Log0;I)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 4
    iget-object p1, p1, Log0;->y:Landroid/view/ContextThemeWrapper;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lmg0;->w:Landroid/view/LayoutInflater;

    .line 6
    iput p2, p0, Lmg0;->x:I

    return-void
.end method

.method public static synthetic a(Lmg0;I)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 2
    iput p1, p0, Lmg0;->x:I

    .line 3
    iget-object v0, p0, Lmg0;->y:Log0;

    invoke-static {v0, p1}, Log0;->a(Log0;I)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void

    :cond_1
    const/4 p0, 0x0

    .line 5
    throw p0
.end method


# virtual methods
.method public final a(Landroid/view/View;ILandroid/view/ViewGroup;I)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lmg0;->w:Landroid/view/LayoutInflater;

    invoke-virtual {p1, p4, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :cond_0
    const p3, 0x7f0b0274

    .line 7
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 8
    invoke-virtual {p0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Llg0;

    .line 9
    iget p4, p0, Lmg0;->x:I

    if-nez p4, :cond_6

    .line 10
    iget-object p4, p0, Lmg0;->y:Log0;

    .line 11
    iget-object p4, p4, Log0;->x:Lkg0;

    .line 12
    invoke-virtual {p4}, Lkg0;->a()Ljava/lang/String;

    move-result-object p4

    .line 13
    iget p2, p2, Llg0;->b:I

    if-eqz p2, :cond_5

    const/4 v1, 0x1

    if-eq p2, v1, :cond_4

    const/4 v2, 0x2

    if-eq p2, v2, :cond_3

    const/4 v2, 0x3

    if-eq p2, v2, :cond_2

    const/4 v2, 0x4

    if-eq p2, v2, :cond_1

    const-string p2, ""

    goto :goto_0

    .line 14
    :cond_1
    iget-object p2, p0, Lmg0;->y:Log0;

    .line 15
    iget-object p2, p2, Log0;->y:Landroid/view/ContextThemeWrapper;

    const v2, 0x7f13061e

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p4, v1, v0

    .line 16
    invoke-virtual {p2, v2, v1}, Landroid/view/ContextThemeWrapper;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 17
    :cond_2
    iget-object p2, p0, Lmg0;->y:Log0;

    .line 18
    iget-object p2, p2, Log0;->y:Landroid/view/ContextThemeWrapper;

    const v2, 0x7f13061d

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p4, v1, v0

    .line 19
    invoke-virtual {p2, v2, v1}, Landroid/view/ContextThemeWrapper;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 20
    :cond_3
    iget-object p2, p0, Lmg0;->y:Log0;

    .line 21
    iget-object p2, p2, Log0;->y:Landroid/view/ContextThemeWrapper;

    const p4, 0x7f13061a

    .line 22
    invoke-virtual {p2, p4}, Landroid/view/ContextThemeWrapper;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 23
    :cond_4
    iget-object p2, p0, Lmg0;->y:Log0;

    .line 24
    iget-object p2, p2, Log0;->y:Landroid/view/ContextThemeWrapper;

    const v2, 0x7f13061b

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p4, v1, v0

    .line 25
    invoke-virtual {p2, v2, v1}, Landroid/view/ContextThemeWrapper;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 26
    :cond_5
    iget-object p2, p0, Lmg0;->y:Log0;

    .line 27
    iget-object p2, p2, Log0;->y:Landroid/view/ContextThemeWrapper;

    const p4, 0x7f13061c

    .line 28
    invoke-virtual {p2, p4}, Landroid/view/ContextThemeWrapper;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 29
    :cond_6
    iget-object p4, p0, Lmg0;->y:Log0;

    .line 30
    iget-object p4, p4, Log0;->x:Lkg0;

    .line 31
    iget-object p2, p2, Llg0;->c:Ljava/lang/String;

    invoke-virtual {p4, p2}, Lkg0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 32
    :goto_0
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Llg0;

    iget p1, p1, Llg0;->a:I

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llg0;

    iget v0, v0, Llg0;->a:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const v0, 0x7f0e01d1

    .line 2
    invoke-virtual {p0, p2, p1, p3, v0}, Lmg0;->a(Landroid/view/View;ILandroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0b0271

    .line 3
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llg0;

    iget v0, v0, Llg0;->b:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lmg0;->y:Log0;

    .line 5
    iget-object v0, v0, Log0;->x:Lkg0;

    const/4 v1, 0x2

    .line 6
    iget-object v0, v0, Lkg0;->f:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    .line 8
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const p3, 0x7f0b026f

    .line 9
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Llg0;

    iget-boolean p1, p1, Llg0;->d:Z

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const v0, 0x7f0e01d0

    .line 12
    invoke-virtual {p0, p2, p1, p3, v0}, Lmg0;->a(Landroid/view/View;ILandroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p2

    :cond_3
    :goto_1
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

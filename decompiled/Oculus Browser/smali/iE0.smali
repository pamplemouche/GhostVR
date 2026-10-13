.class public LiE0;
.super LBg;
.source "PG"


# instance fields
.field public final synthetic A:LkE0;

.field public y:Ljava/lang/String;

.field public z:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LkE0;

    return-void
.end method

.method public constructor <init>(LkE0;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, LiE0;->A:LkE0;

    invoke-direct {p0}, LBg;-><init>()V

    .line 2
    iput-object p2, p0, LiE0;->y:Ljava/lang/String;

    .line 3
    iput-object p3, p0, LiE0;->z:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 37
    iget-object v0, p0, LiE0;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Ldh;
    .locals 10

    .line 25
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    const p2, 0x7f0e0024

    .line 26
    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 27
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0800f7

    .line 28
    invoke-static {p1, v0}, Lsa;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p2, p1, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 30
    new-instance p1, LhE0;

    invoke-direct {p1, p0, p2}, LhE0;-><init>(LiE0;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const p2, 0x7f0e0025

    .line 31
    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const p1, 0x7f0b0010

    .line 32
    invoke-virtual {v5, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/widget/ImageView;

    const p1, 0x7f0b0013

    .line 33
    invoke-virtual {v5, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroid/widget/TextView;

    const p1, 0x7f0b0014

    .line 34
    invoke-virtual {v5, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Landroid/widget/TextView;

    const p1, 0x7f0b0012

    .line 35
    invoke-virtual {v5, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Landroid/widget/ImageView;

    .line 36
    new-instance p1, LhE0;

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, LhE0;-><init>(LiE0;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    :goto_0
    return-object p1
.end method

.method public a(Ldh;I)V
    .locals 7

    .line 1
    check-cast p1, LhE0;

    .line 2
    iget v0, p1, Ldh;->B:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object p1, p1, Ldh;->w:Landroid/view/View;

    new-instance p2, LgE0;

    invoke-direct {p2, p0}, LgE0;-><init>(LiE0;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 4
    :cond_1
    iget-object v0, p0, LiE0;->z:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGE0;

    .line 5
    iget-object v2, v0, LGE0;->a:Ljava/lang/String;

    .line 6
    iget-object v3, p0, LiE0;->y:Ljava/lang/String;

    .line 7
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 8
    iget-object v3, p1, LhE0;->P:Landroid/widget/ImageView;

    .line 9
    iget-object v4, v0, LGE0;->b:Landroid/graphics/drawable/Drawable;

    .line 10
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    iget-object v3, v0, LGE0;->c:Ljava/lang/String;

    .line 12
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-nez v4, :cond_2

    .line 13
    iget-object v4, p1, LhE0;->Q:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v3, p1, LhE0;->R:Landroid/widget/TextView;

    .line 15
    iget-object v4, v0, LGE0;->a:Ljava/lang/String;

    .line 16
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v3, p1, LhE0;->R:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 18
    :cond_2
    iget-object v3, p1, LhE0;->Q:Landroid/widget/TextView;

    .line 19
    iget-object v4, v0, LGE0;->a:Ljava/lang/String;

    .line 20
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v3, p1, LhE0;->R:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    :goto_0
    iget-object v3, p1, LhE0;->S:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    const/4 v5, 0x0

    :cond_3
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    iget-object v0, v0, LGE0;->a:Ljava/lang/String;

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 24
    :goto_1
    iget-object p1, p1, Ldh;->w:Landroid/view/View;

    new-instance p2, LfE0;

    invoke-direct {p2, p0, v0, v1}, LfE0;-><init>(LiE0;Ljava/lang/String;Z)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    return-void
.end method

.method public b(I)I
    .locals 1

    .line 1
    iget-object v0, p0, LiE0;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

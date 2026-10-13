.class public final synthetic Law0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lne1;


# static fields
.field public static final a:Lne1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Law0;

    invoke-direct {v0}, Law0;-><init>()V

    sput-object v0, Law0;->a:Lne1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lle1;

    check-cast p2, Lrw0;

    check-cast p3, LUd1;

    .line 1
    sget-object v0, Lqw0;->a:Lfe1;

    if-ne v0, p3, :cond_0

    .line 2
    iget-object p2, p2, Lrw0;->h:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {p1, v0}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    .line 5
    :cond_0
    sget-object v0, Lqw0;->d:Lfe1;

    if-ne v0, p3, :cond_1

    .line 6
    iget-object p2, p2, Lrw0;->p:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 7
    :cond_1
    sget-object v0, Lqw0;->c:Lfe1;

    if-ne v0, p3, :cond_2

    .line 8
    invoke-virtual {p1, v0}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 9
    iget-object p3, p2, Lrw0;->s:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p3, p2, Lrw0;->m:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p2, p2, Lrw0;->k:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 12
    :cond_2
    sget-object v0, Lqw0;->b:Lfe1;

    if-ne v0, p3, :cond_3

    .line 13
    invoke-virtual {p1, v0}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 14
    iget-object p3, p2, Lrw0;->r:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object p2, p2, Lrw0;->l:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 16
    :cond_3
    sget-object v0, Lqw0;->n:Lke1;

    if-ne v0, p3, :cond_4

    .line 17
    iget-object p2, p2, Lrw0;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 18
    :cond_4
    sget-object v0, Lqw0;->j:Lie1;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne v0, p3, :cond_6

    .line 19
    invoke-virtual {p1, v0}, Lle1;->a(Lde1;)F

    move-result p1

    cmpl-float p3, p1, v1

    if-nez p3, :cond_5

    goto/16 :goto_8

    .line 20
    :cond_5
    iget-object p3, p2, Lrw0;->p:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 21
    iget-object p1, p2, Lrw0;->o:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    iget-object p1, p2, Lrw0;->q:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    iget-object p1, p2, Lrw0;->r:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    iget-object p1, p2, Lrw0;->s:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25
    iget-object p1, p2, Lrw0;->f:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 26
    iget-object p1, p2, Lrw0;->x:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object p1, p2, Lrw0;->i:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    .line 28
    :cond_6
    sget-object v0, Lqw0;->g:Lhe1;

    const/4 v3, 0x0

    if-ne v0, p3, :cond_c

    .line 29
    invoke-virtual {p1, v0}, Lle1;->a(Lce1;)Z

    move-result p3

    if-eqz p3, :cond_7

    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    const/16 v0, 0x8

    .line 30
    :goto_0
    iget-object v4, p2, Lrw0;->e:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setVisibility(I)V

    if-eqz p3, :cond_8

    const/16 v0, 0x8

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    .line 31
    :goto_1
    iget-object v4, p2, Lrw0;->g:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    iget-object v4, p2, Lrw0;->n:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 33
    sget-object v0, Lqw0;->j:Lie1;

    invoke-virtual {p1, v0}, Lle1;->a(Lde1;)F

    move-result p1

    if-eqz p3, :cond_9

    cmpl-float v0, p1, v1

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_2

    :cond_9
    const/16 v0, 0x8

    .line 34
    :goto_2
    iget-object v4, p2, Lrw0;->f:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setVisibility(I)V

    if-nez p3, :cond_b

    cmpl-float p1, p1, v1

    if-lez p1, :cond_a

    goto :goto_3

    :cond_a
    const/4 v2, 0x0

    .line 35
    :cond_b
    :goto_3
    iget-object p1, p2, Lrw0;->i:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    .line 36
    :cond_c
    sget-object v0, Lqw0;->h:Lhe1;

    if-ne v0, p3, :cond_10

    .line 37
    sget-object p3, Lqw0;->j:Lie1;

    invoke-virtual {p1, p3}, Lle1;->a(Lde1;)F

    move-result p3

    cmpl-float p3, p3, v1

    if-lez p3, :cond_d

    goto/16 :goto_8

    .line 38
    :cond_d
    sget-object p3, Lqw0;->h:Lhe1;

    invoke-virtual {p1, p3}, Lle1;->a(Lce1;)Z

    move-result p1

    const/high16 p3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_e

    const/4 v0, 0x0

    goto :goto_4

    :cond_e
    const/high16 v0, 0x3f800000    # 1.0f

    .line 39
    :goto_4
    iget-object v2, p2, Lrw0;->q:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 40
    iget-object v2, p2, Lrw0;->r:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 41
    iget-object v2, p2, Lrw0;->s:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 42
    iget-object v2, p2, Lrw0;->f:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setAlpha(F)V

    if-eqz p1, :cond_f

    goto :goto_5

    :cond_f
    const/4 p3, 0x0

    .line 43
    :goto_5
    iget-object p1, p2, Lrw0;->o:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_8

    .line 44
    :cond_10
    sget-object v0, Lqw0;->o:Lke1;

    if-ne v0, p3, :cond_12

    .line 45
    invoke-virtual {p1, v0}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    if-nez p1, :cond_11

    goto/16 :goto_8

    .line 46
    :cond_11
    iget-object p3, p2, Lrw0;->n:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object p3, p2, Lrw0;->o:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object p2, p2, Lrw0;->q:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 49
    :cond_12
    sget-object v0, Lqw0;->m:Lke1;

    if-ne v0, p3, :cond_15

    .line 50
    sget-object p3, Lqw0;->o:Lke1;

    invoke-virtual {p1, p3}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    if-eqz p3, :cond_13

    goto/16 :goto_8

    .line 51
    :cond_13
    sget-object p3, Lqw0;->m:Lke1;

    .line 52
    invoke-virtual {p1, p3}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_14

    goto/16 :goto_8

    .line 53
    :cond_14
    iget-object p3, p2, Lrw0;->n:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 54
    iget-object p3, p2, Lrw0;->o:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 55
    iget-object p2, p2, Lrw0;->q:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_8

    .line 56
    :cond_15
    sget-object v0, Lqw0;->k:Lke1;

    if-ne v0, p3, :cond_17

    .line 57
    invoke-virtual {p1, v0}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_16

    goto/16 :goto_8

    .line 58
    :cond_16
    iget-object p3, p2, Lrw0;->g:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    iget-object p2, p2, Lrw0;->i:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_8

    .line 60
    :cond_17
    sget-object v0, Lqw0;->l:Lke1;

    if-ne v0, p3, :cond_19

    .line 61
    invoke-virtual {p1, v0}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_18

    goto/16 :goto_8

    .line 62
    :cond_18
    iget-object p3, p2, Lrw0;->i:Landroid/widget/ImageView;

    iget-object v0, p2, Lrw0;->d:Landroid/content/Context;

    .line 63
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lsa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 64
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 65
    iget-object p3, p2, Lrw0;->g:Landroid/widget/ImageView;

    iget-object p2, p2, Lrw0;->d:Landroid/content/Context;

    .line 66
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p2, p1}, Lsa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 67
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_8

    .line 68
    :cond_19
    sget-object v0, Lqw0;->f:Lhe1;

    if-ne v0, p3, :cond_1c

    .line 69
    invoke-virtual {p1, v0}, Lle1;->a(Lce1;)Z

    move-result p3

    if-eqz p3, :cond_1a

    const/4 v0, 0x0

    goto :goto_6

    :cond_1a
    const/16 v0, 0x8

    .line 70
    :goto_6
    iget-object v4, p2, Lrw0;->u:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 71
    sget-object v0, Lqw0;->j:Lie1;

    invoke-virtual {p1, v0}, Lle1;->a(Lde1;)F

    move-result p1

    if-eqz p3, :cond_1b

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1b

    const/4 v2, 0x0

    .line 72
    :cond_1b
    iget-object p1, p2, Lrw0;->x:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 73
    :cond_1c
    sget-object v0, Lqw0;->i:Lhe1;

    if-ne v0, p3, :cond_1f

    .line 74
    invoke-virtual {p1, v0}, Lle1;->a(Lce1;)Z

    move-result p1

    if-eqz p1, :cond_1d

    const/4 v2, 0x0

    .line 75
    :cond_1d
    iget-object p3, p2, Lrw0;->k:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    iget-object p3, p2, Lrw0;->t:Landroid/view/View;

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object p3, p2, Lrw0;->j:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    iget-object p3, p2, Lrw0;->l:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object p3, p2, Lrw0;->m:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object p3, p2, Lrw0;->v:Landroid/view/View;

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object p3, p2, Lrw0;->w:Landroid/view/View;

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object p3, p2, Lrw0;->g:Landroid/widget/ImageView;

    .line 83
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 84
    iget-object v0, p2, Lrw0;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_1e

    const p1, 0x7f0701a2

    goto :goto_7

    :cond_1e
    const p1, 0x7f0701a3

    :goto_7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 85
    iget v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p3, v0, p1, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 86
    iget-object p1, p2, Lrw0;->u:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object p1, p2, Lrw0;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    .line 88
    :cond_1f
    sget-object v0, Lqw0;->e:Lhe1;

    if-ne v0, p3, :cond_20

    .line 89
    invoke-virtual {p1, v0}, Lle1;->a(Lce1;)Z

    move-result p1

    iput-boolean p1, p2, Lrw0;->y:Z

    :cond_20
    :goto_8
    return-void
.end method

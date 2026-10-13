.class public final synthetic LTq0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lne1;


# static fields
.field public static final a:Lne1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LTq0;

    invoke-direct {v0}, LTq0;-><init>()V

    sput-object v0, LTq0;->a:Lne1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lle1;

    check-cast p2, Lbs0;

    check-cast p3, LUd1;

    .line 1
    sget-object v0, Les0;->a:Lke1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p3, Les0;->a:Lke1;

    invoke-virtual {p1, p3}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcs0;

    .line 3
    iput-object p1, p2, Lbs0;->x:Lcs0;

    goto/16 :goto_6

    .line 4
    :cond_0
    sget-object v0, Lsr0;->a:Lhe1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    sget-object p3, Lsr0;->a:Lhe1;

    invoke-virtual {p1, p3}, Lle1;->a(Lce1;)Z

    move-result p1

    .line 6
    iget-object p3, p2, Lbs0;->C:LDM0;

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    xor-int/lit8 p3, p1, 0x1

    .line 7
    invoke-static {p3}, LAO0;->a(Z)I

    move-result p3

    .line 8
    iget-object v0, p2, Lbs0;->C:LDM0;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p3}, Lsa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {v0, p3}, LDM0;->a(Landroid/content/res/ColorStateList;)V

    .line 9
    iget-object p3, p2, Lbs0;->B:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 10
    :goto_0
    invoke-virtual {p2, p1}, Lbs0;->a(Z)V

    .line 11
    iget-object p3, p2, Lbs0;->z:Las0;

    .line 12
    iget-object p3, p3, Las0;->y:Landroid/widget/TextView;

    .line 13
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz p1, :cond_2

    const p1, 0x7f06008e

    goto :goto_1

    :cond_2
    const p1, 0x7f060092

    .line 14
    :goto_1
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 15
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_6

    .line 16
    :cond_3
    sget-object v0, Lsr0;->b:Lje1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    sget-object p3, Lsr0;->b:Lje1;

    .line 18
    invoke-virtual {p1, p3}, Lle1;->a(Lee1;)I

    move-result p1

    .line 19
    invoke-static {p2, p1}, LA7;->g(Landroid/view/View;I)V

    goto/16 :goto_6

    .line 20
    :cond_4
    sget-object v0, Les0;->b:Lhe1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 21
    sget-object p3, Les0;->b:Lhe1;

    invoke-virtual {p1, p3}, Lle1;->a(Lce1;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 22
    iget-object v0, p2, Lbs0;->B:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 23
    iget-object v0, p2, Lbs0;->B:Landroid/view/View;

    new-instance v1, LVr0;

    invoke-direct {v1, p2}, LVr0;-><init>(Lbs0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 24
    :cond_5
    iget-object v0, p2, Lbs0;->B:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v0, p2, Lbs0;->B:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    if-eqz p3, :cond_17

    .line 26
    sget-object p3, Lsr0;->a:Lhe1;

    invoke-virtual {p1, p3}, Lle1;->a(Lce1;)Z

    move-result p1

    .line 27
    iget-object p3, p2, Lbs0;->C:LDM0;

    if-eqz p3, :cond_6

    goto/16 :goto_6

    :cond_6
    xor-int/lit8 p1, p1, 0x1

    .line 28
    invoke-static {p1}, LAO0;->a(Z)I

    move-result p1

    .line 29
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f0800a9

    .line 30
    invoke-static {p3, v0, p1}, LDM0;->a(Landroid/content/Context;II)LDM0;

    move-result-object p1

    iput-object p1, p2, Lbs0;->C:LDM0;

    .line 31
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result p3

    iget-object v0, p2, Lbs0;->C:LDM0;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 32
    invoke-virtual {p1, v2, v2, p3, v0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 33
    iget-object p1, p2, Lbs0;->C:LDM0;

    iget-object p3, p2, Lbs0;->B:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getDrawableState()[I

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/BitmapDrawable;->setState([I)Z

    .line 34
    iget-object p1, p2, Lbs0;->B:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto/16 :goto_6

    .line 35
    :cond_7
    sget-object v0, Les0;->c:Lje1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, Les0;->d:Lke1;

    .line 36
    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_5

    .line 37
    :cond_8
    sget-object v0, Les0;->e:Lke1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 38
    sget-object p3, Les0;->e:Lke1;

    invoke-virtual {p1, p3}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    .line 39
    iget-object p2, p2, Lbs0;->z:Las0;

    .line 40
    iget-object p2, p2, Las0;->y:Landroid/widget/TextView;

    .line 41
    iget-object p3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p3, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_6

    .line 42
    :cond_9
    sget-object v0, Les0;->f:Lje1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 43
    iget-object p2, p2, Lbs0;->z:Las0;

    .line 44
    iget-object p2, p2, Las0;->y:Landroid/widget/TextView;

    .line 45
    sget-object p3, Les0;->f:Lje1;

    invoke-virtual {p1, p3}, Lle1;->a(Lee1;)I

    move-result p1

    .line 46
    invoke-static {p2, p1}, Lfs0;->a(Landroid/widget/TextView;I)V

    goto/16 :goto_6

    .line 47
    :cond_a
    sget-object v0, Les0;->g:Lje1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 48
    iget-object p2, p2, Lbs0;->z:Las0;

    .line 49
    iget-object p2, p2, Las0;->y:Landroid/widget/TextView;

    .line 50
    sget-object p3, Les0;->g:Lje1;

    .line 51
    invoke-virtual {p1, p3}, Lle1;->a(Lee1;)I

    move-result p1

    .line 52
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_6

    .line 53
    :cond_b
    sget-object v0, Les0;->h:Lje1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 54
    iget-object p2, p2, Lbs0;->z:Las0;

    .line 55
    iget-object p2, p2, Las0;->y:Landroid/widget/TextView;

    .line 56
    sget-object p3, Les0;->h:Lje1;

    .line 57
    invoke-virtual {p1, p3}, Lle1;->a(Lee1;)I

    move-result p1

    .line 58
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextDirection(I)V

    goto/16 :goto_6

    .line 59
    :cond_c
    sget-object v0, Les0;->i:Lke1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 60
    iget-object p2, p2, Lbs0;->z:Las0;

    .line 61
    iget-object p2, p2, Las0;->y:Landroid/widget/TextView;

    .line 62
    sget-object p3, Les0;->i:Lke1;

    invoke-virtual {p1, p3}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lds0;

    iget-object p1, p1, Lds0;->a:Landroid/text/Spannable;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 63
    :cond_d
    sget-object v0, Les0;->j:Lke1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Les0;->j:Lke1;

    .line 64
    invoke-virtual {p1, v0}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 65
    sget-object p3, Les0;->j:Lke1;

    invoke-virtual {p1, p3}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    .line 66
    iget-object p2, p2, Lbs0;->z:Las0;

    .line 67
    iget-object p2, p2, Las0;->z:Landroid/widget/TextView;

    .line 68
    iget-object p3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p3, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_6

    .line 69
    :cond_e
    sget-object v0, Les0;->k:Lje1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 70
    iget-object p2, p2, Lbs0;->z:Las0;

    .line 71
    iget-object p2, p2, Las0;->z:Landroid/widget/TextView;

    .line 72
    sget-object p3, Les0;->k:Lje1;

    invoke-virtual {p1, p3}, Lle1;->a(Lee1;)I

    move-result p1

    .line 73
    invoke-static {p2, p1}, Lfs0;->a(Landroid/widget/TextView;I)V

    goto/16 :goto_6

    .line 74
    :cond_f
    sget-object v0, Les0;->l:Lje1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 75
    iget-object p2, p2, Lbs0;->z:Las0;

    .line 76
    iget-object p2, p2, Las0;->z:Landroid/widget/TextView;

    .line 77
    sget-object p3, Les0;->l:Lje1;

    .line 78
    invoke-virtual {p1, p3}, Lle1;->a(Lee1;)I

    move-result p1

    .line 79
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_6

    .line 80
    :cond_10
    sget-object v0, Les0;->m:Lje1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 81
    iget-object p2, p2, Lbs0;->z:Las0;

    .line 82
    iget-object p2, p2, Las0;->z:Landroid/widget/TextView;

    .line 83
    sget-object p3, Les0;->m:Lje1;

    .line 84
    invoke-virtual {p1, p3}, Lle1;->a(Lee1;)I

    move-result p1

    .line 85
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_6

    .line 86
    :cond_11
    sget-object v0, Lsr0;->c:Lhe1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 87
    sget-object p3, Lsr0;->c:Lhe1;

    invoke-virtual {p1, p3}, Lle1;->a(Lce1;)Z

    move-result p3

    if-eqz p3, :cond_12

    const p3, 0x7f07022d

    goto :goto_3

    :cond_12
    const p3, 0x7f07022e

    .line 88
    :goto_3
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p2, Lbs0;->D:I

    .line 89
    invoke-static {p2, p1}, Lfs0;->a(Lbs0;Lle1;)V

    goto :goto_6

    .line 90
    :cond_13
    sget-object v0, Les0;->n:Lke1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_17

    .line 91
    sget-object p3, Les0;->n:Lke1;

    invoke-virtual {p1, p3}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_14

    goto :goto_4

    .line 92
    :cond_14
    sget-object p3, Les0;->n:Lke1;

    invoke-virtual {p1, p3}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lds0;

    iget-object v1, p1, Lds0;->a:Landroid/text/Spannable;

    .line 93
    :goto_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 94
    iget-object p1, p2, Lbs0;->z:Las0;

    .line 95
    iget-object p1, p1, Las0;->z:Landroid/widget/TextView;

    const/4 p2, 0x4

    .line 96
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 97
    :cond_15
    iget-object p1, p2, Lbs0;->z:Las0;

    .line 98
    iget-object p1, p1, Las0;->z:Landroid/widget/TextView;

    .line 99
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object p1, p2, Lbs0;->z:Las0;

    .line 101
    iget-object p1, p1, Las0;->z:Landroid/widget/TextView;

    .line 102
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 103
    :cond_16
    :goto_5
    invoke-static {p2, p1}, Lfs0;->a(Lbs0;Lle1;)V

    :cond_17
    :goto_6
    return-void
.end method

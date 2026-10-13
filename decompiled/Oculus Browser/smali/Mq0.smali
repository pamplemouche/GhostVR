.class public LMq0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lne1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lle1;

    check-cast p2, Lorg/chromium/chrome/browser/omnibox/status/StatusView;

    check-cast p3, LUd1;

    .line 2
    sget-object v0, LGq0;->a:Lhe1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p3, LGq0;->a:Lhe1;

    invoke-virtual {p1, p3}, Lle1;->a(Lce1;)Z

    move-result p1

    .line 4
    iput-boolean p1, p2, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->F:Z

    goto/16 :goto_4

    .line 5
    :cond_0
    sget-object v0, LGq0;->b:Lje1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    sget-object p3, LGq0;->b:Lje1;

    invoke-virtual {p1, p3}, Lle1;->a(Lee1;)I

    move-result p1

    .line 7
    iput p1, p2, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->I:I

    .line 8
    iput-object v1, p2, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->L:Landroid/graphics/Bitmap;

    .line 9
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->a()V

    goto/16 :goto_4

    .line 10
    :cond_1
    sget-object v0, LGq0;->d:Lke1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 11
    sget-object p3, LGq0;->d:Lke1;

    invoke-virtual {p1, p3}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 12
    iput-object p1, p2, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->L:Landroid/graphics/Bitmap;

    .line 13
    iput v2, p2, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->I:I

    .line 14
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->a()V

    goto/16 :goto_4

    .line 15
    :cond_2
    sget-object v0, LGq0;->e:Lie1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    sget-object p3, LGq0;->e:Lie1;

    invoke-virtual {p1, p3}, Lle1;->a(Lde1;)F

    move-result p1

    .line 17
    iget-object p2, p2, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->B:Landroid/widget/ImageView;

    if-nez p2, :cond_3

    goto/16 :goto_4

    .line 18
    :cond_3
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_4

    .line 19
    :cond_4
    sget-object v0, LGq0;->f:Lhe1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v3, 0x8

    if-eqz v0, :cond_9

    .line 20
    sget-object p3, LGq0;->f:Lhe1;

    invoke-virtual {p1, p3}, Lle1;->a(Lce1;)Z

    move-result p1

    .line 21
    iget-object p3, p2, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->B:Landroid/widget/ImageView;

    if-nez p3, :cond_5

    goto/16 :goto_4

    .line 22
    :cond_5
    iget-object p3, p2, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->R:LPJ0;

    if-eqz p3, :cond_7

    iget-object v0, p2, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->O:LLq0;

    .line 23
    invoke-interface {p3}, LPJ0;->a()Z

    move-result p3

    if-eqz v0, :cond_6

    .line 24
    invoke-static {p3}, Lyp0;->a(Z)Z

    move-result p3

    if-nez p3, :cond_7

    goto/16 :goto_4

    :cond_6
    throw v1

    .line 25
    :cond_7
    iget-object p3, p2, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->B:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    goto :goto_0

    :cond_8
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->c()V

    goto/16 :goto_4

    .line 27
    :cond_9
    sget-object v0, LGq0;->g:Lje1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 28
    sget-object p3, LGq0;->g:Lje1;

    .line 29
    invoke-virtual {p1, p3}, Lle1;->a(Lee1;)I

    move-result p1

    .line 30
    iput p1, p2, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->K:I

    goto/16 :goto_4

    .line 31
    :cond_a
    sget-object v0, LGq0;->c:Lje1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 32
    sget-object p3, LGq0;->c:Lje1;

    invoke-virtual {p1, p3}, Lle1;->a(Lee1;)I

    move-result p1

    .line 33
    iput p1, p2, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->J:I

    .line 34
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->a()V

    goto/16 :goto_4

    .line 35
    :cond_b
    sget-object v0, LGq0;->h:Lje1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 36
    sget-object p3, LGq0;->h:Lje1;

    invoke-virtual {p1, p3}, Lle1;->a(Lee1;)I

    move-result p1

    if-eqz p1, :cond_c

    .line 37
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 p1, 0x1

    goto :goto_1

    :cond_c
    const/4 p1, 0x2

    .line 38
    :goto_1
    iget-object p3, p2, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->B:Landroid/widget/ImageView;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 39
    iget-object p2, p2, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->B:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    goto/16 :goto_4

    .line 40
    :cond_d
    sget-object v0, LGq0;->i:Lje1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 41
    sget-object p3, LGq0;->i:Lje1;

    invoke-virtual {p1, p3}, Lle1;->a(Lee1;)I

    move-result p1

    .line 42
    iget-object p3, p2, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->D:Landroid/view/View;

    .line 43
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 44
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 45
    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_4

    .line 46
    :cond_e
    sget-object v0, LGq0;->j:Lke1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 47
    sget-object p3, LGq0;->j:Lke1;

    invoke-virtual {p1, p3}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View$OnClickListener;

    .line 48
    iget-object p3, p2, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->B:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object p2, p2, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->C:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 50
    :cond_f
    sget-object v0, LGq0;->k:Lje1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 51
    sget-object p3, LGq0;->k:Lje1;

    .line 52
    invoke-virtual {p1, p3}, Lle1;->a(Lee1;)I

    move-result p1

    .line 53
    iget-object p3, p2, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->C:Landroid/widget/TextView;

    .line 54
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 55
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 56
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 57
    :cond_10
    sget-object v0, LGq0;->l:Lje1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 58
    sget-object p3, LGq0;->l:Lje1;

    .line 59
    invoke-virtual {p1, p3}, Lle1;->a(Lee1;)I

    move-result p1

    .line 60
    iget-object p2, p2, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->C:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 61
    :cond_11
    sget-object v0, LGq0;->m:Lhe1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 62
    sget-object p3, LGq0;->m:Lhe1;

    .line 63
    invoke-virtual {p1, p3}, Lle1;->a(Lce1;)Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_2

    :cond_12
    const/16 v2, 0x8

    .line 64
    :goto_2
    iget-object p1, p2, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->C:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    iget-object p1, p2, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->D:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object p1, p2, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->E:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 67
    :cond_13
    sget-object v0, LGq0;->n:Lje1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 68
    sget-object p3, LGq0;->n:Lje1;

    invoke-virtual {p1, p3}, Lle1;->a(Lee1;)I

    move-result p1

    .line 69
    iget-object p2, p2, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->C:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_4

    .line 70
    :cond_14
    sget-object v0, LGq0;->o:Lhe1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_18

    .line 71
    sget-object p3, LGq0;->o:Lhe1;

    invoke-virtual {p1, p3}, Lle1;->a(Lce1;)Z

    move-result p1

    .line 72
    iget-object p3, p2, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->w:Landroid/view/View;

    if-nez p3, :cond_15

    if-nez p1, :cond_15

    goto :goto_4

    .line 73
    :cond_15
    iget-object p3, p2, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->w:Landroid/view/View;

    if-nez p3, :cond_16

    const p3, 0x7f0b0248

    .line 74
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewStub;

    .line 75
    invoke-virtual {p3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p3

    iput-object p3, p2, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->w:Landroid/view/View;

    .line 76
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070188

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p2, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->x:I

    .line 77
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070189

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p2, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->y:I

    .line 78
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->b()V

    .line 79
    :cond_16
    iget-object p3, p2, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->w:Landroid/view/View;

    if-eqz p1, :cond_17

    goto :goto_3

    :cond_17
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 80
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->c()V

    :cond_18
    :goto_4
    return-void
.end method

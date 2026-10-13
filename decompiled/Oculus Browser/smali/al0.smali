.class public Lal0;
.super Lfl0;
.source "PG"


# instance fields
.field public final synthetic a:Lbl0;


# direct methods
.method public synthetic constructor <init>(Lbl0;LZk0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lal0;->a:Lbl0;

    invoke-direct {p0}, Lfl0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lle1;

    check-cast p2, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;

    check-cast p3, LUd1;

    .line 2
    sget-object v0, LEd1;->m:Lhe1;

    if-ne v0, p3, :cond_0

    .line 3
    iget-object p2, p0, Lal0;->a:Lbl0;

    .line 4
    iget-object p2, p2, Lbl0;->d:Landroid/app/Dialog;

    .line 5
    invoke-virtual {p1, v0}, Lle1;->a(Lce1;)Z

    move-result p1

    .line 6
    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto/16 :goto_2

    .line 7
    :cond_0
    sget-object v0, LEd1;->c:Lke1;

    if-ne v0, p3, :cond_1

    .line 8
    invoke-virtual {p1, v0}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 9
    iget-object p3, p2, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->B:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->b()V

    goto/16 :goto_2

    .line 11
    :cond_1
    sget-object v0, LEd1;->d:Lke1;

    if-ne v0, p3, :cond_2

    .line 12
    invoke-virtual {p1, v0}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 13
    iget-object p3, p2, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->C:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->b()V

    goto/16 :goto_2

    .line 15
    :cond_2
    sget-object v0, LEd1;->e:Lke1;

    if-ne v0, p3, :cond_3

    .line 16
    invoke-virtual {p1, v0}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 17
    iget-object p3, p2, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->D:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->b()V

    goto/16 :goto_2

    .line 19
    :cond_3
    sget-object v0, LEd1;->f:Lke1;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, p3, :cond_6

    .line 20
    invoke-virtual {p1, v0}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 21
    iget-object p3, p2, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->E:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-lez p3, :cond_4

    iget-object p3, p2, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->E:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_4
    if-eqz p1, :cond_5

    .line 22
    invoke-static {p1}, Lwc1;->a(Landroid/view/View;)V

    .line 23
    iget-object p3, p2, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->E:Landroid/view/ViewGroup;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 24
    iget-object p1, p2, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->E:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 25
    :cond_5
    iget-object p1, p2, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->E:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 26
    :cond_6
    sget-object v0, LEd1;->g:Lke1;

    if-ne v0, p3, :cond_7

    .line 27
    invoke-virtual {p1, v0}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 28
    invoke-virtual {p2, v2}, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->a(I)Landroid/widget/Button;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->a()V

    goto/16 :goto_2

    .line 30
    :cond_7
    sget-object v0, LEd1;->h:Lke1;

    if-ne v0, p3, :cond_8

    .line 31
    invoke-virtual {p1, v0}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 32
    invoke-virtual {p2, v2}, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->a(I)Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 33
    :cond_8
    sget-object v0, LEd1;->i:Lhe1;

    const/4 v3, 0x1

    if-ne v0, p3, :cond_9

    .line 34
    invoke-virtual {p1, v0}, Lle1;->a(Lce1;)Z

    move-result p1

    xor-int/2addr p1, v3

    .line 35
    invoke-virtual {p2, v2}, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->a(I)Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    .line 36
    :cond_9
    sget-object v0, LEd1;->j:Lke1;

    if-ne v0, p3, :cond_a

    .line 37
    invoke-virtual {p1, v0}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 38
    invoke-virtual {p2, v3}, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->a(I)Landroid/widget/Button;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->a()V

    goto/16 :goto_2

    .line 40
    :cond_a
    sget-object v0, LEd1;->k:Lke1;

    if-ne v0, p3, :cond_b

    .line 41
    invoke-virtual {p1, v0}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 42
    invoke-virtual {p2, v3}, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->a(I)Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 43
    :cond_b
    sget-object v0, LEd1;->l:Lhe1;

    if-ne v0, p3, :cond_c

    .line 44
    invoke-virtual {p1, v0}, Lle1;->a(Lce1;)Z

    move-result p1

    xor-int/2addr p1, v3

    .line 45
    invoke-virtual {p2, v3}, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->a(I)Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    .line 46
    :cond_c
    sget-object v0, LEd1;->o:Lhe1;

    if-ne v0, p3, :cond_10

    .line 47
    invoke-virtual {p1, v0}, Lle1;->a(Lce1;)Z

    move-result p1

    .line 48
    iget-boolean p3, p2, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->J:Z

    if-ne p3, p1, :cond_d

    goto/16 :goto_2

    .line 49
    :cond_d
    iput-boolean p1, p2, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->J:Z

    .line 50
    iget-object p3, p2, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->B:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    .line 51
    iget-object v0, p2, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->C:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 52
    iget-object v4, p2, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->A:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz p1, :cond_e

    const v1, 0x7f0b039d

    goto :goto_0

    :cond_e
    const v1, 0x7f0b0498

    .line 53
    :goto_0
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p2, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->A:Landroid/view/ViewGroup;

    const v4, 0x7f0b0494

    .line 54
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->B:Landroid/widget/TextView;

    .line 55
    iget-object v1, p2, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->A:Landroid/view/ViewGroup;

    const v4, 0x7f0b049a

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->C:Landroid/widget/ImageView;

    .line 56
    iget-object v1, p2, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->B:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->b()V

    .line 58
    iget-object p3, p2, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->C:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->b()V

    .line 60
    iget-object p3, p2, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->E:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_f

    const/4 p1, -0x2

    .line 61
    iput p1, p3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 p1, 0x0

    .line 62
    iput p1, p3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 63
    iget-object p1, p2, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->z:Lorg/chromium/chrome/browser/ui/widget/FadingEdgeScrollView;

    invoke-virtual {p1, v3, v3}, Lorg/chromium/chrome/browser/ui/widget/FadingEdgeScrollView;->a(II)V

    goto :goto_1

    .line 64
    :cond_f
    iput v2, p3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 65
    iput p1, p3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 66
    iget-object p1, p2, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->z:Lorg/chromium/chrome/browser/ui/widget/FadingEdgeScrollView;

    invoke-virtual {p1, v2, v2}, Lorg/chromium/chrome/browser/ui/widget/FadingEdgeScrollView;->a(II)V

    .line 67
    :goto_1
    iget-object p1, p2, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->E:Landroid/view/ViewGroup;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 68
    :cond_10
    sget-object v0, LEd1;->a:Lfe1;

    if-ne v0, p3, :cond_11

    .line 69
    new-instance p3, Lel0;

    invoke-direct {p3, p1}, Lel0;-><init>(Lle1;)V

    .line 70
    iput-object p3, p2, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->I:Lorg/chromium/base/Callback;

    goto :goto_2

    .line 71
    :cond_11
    sget-object v0, LEd1;->m:Lhe1;

    if-ne v0, p3, :cond_12

    goto :goto_2

    .line 72
    :cond_12
    sget-object v0, LEd1;->n:Lce1;

    if-ne v0, p3, :cond_14

    .line 73
    invoke-virtual {p1, v0}, Lle1;->a(Lce1;)Z

    move-result p1

    .line 74
    iget-boolean p3, p2, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->K:Z

    if-ne p3, p1, :cond_13

    goto :goto_2

    .line 75
    :cond_13
    iput-boolean p1, p2, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->K:Z

    if-eqz p1, :cond_16

    .line 76
    invoke-virtual {p2, v2}, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->a(I)Landroid/widget/Button;

    move-result-object p1

    .line 77
    invoke-virtual {p2, v3}, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->a(I)Landroid/widget/Button;

    move-result-object p2

    .line 78
    sget-object p3, Ldl0;->w:Landroid/view/View$OnTouchListener;

    .line 79
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    .line 80
    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 81
    invoke-virtual {p2, v3}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    .line 82
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    .line 83
    :cond_14
    sget-object p1, LEd1;->b:Lfe1;

    if-ne p1, p3, :cond_15

    goto :goto_2

    .line 84
    :cond_15
    sget-object p1, LEd1;->p:Lce1;

    :cond_16
    :goto_2
    return-void
.end method

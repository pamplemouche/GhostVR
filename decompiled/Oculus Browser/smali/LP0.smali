.class public abstract LLP0;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Lle1;LIP0;LUd1;)V
    .locals 5

    .line 1
    sget-object v0, LKP0;->a:Lke1;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p2, LKP0;->a:Lke1;

    invoke-virtual {p0, p2}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 3
    iget-object p2, p1, LIP0;->C:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p1, LIP0;->A:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 5
    :cond_0
    sget-object v0, LKP0;->b:Lke1;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    sget-object p2, LKP0;->b:Lke1;

    invoke-virtual {p0, p2}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 7
    iget-object p1, p1, LIP0;->D:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 8
    :cond_1
    sget-object v0, LKP0;->c:Lke1;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 9
    sget-object p2, LKP0;->c:Lke1;

    invoke-virtual {p0, p2}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    .line 10
    iget-object p2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/Bitmap;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 11
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p0, v0, :cond_2

    .line 12
    iget-object p0, p1, LIP0;->H:Landroid/widget/ImageView;

    invoke-static {p2}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object p0, p1, LIP0;->H:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 14
    :goto_0
    iget-object p0, p1, LIP0;->G:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object p0, p1, LIP0;->H:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 16
    :cond_3
    sget-object v0, LKP0;->d:Lje1;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_9

    .line 17
    sget-object p2, LKP0;->d:Lje1;

    invoke-virtual {p0, p2}, Lle1;->a(Lee1;)I

    move-result p0

    .line 18
    iget-object p2, p1, LIP0;->A:Landroid/widget/EditText;

    const/4 v0, 0x2

    if-ne p0, v0, :cond_4

    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {p2, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 19
    iget-object p2, p1, LIP0;->B:Landroid/widget/LinearLayout;

    if-eq p0, v0, :cond_5

    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 20
    iget-object p2, p1, LIP0;->D:Landroid/widget/TextView;

    if-ne p0, v3, :cond_6

    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    const/16 v0, 0x8

    :goto_3
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    iget-object p2, p1, LIP0;->E:Landroid/widget/RatingBar;

    if-nez p0, :cond_7

    const/4 v0, 0x0

    goto :goto_4

    :cond_7
    const/16 v0, 0x8

    :goto_4
    invoke-virtual {p2, v0}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 22
    iget-object p1, p1, LIP0;->F:Landroid/widget/ImageView;

    if-nez p0, :cond_8

    const/4 v1, 0x0

    :cond_8
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 23
    :cond_9
    sget-object v0, LKP0;->e:Lhe1;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 24
    sget-object p2, LKP0;->e:Lhe1;

    invoke-virtual {p0, p2}, Lle1;->a(Lce1;)Z

    move-result p0

    .line 25
    iput-boolean p0, p1, LIP0;->I:Z

    .line 26
    invoke-virtual {p1}, LIP0;->a()V

    goto :goto_5

    .line 27
    :cond_a
    sget-object v0, LKP0;->f:Lke1;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 28
    sget-object p2, LKP0;->f:Lke1;

    .line 29
    invoke-virtual {p0, p2}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 30
    iget-object p2, p1, LIP0;->w:Lle1;

    sget-object v0, LEd1;->g:Lke1;

    invoke-virtual {p2, v0, p0}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 31
    iget-object p1, p1, LIP0;->w:Lle1;

    sget-object p2, LEd1;->h:Lke1;

    .line 32
    sget-object v0, LzT;->a:Landroid/content/Context;

    const v1, 0x7f13014b

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    .line 33
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 34
    invoke-virtual {p1, p2, p0}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    goto :goto_5

    .line 35
    :cond_b
    sget-object v0, LKP0;->g:Lie1;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 36
    sget-object p2, LKP0;->g:Lie1;

    .line 37
    invoke-virtual {p0, p2}, Lle1;->a(Lde1;)F

    move-result p0

    .line 38
    iget-object p2, p1, LIP0;->E:Landroid/widget/RatingBar;

    invoke-virtual {p2, p0}, Landroid/widget/RatingBar;->setRating(F)V

    .line 39
    iget-object p0, p1, LIP0;->F:Landroid/widget/ImageView;

    const p1, 0x7f0800ef

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_c
    :goto_5
    return-void
.end method

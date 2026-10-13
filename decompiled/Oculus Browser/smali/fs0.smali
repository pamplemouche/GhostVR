.class public abstract Lfs0;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Landroid/widget/TextView;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->setSingleLine()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 4
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_0
    return-void
.end method

.method public static a(Lbs0;Lle1;)V
    .locals 5

    .line 6
    sget-object v0, Lsr0;->c:Lhe1;

    invoke-virtual {p1, v0}, Lle1;->a(Lce1;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    sget-object v0, Les0;->d:Lke1;

    invoke-virtual {p1, v0}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 8
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    goto :goto_1

    .line 9
    :cond_1
    sget-object v0, Les0;->c:Lje1;

    invoke-virtual {p1, v0}, Lle1;->a(Lee1;)I

    move-result v0

    const v3, 0x7f080201

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v3, 0x7f080128

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    const v3, 0x7f0800a3

    goto :goto_0

    :pswitch_2
    const v3, 0x7f08021e

    goto :goto_0

    :pswitch_3
    const v3, 0x7f08013d

    goto :goto_0

    :pswitch_4
    const v3, 0x7f080161

    goto :goto_0

    :pswitch_5
    const v3, 0x7f0800a7

    goto :goto_0

    :pswitch_6
    return-void

    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lsa;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move v0, v1

    const/4 v1, 0x0

    .line 11
    :goto_1
    sget-object v4, Lsr0;->a:Lhe1;

    .line 12
    invoke-virtual {p1, v4}, Lle1;->a(Lce1;)Z

    move-result p1

    if-eqz p0, :cond_3

    if-nez v1, :cond_2

    .line 13
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lbs0;->F:I

    .line 14
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lbs0;->G:I

    goto :goto_2

    .line 15
    :cond_2
    iget v1, p0, Lbs0;->E:I

    iput v1, p0, Lbs0;->F:I

    .line 16
    iput v1, p0, Lbs0;->G:I

    .line 17
    :goto_2
    iget-object v1, p0, Lbs0;->z:Las0;

    .line 18
    iput-object v3, v1, Las0;->w:Landroid/graphics/drawable/Drawable;

    .line 19
    iput-boolean v0, v1, Las0;->x:Z

    .line 20
    iget v0, p0, Lbs0;->F:I

    iget v1, p0, Lbs0;->G:I

    invoke-virtual {v3, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 21
    invoke-virtual {p0, p1}, Lbs0;->a(Z)V

    .line 22
    iget-object p0, p0, Lbs0;->z:Las0;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void

    :cond_3
    const/4 p0, 0x0

    .line 23
    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

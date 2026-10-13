.class public LAr0;
.super LIr0;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LIr0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lle1;

    check-cast p2, LHr0;

    check-cast p3, LUd1;

    .line 2
    sget-object v0, LKr0;->c:Lke1;

    if-ne v0, p3, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcs0;

    .line 4
    iput-object v0, p2, LHr0;->y:Lcs0;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, LKr0;->a:Lke1;

    if-ne v0, p3, :cond_1

    .line 6
    invoke-static {p1, p2}, LIr0;->a(Lle1;LHr0;)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, LKr0;->b:Lke1;

    if-ne v0, p3, :cond_2

    .line 8
    iget-object v1, p2, LHr0;->w:Landroid/widget/ImageView;

    .line 9
    invoke-virtual {p1, v0}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQr0;

    .line 10
    sget-object v2, Lsr0;->a:Lhe1;

    invoke-virtual {p1, v2}, Lle1;->a(Lce1;)Z

    move-result v2

    .line 11
    invoke-static {v1, v0, v2}, LIr0;->a(Landroid/widget/ImageView;LQr0;Z)V

    goto :goto_0

    .line 12
    :cond_2
    sget-object v0, Lsr0;->b:Lje1;

    if-ne v0, p3, :cond_3

    .line 13
    invoke-virtual {p1, v0}, Lle1;->a(Lee1;)I

    move-result v0

    .line 14
    invoke-static {p2, v0}, LA7;->g(Landroid/view/View;I)V

    goto :goto_0

    .line 15
    :cond_3
    sget-object v0, Lsr0;->a:Lhe1;

    if-ne v0, p3, :cond_4

    .line 16
    invoke-static {p1, p2}, LIr0;->a(Lle1;LHr0;)V

    .line 17
    iget-object v0, p2, LHr0;->w:Landroid/widget/ImageView;

    .line 18
    sget-object v1, LKr0;->b:Lke1;

    invoke-virtual {p1, v1}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQr0;

    .line 19
    sget-object v2, Lsr0;->a:Lhe1;

    invoke-virtual {p1, v2}, Lle1;->a(Lce1;)Z

    move-result v2

    .line 20
    invoke-static {v0, v1, v2}, LIr0;->a(Landroid/widget/ImageView;LQr0;Z)V

    .line 21
    :cond_4
    :goto_0
    sget-object v0, LBr0;->b:Lke1;

    const v1, 0x7f0b02ef

    if-ne v0, p3, :cond_5

    .line 22
    invoke-virtual {p2, v1}, LHr0;->a(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 23
    sget-object p3, LBr0;->b:Lke1;

    invoke-virtual {p1, p3}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 24
    :cond_5
    sget-object v0, LBr0;->e:Lke1;

    const v2, 0x7f0b02f0

    if-ne v0, p3, :cond_6

    .line 25
    invoke-virtual {p2, v2}, LHr0;->a(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 26
    sget-object p3, LBr0;->e:Lke1;

    invoke-virtual {p1, p3}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 27
    :cond_6
    sget-object v0, LBr0;->c:Lke1;

    if-ne v0, p3, :cond_7

    .line 28
    invoke-virtual {p2, v1}, LHr0;->a(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 29
    sget-object p3, LBr0;->c:Lke1;

    invoke-virtual {p1, p3}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 30
    :cond_7
    sget-object v0, LBr0;->f:Lke1;

    if-ne v0, p3, :cond_8

    .line 31
    invoke-virtual {p2, v2}, LHr0;->a(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 32
    sget-object p3, LBr0;->f:Lke1;

    invoke-virtual {p1, p3}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 33
    :cond_8
    sget-object v0, LBr0;->a:Lje1;

    if-ne v0, p3, :cond_9

    .line 34
    invoke-virtual {p2, v1}, LHr0;->a(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 35
    sget-object p3, LBr0;->a:Lje1;

    invoke-virtual {p1, p3}, Lle1;->a(Lee1;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_1

    .line 36
    :cond_9
    sget-object v0, LBr0;->d:Lje1;

    if-ne v0, p3, :cond_a

    .line 37
    invoke-virtual {p2, v2}, LHr0;->a(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 38
    sget-object p3, LBr0;->d:Lje1;

    invoke-virtual {p1, p3}, Lle1;->a(Lee1;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_a
    :goto_1
    return-void
.end method

.class public abstract LIw0;
.super Landroid/widget/LinearLayout;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public A:I

.field public final B:I

.field public final C:I

.field public final D:I

.field public final E:Landroid/widget/LinearLayout;

.field public final F:Landroid/widget/ImageView;

.field public final G:Landroid/widget/ImageView;

.field public H:Landroid/widget/TextView;

.field public I:Landroid/widget/LinearLayout;

.field public J:Landroid/widget/TextView;

.field public K:Landroid/widget/TextView;

.field public L:Landroid/graphics/drawable/Drawable;

.field public M:Z

.field public final w:LGw0;

.field public final x:I

.field public final y:Landroid/widget/Button;

.field public final z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LIw0;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;LGw0;LAw0;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x3

    .line 2
    iput p1, p0, LIw0;->A:I

    const/4 p4, 0x1

    .line 3
    iput-boolean p4, p0, LIw0;->M:Z

    .line 4
    iput-object p3, p0, LIw0;->w:LGw0;

    .line 5
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p3, 0x0

    .line 6
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x10

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060144

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 10
    iput v0, p0, LIw0;->C:I

    .line 11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060146

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 13
    iput v0, p0, LIw0;->D:I

    .line 14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07010b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, LIw0;->x:I

    .line 15
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070255

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, LIw0;->B:I

    .line 16
    iget v1, p0, LIw0;->x:I

    invoke-virtual {p0, v1, v0, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 17
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {v0, p4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 19
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, p3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 20
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 21
    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, LIw0;->H:Landroid/widget/TextView;

    .line 23
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object p2, p0, LIw0;->H:Landroid/widget/TextView;

    const v1, 0x7f1401ca

    invoke-static {p2, v1}, LdT;->a(Landroid/widget/TextView;I)V

    .line 25
    iget-object p2, p0, LIw0;->H:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v1, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    new-instance p2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, LIw0;->J:Landroid/widget/TextView;

    const v1, 0x7f0b034a

    .line 27
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setId(I)V

    .line 28
    iget-object p2, p0, LIw0;->J:Landroid/widget/TextView;

    const v1, 0x7f1401c4

    invoke-static {p2, v1}, LdT;->a(Landroid/widget/TextView;I)V

    .line 29
    new-instance p2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p2, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, LIw0;->K:Landroid/widget/TextView;

    .line 30
    invoke-static {p2, v1}, LdT;->a(Landroid/widget/TextView;I)V

    .line 31
    iget-object p2, p0, LIw0;->K:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 32
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, p3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 33
    iput v3, p2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 34
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 35
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07010c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 36
    invoke-virtual {p3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 37
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, LIw0;->I:Landroid/widget/LinearLayout;

    .line 38
    iget-object v3, p0, LIw0;->J:Landroid/widget/TextView;

    invoke-virtual {v1, v3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    iget-object p2, p0, LIw0;->I:Landroid/widget/LinearLayout;

    iget-object v1, p0, LIw0;->K:Landroid/widget/TextView;

    invoke-virtual {p2, v1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    iget-object p2, p0, LIw0;->I:Landroid/widget/LinearLayout;

    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p2, 0x0

    .line 41
    invoke-virtual {p0, p2, p2}, LIw0;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {p0, v0}, LIw0;->a(Landroid/widget/LinearLayout;)V

    .line 43
    iput-object v0, p0, LIw0;->E:Landroid/widget/LinearLayout;

    .line 44
    invoke-virtual {p0}, LIw0;->b()Z

    move-result p3

    if-eqz p3, :cond_0

    iget p2, p0, LIw0;->x:I

    .line 45
    new-instance p3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070109

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 47
    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 48
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 49
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 50
    invoke-virtual {p0, p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object p2, p3

    .line 51
    :cond_0
    iput-object p2, p0, LIw0;->F:Landroid/widget/ImageView;

    .line 52
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 53
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f1301e1

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 54
    invoke-static {p3, p4, p2, p0}, Lorg/chromium/chrome/browser/ui/widget/DualControlLayout;->a(Landroid/content/Context;ZLjava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object p2

    const p3, 0x7f0b034c

    .line 55
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setId(I)V

    .line 56
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 57
    iget v0, p0, LIw0;->x:I

    .line 58
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 59
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    iput-object p2, p0, LIw0;->y:Landroid/widget/Button;

    .line 61
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f080134

    const v0, 0x7f060145

    invoke-static {p2, p3, v0}, LDM0;->a(Landroid/content/Context;II)LDM0;

    move-result-object p2

    .line 62
    new-instance p3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 65
    iget v0, p0, LIw0;->x:I

    .line 66
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 67
    invoke-virtual {p0, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    iput-object p3, p0, LIw0;->G:Landroid/widget/ImageView;

    .line 69
    iput-boolean p4, p0, LIw0;->z:Z

    .line 70
    invoke-virtual {p0, p1}, LIw0;->a(I)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 1
    iput p1, p0, LIw0;->A:I

    .line 2
    invoke-virtual {p0}, LIw0;->c()V

    return-void
.end method

.method public a(Landroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$TruncateAt;Z)V
    .locals 1

    .line 7
    iget-object v0, p0, LIw0;->J:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 8
    iget-object p1, p0, LIw0;->J:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 9
    iget-object p1, p0, LIw0;->K:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 10
    iget-object p1, p0, LIw0;->K:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setSingleLine(Z)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public abstract a(Landroid/widget/LinearLayout;)V
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .line 3
    iget-object v0, p0, LIw0;->J:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, LIw0;->K:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, LIw0;->K:Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    invoke-virtual {p0}, LIw0;->c()V

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 7

    .line 1
    iget-boolean v0, p0, LIw0;->z:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, LIw0;->A:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    const/4 v4, 0x6

    if-ne v0, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 3
    iget v4, p0, LIw0;->D:I

    goto :goto_2

    :cond_3
    iget v4, p0, LIw0;->C:I

    :goto_2
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 4
    iget-object v4, p0, LIw0;->F:Landroid/widget/ImageView;

    const/16 v5, 0x8

    if-eqz v4, :cond_6

    .line 5
    iget-object v4, p0, LIw0;->L:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    iget v4, p0, LIw0;->A:I

    if-eq v4, v1, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    .line 6
    :goto_3
    iget-object v4, p0, LIw0;->F:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    goto :goto_4

    :cond_5
    const/16 v1, 0x8

    :goto_4
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    :cond_6
    invoke-virtual {p0}, LIw0;->a()I

    move-result v1

    const/4 v4, 0x4

    if-nez v1, :cond_8

    .line 8
    iget-object v1, p0, LIw0;->y:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 9
    iget-object v1, p0, LIw0;->G:Landroid/widget/ImageView;

    .line 10
    iget v6, p0, LIw0;->A:I

    if-ne v6, v4, :cond_7

    const/4 v4, 0x0

    goto :goto_5

    :cond_7
    const/16 v4, 0x8

    .line 11
    :goto_5
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a

    .line 12
    :cond_8
    iget v6, p0, LIw0;->A:I

    if-eq v6, v4, :cond_a

    const/4 v4, 0x3

    if-ne v6, v4, :cond_9

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    goto :goto_7

    :cond_a
    :goto_6
    const/4 v4, 0x1

    .line 13
    :goto_7
    iget-object v6, p0, LIw0;->G:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object v6, p0, LIw0;->y:Landroid/widget/Button;

    if-eqz v4, :cond_b

    const/4 v4, 0x0

    goto :goto_8

    :cond_b
    const/16 v4, 0x8

    :goto_8
    invoke-virtual {v6, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 15
    iget-object v4, p0, LIw0;->y:Landroid/widget/Button;

    if-ne v1, v2, :cond_c

    const v1, 0x7f1301e1

    goto :goto_9

    :cond_c
    const v1, 0x7f130135

    :goto_9
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setText(I)V

    .line 16
    :goto_a
    iget-object v1, p0, LIw0;->I:Landroid/widget/LinearLayout;

    iget-boolean v4, p0, LIw0;->M:Z

    if-eqz v4, :cond_d

    const/4 v5, 0x0

    :cond_d
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 17
    :goto_b
    iget-object v5, p0, LIw0;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_f

    .line 18
    iget-object v5, p0, LIw0;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_e

    add-int/lit8 v4, v4, 0x1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_f
    if-le v4, v2, :cond_10

    if-eqz v0, :cond_10

    goto :goto_c

    :cond_10
    const/4 v2, 0x0

    .line 19
    :goto_c
    iget-object v0, p0, LIw0;->H:Landroid/widget/TextView;

    .line 20
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eqz v2, :cond_11

    .line 21
    iget v3, p0, LIw0;->B:I

    :cond_11
    if-eq v0, v3, :cond_12

    .line 22
    iget-object v0, p0, LIw0;->H:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 23
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_12
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, LIw0;->w:LGw0;

    check-cast v0, LXw0;

    invoke-virtual {v0}, LXw0;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, LIw0;->y:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 3
    invoke-virtual {p0}, LIw0;->a()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, LIw0;->w:LGw0;

    check-cast p1, LXw0;

    invoke-virtual {p1, p0}, LXw0;->b(LIw0;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, LIw0;->w:LGw0;

    check-cast p1, LXw0;

    .line 6
    invoke-virtual {p1, p0}, LXw0;->a(LIw0;)V

    :goto_0
    return-void

    .line 7
    :cond_2
    invoke-virtual {p0, p1}, LIw0;->a(Landroid/view/View;)V

    .line 8
    invoke-virtual {p0}, LIw0;->c()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, LIw0;->w:LGw0;

    check-cast p1, LXw0;

    invoke-virtual {p1}, LXw0;->b()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.class public LXx0;
.super Landroid/support/v7/preference/Preference;
.source "PG"


# instance fields
.field public i0:Lqy0;

.field public j0:Landroid/view/View$OnClickListener;

.field public k0:I

.field public l0:I

.field public m0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, LXx0;->m0:Z

    const p1, 0x7f0e016b

    .line 3
    iput p1, p0, Landroid/support/v7/preference/Preference;->c0:I

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->e(Z)V

    return-void
.end method


# virtual methods
.method public a(IILandroid/view/View$OnClickListener;)V
    .locals 0

    .line 21
    iput p1, p0, LXx0;->k0:I

    .line 22
    iput p2, p0, LXx0;->l0:I

    .line 23
    iput-object p3, p0, LXx0;->j0:Landroid/view/View$OnClickListener;

    .line 24
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->o()V

    return-void
.end method

.method public a(LGc;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->a(LGc;)V

    const v0, 0x7f0b0211

    .line 2
    invoke-virtual {p1, v0}, LGc;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 3
    iget-object p1, p1, Ldh;->w:Landroid/view/View;

    .line 4
    iget v2, p0, LXx0;->k0:I

    if-eqz v2, :cond_1

    .line 5
    iget-object v3, p0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    .line 6
    invoke-static {v3, v2}, Lxy0;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 7
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 9
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-boolean v2, p0, LXx0;->m0:Z

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 11
    iget-boolean v2, p0, LXx0;->m0:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, LXx0;->j0:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    :cond_0
    iget v2, p0, LXx0;->l0:I

    if-eqz v2, :cond_1

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, LXx0;->l0:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 14
    :cond_1
    iget-object v1, p0, LXx0;->i0:Lqy0;

    if-nez v1, :cond_2

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {v1, p0, p1}, Lsy0;->a(Lqy0;Landroid/support/v7/preference/Preference;Landroid/view/View;)V

    .line 16
    invoke-interface {v1, p0}, Lqy0;->a(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 17
    invoke-interface {v1, p0}, Lqy0;->b(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 19
    invoke-static {v1, p0}, Lsy0;->a(Lqy0;Landroid/support/v7/preference/Preference;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    new-instance v0, Lry0;

    invoke-direct {v0, v1, p0}, Lry0;-><init>(Lqy0;LXx0;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public r()V
    .locals 1

    .line 1
    iget-object v0, p0, LXx0;->i0:Lqy0;

    invoke-static {v0, p0}, Lsy0;->c(Lqy0;Landroid/support/v7/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

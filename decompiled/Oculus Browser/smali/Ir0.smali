.class public abstract LIr0;
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

.method public static a(Landroid/widget/ImageView;LQr0;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    if-nez p1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 4
    :cond_1
    iget-object v0, p1, LQr0;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-boolean p1, p1, LQr0;->b:Z

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, LAO0;->a(Landroid/content/Context;Z)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void
.end method

.method public static a(Lle1;LHr0;)V
    .locals 6

    .line 8
    iget-object p1, p1, LHr0;->x:LLr0;

    .line 9
    iget-object p1, p1, LLr0;->w:Lorg/chromium/chrome/browser/ui/widget/RoundedCornerImageView;

    .line 10
    sget-object v0, LKr0;->a:Lke1;

    invoke-virtual {p0, v0}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQr0;

    .line 11
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 12
    iget-boolean v2, v0, LQr0;->d:Z

    if-eqz v2, :cond_0

    const v2, 0x7f07021f

    goto :goto_0

    :cond_0
    const v2, 0x7f07021c

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 13
    iget-boolean v3, v0, LQr0;->d:Z

    if-eqz v3, :cond_1

    const v3, 0x7f07021e

    goto :goto_1

    :cond_1
    const v3, 0x7f07021b

    :goto_1
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 14
    iget-boolean v4, v0, LQr0;->c:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    const v4, 0x7f0700bd

    .line 15
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 16
    :goto_2
    invoke-virtual {p1, v1, v1, v1, v1}, Lorg/chromium/chrome/browser/ui/widget/RoundedCornerImageView;->a(IIII)V

    .line 17
    invoke-virtual {p1, v2, v5, v3, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 18
    sget-object v1, Lsr0;->a:Lhe1;

    invoke-virtual {p0, v1}, Lle1;->a(Lce1;)Z

    move-result p0

    .line 19
    invoke-static {p1, v0, p0}, LIr0;->a(Landroid/widget/ImageView;LQr0;Z)V

    return-void
.end method

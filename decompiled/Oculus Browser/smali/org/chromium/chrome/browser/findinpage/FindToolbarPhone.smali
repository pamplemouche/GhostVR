.class public Lorg/chromium/chrome/browser/findinpage/FindToolbarPhone;
.super Lwc0;
.source "PG"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/findinpage/FindToolbarPhone;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lwc0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a(ZZ)I
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    const p1, 0x7f06008a

    goto :goto_0

    :cond_0
    const p1, 0x7f0601a2

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 2
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    .line 3
    :cond_1
    invoke-super {p0, p1, p2}, Lwc0;->a(ZZ)I

    move-result p1

    return p1
.end method

.method public b(Z)V
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    invoke-super {p0, p1}, Lwc0;->b(Z)V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    invoke-super {p0}, Lwc0;->d()V

    return-void
.end method

.method public e(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, LAO0;->a(Landroid/content/res/Resources;Z)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, LAO0;->a(Landroid/content/Context;Z)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lwc0;->A:Landroid/widget/ImageButton;

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 5
    iget-object v0, p0, Lwc0;->z:Landroid/widget/ImageButton;

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 7
    iget-object v0, p0, Lwc0;->y:Landroid/widget/ImageButton;

    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    const p1, 0x7f0600cc

    const v0, 0x7f0600cb

    const v1, 0x7f06019f

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, LAO0;->a(Landroid/content/res/Resources;Z)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, LAO0;->a(Landroid/content/Context;Z)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lwc0;->A:Landroid/widget/ImageButton;

    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 13
    iget-object v0, p0, Lwc0;->z:Landroid/widget/ImageButton;

    .line 14
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 15
    iget-object v0, p0, Lwc0;->y:Landroid/widget/ImageButton;

    .line 16
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    const p1, 0x7f06008c

    const v0, 0x7f0600ca

    const v1, 0x7f0600ac

    .line 17
    :goto_0
    iget-object v2, p0, Lwc0;->x:Lorg/chromium/chrome/browser/findinpage/FindToolbar$FindQuery;

    .line 18
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 19
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 20
    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 21
    iget-object p1, p0, Lwc0;->x:Lorg/chromium/chrome/browser/findinpage/FindToolbar$FindQuery;

    .line 22
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 23
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 24
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 25
    iget-object p1, p0, Lwc0;->B:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

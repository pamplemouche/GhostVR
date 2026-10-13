.class public Lorg/chromium/chrome/browser/toolbar/bottom/BottomToolbarNewTabButton;
.super Lorg/chromium/ui/widget/ChromeImageButton;
.source "PG"

# interfaces
.implements LIJ0;
.implements Ld00;
.implements Le00;


# instance fields
.field public final y:Landroid/graphics/drawable/Drawable;

.field public final z:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/chromium/ui/widget/ChromeImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/bottom/BottomToolbarNewTabButton;->z:Landroid/content/res/Resources;

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    const v0, 0x7f08027d

    .line 4
    invoke-static {p1, v0, p2}, LY0;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)LY0;

    move-result-object p1

    invoke-virtual {p0, p1}, LBe;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/bottom/BottomToolbarNewTabButton;->z:Landroid/content/res/Resources;

    const p2, 0x7f08028a

    invoke-static {p1, p2}, LdT;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/bottom/BottomToolbarNewTabButton;->y:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 7
    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/bottom/BottomToolbarNewTabButton;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/ColorStateList;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const p1, 0x7f13011e

    goto :goto_0

    :cond_0
    const p1, 0x7f13011f

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(IZ)V
    .locals 0

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

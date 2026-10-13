.class public Lorg/chromium/chrome/browser/toolbar/bottom/SearchAccelerator;
.super Lorg/chromium/ui/widget/ChromeImageButton;
.source "PG"

# interfaces
.implements Ld00;
.implements Le00;
.implements LIJ0;


# instance fields
.field public final y:Landroid/graphics/drawable/Drawable;

.field public final z:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/chromium/ui/widget/ChromeImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/bottom/SearchAccelerator;->z:Landroid/content/res/Resources;

    const p2, 0x7f08028a

    .line 3
    invoke-static {p1, p2}, LdT;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/bottom/SearchAccelerator;->y:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 5
    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/bottom/SearchAccelerator;->y:Landroid/graphics/drawable/Drawable;

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
    .locals 0

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

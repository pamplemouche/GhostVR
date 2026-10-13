.class public Lorg/chromium/chrome/browser/toolbar/bottom/CloseAllTabsButton;
.super Lorg/chromium/ui/widget/ChromeImageButton;
.source "PG"

# interfaces
.implements Le00;
.implements LIJ0;
.implements LMJ0;


# instance fields
.field public y:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/chromium/ui/widget/ChromeImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/toolbar/bottom/CloseAllTabsButton;->y:Z

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-boolean p2, p0, Lorg/chromium/chrome/browser/toolbar/bottom/CloseAllTabsButton;->y:Z

    if-ne p1, p2, :cond_1

    return-void

    .line 4
    :cond_1
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/toolbar/bottom/CloseAllTabsButton;->y:Z

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const p1, 0x7f130114

    goto :goto_0

    :cond_0
    const p1, 0x7f130115

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

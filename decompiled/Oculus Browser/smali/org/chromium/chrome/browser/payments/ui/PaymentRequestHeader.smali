.class public Lorg/chromium/chrome/browser/payments/ui/PaymentRequestHeader;
.super Landroid/widget/FrameLayout;
.source "PG"


# instance fields
.field public final w:I

.field public x:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    iput-object p1, p0, Lorg/chromium/chrome/browser/payments/ui/PaymentRequestHeader;->x:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060144

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 5
    iput p1, p0, Lorg/chromium/chrome/browser/payments/ui/PaymentRequestHeader;->w:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    const v0, 0x7f0b0316

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0b0202

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 3
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    iget v0, p0, Lorg/chromium/chrome/browser/payments/ui/PaymentRequestHeader;->w:I

    .line 5
    invoke-static {v0}, LAO0;->d(I)Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    .line 6
    iget-object v0, p0, Lorg/chromium/chrome/browser/payments/ui/PaymentRequestHeader;->x:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 7
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v0, v7

    move v3, p3

    .line 8
    invoke-static/range {v0 .. v6}, Lwp0;->a(Landroid/text/Spannable;Landroid/content/res/Resources;Lorg/chromium/chrome/browser/profiles/Profile;IZZZ)V

    .line 9
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p3, "https://"

    .line 10
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 11
    iget-object p2, p0, Lorg/chromium/chrome/browser/payments/ui/PaymentRequestHeader;->x:Landroid/content/Context;

    const p3, 0x7f08028d

    const v0, 0x7f060076

    .line 12
    invoke-static {p2, p3, v0}, LDM0;->a(Landroid/content/Context;II)LDM0;

    move-result-object p2

    const/4 p3, 0x0

    .line 13
    invoke-virtual {p1, p2, p3, p3, p3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 14
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    iget v0, p0, Lorg/chromium/chrome/browser/payments/ui/PaymentRequestHeader;->w:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.class public Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;
.super Landroid/support/design/widget/TabLayout;
.source "PG"

# interfaces
.implements LMJ0;


# instance fields
.field public n0:Lv0;

.field public o0:Lv0;

.field public p0:Landroid/widget/ImageView;

.field public q0:Landroid/widget/ImageView;

.field public r0:LOJ0;

.field public s0:Landroid/content/res/ColorStateList;

.field public t0:Landroid/content/res/ColorStateList;

.field public u0:Landroid/content/res/ColorStateList;

.field public v0:Landroid/content/res/ColorStateList;

.field public w0:LpI0;

.field public x0:LNJ0;

.field public y0:LxI0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f060169

    invoke-static {p1, p2}, Lsa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;->s0:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0600ee

    invoke-static {p1, p2}, Lsa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;->u0:Landroid/content/res/ColorStateList;

    .line 4
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0601a4

    invoke-static {p1, p2}, Lsa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;->t0:Landroid/content/res/ColorStateList;

    .line 5
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0601a5

    invoke-static {p1, p2}, Lsa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;->v0:Landroid/content/res/ColorStateList;

    .line 6
    new-instance p1, Lorg/chromium/ui/widget/ChromeImageView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/chromium/ui/widget/ChromeImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;->p0:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, LOJ0;->a(Landroid/content/Context;Z)LOJ0;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;->r0:LOJ0;

    .line 8
    iget-object p2, p0, Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;->p0:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;->p0:Landroid/widget/ImageView;

    .line 10
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f130100

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 12
    new-instance p1, Lorg/chromium/ui/widget/ChromeImageView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/chromium/ui/widget/ChromeImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;->q0:Landroid/widget/ImageView;

    const p2, 0x7f080235

    .line 13
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    iget-object p1, p0, Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;->q0:Landroid/widget/ImageView;

    .line 15
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1300fe

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->c()Lv0;

    move-result-object p1

    iget-object p2, p0, Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;->p0:Landroid/widget/ImageView;

    .line 18
    iput-object p2, p1, Lv0;->e:Landroid/view/View;

    .line 19
    invoke-virtual {p1}, Lv0;->c()V

    .line 20
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;->n0:Lv0;

    .line 21
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->a(Lv0;)V

    .line 22
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->c()Lv0;

    move-result-object p1

    iget-object p2, p0, Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;->q0:Landroid/widget/ImageView;

    .line 23
    iput-object p2, p1, Lv0;->e:Landroid/view/View;

    .line 24
    invoke-virtual {p1}, Lv0;->c()V

    .line 25
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;->o0:Lv0;

    .line 26
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->a(Lv0;)V

    .line 27
    new-instance p1, LKJ0;

    invoke-direct {p1, p0}, LKJ0;-><init>(Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;)V

    .line 28
    iget-object p2, p0, Landroid/support/design/widget/TabLayout;->c0:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 29
    iget-object p2, p0, Landroid/support/design/widget/TabLayout;->c0:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/IncognitoToggleTabLayout;->r0:LOJ0;

    invoke-virtual {v0, p1, p2}, LOJ0;->a(IZ)V

    :cond_0
    return-void
.end method

.class public Lorg/chromium/chrome/browser/signin/PersonalizedSigninPromoView;
.super Landroid/widget/LinearLayout;
.source "PG"


# instance fields
.field public A:Landroid/widget/Button;

.field public w:Landroid/widget/ImageView;

.field public x:Landroid/widget/ImageButton;

.field public y:Landroid/widget/TextView;

.field public z:Lorg/chromium/ui/widget/ButtonCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0b03f7

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/PersonalizedSigninPromoView;->w:Landroid/widget/ImageView;

    const v0, 0x7f0b03f5

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/PersonalizedSigninPromoView;->x:Landroid/widget/ImageButton;

    const v0, 0x7f0b03f6

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/PersonalizedSigninPromoView;->y:Landroid/widget/TextView;

    const v0, 0x7f0b03f8

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/widget/ButtonCompat;

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/PersonalizedSigninPromoView;->z:Lorg/chromium/ui/widget/ButtonCompat;

    const v0, 0x7f0b03f4

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/PersonalizedSigninPromoView;->A:Landroid/widget/Button;

    return-void
.end method

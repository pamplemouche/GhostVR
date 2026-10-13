.class public Lorg/chromium/chrome/browser/signin/SigninView;
.super Landroid/widget/LinearLayout;
.source "PG"


# instance fields
.field public A:Landroid/widget/ImageView;

.field public B:Landroid/widget/TextView;

.field public C:Landroid/widget/TextView;

.field public D:Landroid/widget/ImageView;

.field public E:Landroid/widget/TextView;

.field public F:Landroid/widget/TextView;

.field public G:Landroid/widget/TextView;

.field public H:Lorg/chromium/ui/widget/ButtonCompat;

.field public I:Landroid/widget/Button;

.field public J:Landroid/widget/Button;

.field public K:Landroid/view/View;

.field public L:Lnd1;

.field public w:Lorg/chromium/chrome/browser/signin/SigninScrollView;

.field public x:Landroid/widget/ImageView;

.field public y:Landroid/widget/TextView;

.field public z:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0b03fa

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/signin/SigninScrollView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninView;->w:Lorg/chromium/chrome/browser/signin/SigninScrollView;

    const v0, 0x7f0b03f3

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninView;->x:Landroid/widget/ImageView;

    const v0, 0x7f0b03fd

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninView;->y:Landroid/widget/TextView;

    const v0, 0x7f0b03f0

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninView;->z:Landroid/view/View;

    const v0, 0x7f0b0010

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninView;->A:Landroid/widget/ImageView;

    const v0, 0x7f0b0013

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninView;->B:Landroid/widget/TextView;

    const v0, 0x7f0b0014

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninView;->C:Landroid/widget/TextView;

    const v0, 0x7f0b0011

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninView;->D:Landroid/widget/ImageView;

    const v0, 0x7f0b03fc

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninView;->E:Landroid/widget/TextView;

    const v0, 0x7f0b03fb

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninView;->F:Landroid/widget/TextView;

    const v0, 0x7f0b03f1

    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninView;->G:Landroid/widget/TextView;

    const v0, 0x7f0b0358

    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/widget/ButtonCompat;

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninView;->H:Lorg/chromium/ui/widget/ButtonCompat;

    const v0, 0x7f0b02c4

    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninView;->I:Landroid/widget/Button;

    const v0, 0x7f0b0282

    .line 15
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninView;->J:Landroid/widget/Button;

    const v0, 0x7f0b0359

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninView;->K:Landroid/view/View;

    .line 17
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninView;->x:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 18
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    .line 19
    new-instance v1, Ljd1;

    check-cast v0, LF0;

    invoke-direct {v1, v0}, Ljd1;-><init>(LF0;)V

    goto :goto_0

    .line 20
    :cond_0
    instance-of v1, v0, LF0;

    if-eqz v1, :cond_1

    .line 21
    new-instance v1, Ljd1;

    check-cast v0, LF0;

    invoke-direct {v1, v0}, Ljd1;-><init>(LF0;)V

    goto :goto_0

    .line 22
    :cond_1
    new-instance v1, Lmd1;

    check-cast v0, Landroid/graphics/drawable/Animatable2;

    invoke-direct {v1, v0}, Lmd1;-><init>(Landroid/graphics/drawable/Animatable2;)V

    .line 23
    :goto_0
    iput-object v1, p0, Lorg/chromium/chrome/browser/signin/SigninView;->L:Lnd1;

    return-void
.end method

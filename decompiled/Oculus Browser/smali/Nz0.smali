.class public LNz0;
.super Ldh;
.source "PG"


# instance fields
.field public P:Landroid/widget/TextView;

.field public Q:Landroid/widget/TextView;

.field public R:Landroid/widget/ImageView;

.field public S:Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Ldh;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b0494

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LNz0;->P:Landroid/widget/TextView;

    const v0, 0x7f0b0151

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LNz0;->Q:Landroid/widget/TextView;

    const v0, 0x7f0b020b

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LNz0;->R:Landroid/widget/ImageView;

    const v0, 0x7f0b0281

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;

    iput-object p1, p0, LNz0;->S:Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;

    return-void
.end method

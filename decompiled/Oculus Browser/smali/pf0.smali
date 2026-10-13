.class public Lpf0;
.super Landroid/widget/LinearLayout;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:LVf0;

.field public final x:I

.field public final y:I

.field public final z:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lpf0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LVf0;IILandroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lpf0;->w:LVf0;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070151

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lpf0;->x:I

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070150

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lpf0;->y:I

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 p1, 0x10

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3, p4, p5}, LUf0;->a(Landroid/content/Context;IILandroid/graphics/Bitmap;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    iget p3, p0, Lpf0;->y:I

    iget p4, p0, Lpf0;->x:I

    invoke-direct {p2, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 9
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, LUf0;->a(Landroid/content/Context;)Landroid/widget/ImageButton;

    move-result-object p1

    .line 11
    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    iget p3, p0, Lpf0;->x:I

    invoke-direct {p2, p3, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 13
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iput-object p1, p0, Lpf0;->z:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;F)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x2

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    .line 1
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lpf0;->x:I

    invoke-direct {p2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object p2, v0

    .line 3
    :goto_0
    iget v0, p0, Lpf0;->x:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    const/16 v0, 0x50

    .line 4
    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 5
    iget-object v0, p0, Lpf0;->z:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0218

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lpf0;->w:LVf0;

    invoke-interface {p1}, LVf0;->e()V

    :cond_0
    return-void
.end method

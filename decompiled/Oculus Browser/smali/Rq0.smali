.class public final synthetic LRq0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lne1;


# static fields
.field public static final a:Lne1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LRq0;

    invoke-direct {v0}, LRq0;-><init>()V

    sput-object v0, LRq0;->a:Lne1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lle1;

    check-cast p2, Lvr0;

    check-cast p3, LUd1;

    .line 1
    sget-object v0, Ltr0;->a:Lhe1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    sget-object p3, Ltr0;->a:Lhe1;

    invoke-virtual {p1, p3}, Lle1;->a(Lce1;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p2, Lvr0;->a:Landroid/view/ViewGroup;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object p1, p2, Lvr0;->b:Lrr0;

    invoke-virtual {p1}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p2, Lvr0;->a:Landroid/view/ViewGroup;

    iget-object v0, p2, Lvr0;->b:Lrr0;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 5
    :cond_0
    iget-object p1, p2, Lvr0;->b:Lrr0;

    .line 6
    invoke-virtual {p1}, Landroid/widget/ListView;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_9

    .line 7
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 8
    invoke-virtual {p1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_2

    .line 9
    :cond_1
    iget-object p1, p2, Lvr0;->b:Lrr0;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 10
    iget-object p1, p2, Lvr0;->b:Lrr0;

    invoke-static {p1}, Lwc1;->a(Landroid/view/View;)V

    .line 11
    iget-object p1, p2, Lvr0;->a:Landroid/view/ViewGroup;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 12
    :cond_2
    sget-object v0, Ltr0;->b:Lke1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    iget-object p2, p2, Lvr0;->b:Lrr0;

    sget-object p3, Ltr0;->b:Lke1;

    invoke-virtual {p1, p3}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lor0;

    .line 14
    iput-object p1, p2, Lrr0;->A:Lor0;

    .line 15
    check-cast p1, LYo0;

    .line 16
    iget-object p1, p1, LYo0;->a:Lep0;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p1

    const p3, 0x7f0b04a0

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 17
    iput-object p1, p2, Lrr0;->B:Landroid/view/View;

    .line 18
    new-instance p1, Lpr0;

    invoke-direct {p1, p2}, Lpr0;-><init>(Lrr0;)V

    iput-object p1, p2, Lrr0;->D:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 19
    iget-object p1, p2, Lrr0;->A:Lor0;

    check-cast p1, LYo0;

    .line 20
    iget-object p1, p1, LYo0;->a:Lep0;

    .line 21
    iget-boolean p3, p1, Lep0;->z:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    goto :goto_0

    :cond_3
    move-object p1, v0

    .line 22
    :goto_0
    iput-object p1, p2, Lrr0;->C:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 23
    new-instance p1, Lqr0;

    invoke-direct {p1, p2}, Lqr0;-><init>(Lrr0;)V

    iput-object p1, p2, Lrr0;->E:Landroid/view/View$OnLayoutChangeListener;

    goto :goto_2

    .line 24
    :cond_4
    iput-object v0, p2, Lrr0;->E:Landroid/view/View$OnLayoutChangeListener;

    goto :goto_2

    .line 25
    :cond_5
    sget-object v0, Ltr0;->c:Lke1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 26
    sget-object p3, Ltr0;->c:Lke1;

    invoke-virtual {p1, p3}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LQd1;

    new-instance p3, Lur0;

    invoke-direct {p3, p2}, Lur0;-><init>(Lvr0;)V

    .line 27
    iget-object p1, p1, LOd1;->w:LWT;

    invoke-virtual {p1, p3}, LWT;->a(Ljava/lang/Object;)Z

    goto :goto_2

    .line 28
    :cond_6
    sget-object v0, Ltr0;->d:Lhe1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 29
    iget-object p2, p2, Lvr0;->b:Lrr0;

    sget-object p3, Ltr0;->d:Lhe1;

    invoke-virtual {p1, p3}, Lle1;->a(Lce1;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 30
    iget p1, p2, Lrr0;->z:I

    goto :goto_1

    :cond_7
    iget p1, p2, Lrr0;->y:I

    .line 31
    :goto_1
    invoke-virtual {p2}, Landroid/widget/ListView;->isHardwareAccelerated()Z

    move-result p3

    if-nez p3, :cond_8

    .line 32
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p3

    const/16 v0, 0xff

    if-ne p3, v0, :cond_8

    const/16 p3, 0xfe

    .line 33
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p3, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 34
    :cond_8
    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p3, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    :goto_2
    return-void
.end method

.class public final synthetic LpM0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LpM0;->w:Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    iget-object p1, p0, LpM0;->w:Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;

    .line 1
    iget-object v0, p1, Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;->A:LuM0;

    if-eqz v0, :cond_3

    .line 2
    invoke-interface {v0}, LuM0;->b()[LvM0;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 3
    array-length v0, v6

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;->b()V

    .line 5
    new-instance v7, LtM0;

    .line 6
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e00f8

    move-object v0, v7

    move-object v1, p1

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, LtM0;-><init>(Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;Landroid/content/Context;I[LvM0;[LvM0;)V

    .line 7
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e002a

    const/4 v8, 0x0

    .line 8
    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/view/ViewGroup;

    const v0, 0x7f0b004f

    .line 9
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 10
    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 11
    new-instance v1, LqM0;

    invoke-direct {v1, p1, v6}, LqM0;-><init>(Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;[LvM0;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 12
    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 13
    new-instance v5, Lpf1;

    invoke-direct {v5, p1}, Lpf1;-><init>(Landroid/view/View;)V

    const/4 v6, 0x1

    .line 14
    iput-boolean v6, v5, Lpf1;->C:Z

    .line 15
    new-instance v7, Lef1;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 16
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0802ad

    invoke-static {v0, v2}, LdT;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lef1;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/view/View;Lhf1;)V

    iput-object v7, p1, Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;->z:Lef1;

    .line 17
    iput-boolean v6, v7, Lef1;->T:Z

    .line 18
    iput-boolean v6, v7, Lef1;->U:Z

    .line 19
    iget v0, p1, Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;->y:I

    .line 20
    iput v0, v7, Lef1;->N:I

    .line 21
    iget-object v0, v7, Lef1;->B:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 22
    iget-object v0, p1, Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;->z:Lef1;

    .line 23
    iput-object p1, v0, Lef1;->H:Ldf1;

    .line 24
    new-instance v1, LrM0;

    invoke-direct {v1, p1}, LrM0;-><init>(Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;)V

    .line 25
    iget-object v0, v0, Lef1;->G:LWT;

    invoke-virtual {v0, v1}, LWT;->a(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p1, Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;->z:Lef1;

    invoke-virtual {v0}, Lef1;->d()V

    .line 27
    iget-object p1, p1, Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;->B:LWT;

    invoke-virtual {p1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LwM0;

    .line 28
    check-cast p1, LT10;

    .line 29
    iget-object p1, p1, LT10;->a:LU10;

    if-eqz p1, :cond_0

    .line 30
    throw v8

    .line 31
    :cond_0
    throw v8

    :cond_1
    return-void

    .line 32
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Delegate provided no items."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Delegate was not set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

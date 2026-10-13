.class public LI00;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LH00;
.implements Lzi0;
.implements Lsi0;


# instance fields
.field public final A:Ljava/util/List;

.field public final B:I

.field public final C:Landroid/view/View;

.field public final D:LK00;

.field public final E:LF00;

.field public final F:Landroid/view/View;

.field public final G:Lqi0;

.field public H:Ljava/lang/Integer;

.field public I:Z

.field public w:Lv00;

.field public x:LG00;

.field public y:Landroid/view/Menu;

.field public final z:Ljava/util/List;


# direct methods
.method public constructor <init>(LK00;LF00;ILandroid/view/View;Lqi0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, LI00;->E:LF00;

    .line 3
    iput-object p1, p0, LI00;->D:LK00;

    .line 4
    iput-object p4, p0, LI00;->F:Landroid/view/View;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LI00;->z:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LI00;->A:Ljava/util/List;

    .line 7
    iput p3, p0, LI00;->B:I

    .line 8
    iget-object p1, p0, LI00;->F:Landroid/view/View;

    const p2, 0x7f0b025e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, LI00;->C:Landroid/view/View;

    .line 9
    iput-object p5, p0, LI00;->G:Lqi0;

    .line 10
    check-cast p5, Lqg0;

    invoke-virtual {p5, p0}, Lqg0;->a(Lvi0;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, LI00;->H:Ljava/lang/Integer;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, LI00;->H:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iput-object p1, p0, LI00;->H:Ljava/lang/Integer;

    .line 4
    iput-boolean p2, p0, LI00;->I:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 5
    :goto_0
    iget-object p2, p0, LI00;->A:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ00;

    invoke-interface {v0, p1}, LJ00;->a(Z)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public a(Landroid/view/View;ZZ)Z
    .locals 1

    .line 6
    invoke-virtual {p0}, LI00;->h()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, LI00;->f()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, LoN0;->c()V

    .line 8
    iget-object p2, p0, LI00;->F:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "window"

    .line 9
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/WindowManager;

    .line 10
    invoke-interface {p3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Display;->getRotation()I

    if-nez p1, :cond_1

    .line 11
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 12
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 13
    iget-object v0, p0, LI00;->F:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 14
    iget p3, p3, Landroid/graphics/Rect;->top:I

    .line 15
    iget-object v0, p0, LI00;->C:Landroid/view/View;

    sub-int/2addr p1, p3

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setY(F)V

    .line 16
    iget-object p1, p0, LI00;->C:Landroid/view/View;

    .line 17
    :cond_1
    iget-object p3, p0, LI00;->y:Landroid/view/Menu;

    if-nez p3, :cond_2

    .line 18
    new-instance p3, Landroid/widget/PopupMenu;

    invoke-direct {p3, p2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 19
    iget p1, p0, LI00;->B:I

    invoke-virtual {p3, p1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 20
    invoke-virtual {p3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    iput-object p1, p0, LI00;->y:Landroid/view/Menu;

    .line 21
    :cond_2
    iget-object p1, p0, LI00;->D:LK00;

    check-cast p1, LN00;

    .line 22
    iget-boolean p2, p1, LN00;->c:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_3

    .line 23
    iget-object p2, p1, LN00;->f:LpI0;

    check-cast p2, LrI0;

    invoke-virtual {p2}, LrI0;->a()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object p2

    invoke-interface {p2}, LdI0;->getCount()I

    .line 24
    iget-object p1, p1, LN00;->f:LpI0;

    check-cast p1, LrI0;

    invoke-virtual {p1}, LrI0;->a()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object p1

    invoke-interface {p1}, LdI0;->a()Z

    .line 25
    throw p3

    .line 26
    :cond_3
    throw p3

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, LI00;->a(Ljava/lang/Integer;Z)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, LI00;->w:Lv00;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lv00;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LI00;->w:Lv00;

    invoke-virtual {v0}, Lv00;->a()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, LI00;->w:Lv00;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lv00;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()V
    .locals 0

    .line 1
    invoke-virtual {p0}, LI00;->d()V

    return-void
.end method

.method public h()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, LI00;->z:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, LI00;->z:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx00;

    invoke-interface {v2}, Lx00;->z()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

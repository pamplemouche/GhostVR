.class public LoN0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldf1;


# static fields
.field public static final G:Ljava/util/Set;


# instance fields
.field public final A:Ljava/lang/Runnable;

.field public final B:Landroid/widget/PopupWindow$OnDismissListener;

.field public C:J

.field public final D:Ljava/lang/String;

.field public final E:Ljava/lang/String;

.field public F:Landroid/view/View;

.field public final w:Landroid/content/Context;

.field public final x:Landroid/os/Handler;

.field public final y:Lef1;

.field public final z:LlN0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, LoN0;->G:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZLhf1;)V
    .locals 7

    .line 1
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p5

    move-object v6, p6

    .line 3
    invoke-direct/range {v0 .. v6}, LoN0;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ZLhf1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ZLhf1;)V
    .locals 6

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, LmN0;

    invoke-direct {v0, p0}, LmN0;-><init>(LoN0;)V

    iput-object v0, p0, LoN0;->A:Ljava/lang/Runnable;

    .line 6
    new-instance v0, LnN0;

    invoke-direct {v0, p0}, LnN0;-><init>(LoN0;)V

    iput-object v0, p0, LoN0;->B:Landroid/widget/PopupWindow$OnDismissListener;

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, LoN0;->C:J

    .line 8
    iput-object p1, p0, LoN0;->w:Landroid/content/Context;

    .line 9
    iput-object p3, p0, LoN0;->D:Ljava/lang/String;

    .line 10
    iput-object p4, p0, LoN0;->E:Ljava/lang/String;

    .line 11
    new-instance p3, LlN0;

    invoke-direct {p3, p1}, LlN0;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, LoN0;->z:LlN0;

    .line 12
    iput-boolean p5, p3, LlN0;->F:Z

    .line 13
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 14
    iget-object p3, p0, LoN0;->w:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const p4, 0x7f0e01bf

    const/4 p5, 0x0

    invoke-virtual {p3, p4, p5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 15
    move-object p4, p3

    check-cast p4, Landroid/widget/TextView;

    .line 16
    invoke-static {}, LuO0;->a()Z

    move-result p5

    if-eqz p5, :cond_0

    iget-object p5, p0, LoN0;->E:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p5, p0, LoN0;->D:Ljava/lang/String;

    :goto_0
    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iput-object p3, p0, LoN0;->F:Landroid/view/View;

    .line 18
    new-instance p4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p5, -0x2

    invoke-direct {p4, p5, p5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    new-instance p3, Lef1;

    iget-object v3, p0, LoN0;->z:LlN0;

    iget-object v4, p0, LoN0;->F:Landroid/view/View;

    move-object v0, p3

    move-object v1, p1

    move-object v2, p2

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lef1;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/view/View;Lhf1;)V

    iput-object p3, p0, LoN0;->y:Lef1;

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0702f2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 21
    iput p1, p3, Lef1;->M:I

    .line 22
    iget-object p1, p0, LoN0;->y:Lef1;

    const/4 p2, 0x1

    .line 23
    iput p2, p1, Lef1;->P:I

    .line 24
    iput-object p0, p1, Lef1;->H:Ldf1;

    .line 25
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, LoN0;->x:Landroid/os/Handler;

    .line 26
    iget-object p1, p0, LoN0;->y:Lef1;

    const p3, 0x7f140225

    .line 27
    iget-object p1, p1, Lef1;->B:Landroid/widget/PopupWindow;

    invoke-virtual {p1, p3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 28
    iget-object p1, p0, LoN0;->B:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {p0, p1}, LoN0;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 29
    invoke-static {}, LuO0;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, LoN0;->a(Z)V

    .line 30
    :cond_1
    iget-object p1, p0, LoN0;->z:LlN0;

    iget-object p2, p0, LoN0;->w:Landroid/content/Context;

    .line 31
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0600ee

    .line 32
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    .line 33
    iget-object p3, p1, LlN0;->C:Landroid/graphics/drawable/Drawable;

    .line 34
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 35
    iget-object p3, p1, LlN0;->B:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public static c()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, LoN0;->G:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LoN0;

    .line 3
    invoke-virtual {v1}, LoN0;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, LoN0;->y:Lef1;

    .line 2
    iget-object v0, v0, Lef1;->B:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    .line 3
    iget-object v0, p0, LoN0;->y:Lef1;

    .line 4
    iget-object v0, v0, Lef1;->G:LWT;

    invoke-virtual {v0, p1}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 5
    invoke-static {}, LuO0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 6
    :cond_0
    iget-object v0, p0, LoN0;->y:Lef1;

    .line 7
    iput-boolean p1, v0, Lef1;->F:Z

    .line 8
    iget-object v0, v0, Lef1;->B:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    return-void
.end method

.method public a(ZIIIILandroid/graphics/Rect;)V
    .locals 1

    .line 9
    iget-object p3, p0, LoN0;->z:LlN0;

    .line 10
    iget-boolean p3, p3, LlN0;->F:Z

    if-eqz p3, :cond_0

    .line 11
    invoke-virtual {p6}, Landroid/graphics/Rect;->centerX()I

    move-result p3

    sub-int/2addr p3, p2

    .line 12
    iget-object p2, p0, LoN0;->z:LlN0;

    .line 13
    iget-object p5, p2, LlN0;->C:Landroid/graphics/drawable/Drawable;

    iget-object p6, p2, LlN0;->w:Landroid/graphics/Rect;

    invoke-virtual {p5, p6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 14
    iget p5, p2, LlN0;->x:I

    iget-object p6, p2, LlN0;->w:Landroid/graphics/Rect;

    iget p6, p6, Landroid/graphics/Rect;->left:I

    add-int/2addr p5, p6

    iget p2, p2, LlN0;->y:I

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p5

    .line 15
    iget-object p5, p0, LoN0;->z:LlN0;

    .line 16
    iget-object p6, p5, LlN0;->C:Landroid/graphics/drawable/Drawable;

    iget-object v0, p5, LlN0;->w:Landroid/graphics/Rect;

    invoke-virtual {p6, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 17
    iget p6, p5, LlN0;->x:I

    iget-object v0, p5, LlN0;->w:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p6, v0

    iget p5, p5, LlN0;->y:I

    div-int/lit8 p5, p5, 0x2

    add-int/2addr p5, p6

    sub-int/2addr p4, p5

    .line 18
    invoke-static {p3, p2, p4}, LEO0;->a(III)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 19
    :goto_0
    iget-object p3, p0, LoN0;->z:LlN0;

    .line 20
    iget p4, p3, LlN0;->D:I

    if-ne p2, p4, :cond_1

    iget-boolean p4, p3, LlN0;->E:Z

    if-ne p1, p4, :cond_1

    goto :goto_1

    .line 21
    :cond_1
    iput p2, p3, LlN0;->D:I

    .line 22
    iput-boolean p1, p3, LlN0;->E:Z

    .line 23
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p3, p1}, LlN0;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 24
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_1
    return-void
.end method

.method public b()V
    .locals 5

    .line 1
    iget-object v0, p0, LoN0;->y:Lef1;

    invoke-virtual {v0}, Lef1;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, LoN0;->y:Lef1;

    invoke-virtual {v0}, Lef1;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, LoN0;->C:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 3
    iget-object v2, p0, LoN0;->x:Landroid/os/Handler;

    iget-object v3, p0, LoN0;->A:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    :cond_1
    iget-object v0, p0, LoN0;->y:Lef1;

    invoke-virtual {v0}, Lef1;->d()V

    .line 5
    sget-object v0, LoN0;->G:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

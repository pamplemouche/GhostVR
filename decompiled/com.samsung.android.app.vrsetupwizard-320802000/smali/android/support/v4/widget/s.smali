.class public abstract Landroid/support/v4/widget/s;
.super Landroid/support/v4/view/b;


# static fields
.field private static final a:Landroid/graphics/Rect;

.field private static final m:Landroid/support/v4/widget/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/widget/x<",
            "Landroid/support/v4/view/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:Landroid/support/v4/widget/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/widget/y<",
            "Landroid/support/v4/k/x<",
            "Landroid/support/v4/view/a/b;",
            ">;",
            "Landroid/support/v4/view/a/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Landroid/graphics/Rect;

.field private final d:Landroid/graphics/Rect;

.field private final e:Landroid/graphics/Rect;

.field private final f:[I

.field private final g:Landroid/view/accessibility/AccessibilityManager;

.field private final h:Landroid/view/View;

.field private i:Landroid/support/v4/widget/v;

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Landroid/support/v4/widget/s;->a:Landroid/graphics/Rect;

    new-instance v0, Landroid/support/v4/widget/t;

    invoke-direct {v0}, Landroid/support/v4/widget/t;-><init>()V

    sput-object v0, Landroid/support/v4/widget/s;->m:Landroid/support/v4/widget/x;

    new-instance v0, Landroid/support/v4/widget/u;

    invoke-direct {v0}, Landroid/support/v4/widget/u;-><init>()V

    sput-object v0, Landroid/support/v4/widget/s;->n:Landroid/support/v4/widget/y;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/view/b;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/s;->c:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/s;->d:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/s;->e:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v4/widget/s;->f:[I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v4/widget/s;->j:I

    iput v0, p0, Landroid/support/v4/widget/s;->k:I

    iput v0, p0, Landroid/support/v4/widget/s;->l:I

    if-eqz p1, :cond_1

    iput-object p1, p0, Landroid/support/v4/widget/s;->h:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroid/support/v4/widget/s;->g:Landroid/view/accessibility/AccessibilityManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-static {p1}, Landroid/support/v4/view/be;->d(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, v0}, Landroid/support/v4/view/be;->a(Landroid/view/View;I)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "View may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Landroid/support/v4/widget/s;)I
    .locals 0

    iget p0, p0, Landroid/support/v4/widget/s;->j:I

    return p0
.end method

.method private a(ILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/s;->h:Landroid/view/View;

    invoke-static {v0, p1, p2}, Landroid/support/v4/view/be;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method private a(Landroid/graphics/Rect;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/support/v4/widget/s;->h:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Landroid/support/v4/widget/s;->h:Landroid/view/View;

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_4

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-lez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    :cond_3
    return v0

    :cond_4
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    :goto_0
    return v0
.end method

.method static synthetic b(Landroid/support/v4/widget/s;)I
    .locals 0

    iget p0, p0, Landroid/support/v4/widget/s;->k:I

    return p0
.end method

.method private c(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/s;->d(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p2}, Landroid/support/v4/widget/s;->e(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    return-object p1
.end method

.method private c(IILandroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/16 v0, 0x40

    if-eq p2, v0, :cond_1

    const/16 v0, 0x80

    if-eq p2, v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/widget/s;->b(IILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v4/widget/s;->h(I)Z

    move-result p1

    return p1

    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v4/widget/s;->g(I)Z

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/s;->c(I)Z

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/s;->b(I)Z

    move-result p1

    return p1
.end method

.method private d(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 3

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/s;->a(I)Landroid/support/v4/view/a/b;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/view/a/b;->q()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/support/v4/view/a/b;->r()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/support/v4/view/a/b;->n()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    invoke-virtual {v0}, Landroid/support/v4/view/a/b;->m()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    invoke-virtual {v0}, Landroid/support/v4/view/a/b;->l()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    invoke-virtual {v0}, Landroid/support/v4/view/a/b;->f()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/s;->a(ILandroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/view/a/b;->p()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v4/widget/s;->h:Landroid/view/View;

    invoke-static {p2, v0, p1}, Landroid/support/v4/view/a/h;->a(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V

    iget-object p1, p0, Landroid/support/v4/widget/s;->h:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method private d(I)V
    .locals 2

    iget v0, p0, Landroid/support/v4/widget/s;->l:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/support/v4/widget/s;->l:I

    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/s;->a(II)Z

    const/16 p1, 0x100

    invoke-virtual {p0, v0, p1}, Landroid/support/v4/widget/s;->a(II)Z

    return-void
.end method

.method private e()Landroid/support/v4/view/a/b;
    .locals 6

    iget-object v0, p0, Landroid/support/v4/widget/s;->h:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/a/b;->a(Landroid/view/View;)Landroid/support/v4/view/a/b;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/widget/s;->h:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/support/v4/view/be;->a(Landroid/view/View;Landroid/support/v4/view/a/b;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/s;->a(Ljava/util/List;)V

    invoke-virtual {v0}, Landroid/support/v4/view/a/b;->c()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Views cannot have both real and virtual children"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_2

    iget-object v4, p0, Landroid/support/v4/widget/s;->h:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/view/a/b;->b(Landroid/view/View;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private e(I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v4/widget/s;->h:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-object p1
.end method

.method private f(I)Landroid/support/v4/view/a/b;
    .locals 7

    invoke-static {}, Landroid/support/v4/view/a/b;->b()Landroid/support/v4/view/a/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/b;->h(Z)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/b;->c(Z)V

    const-string v2, "android.view.View"

    invoke-virtual {v0, v2}, Landroid/support/v4/view/a/b;->b(Ljava/lang/CharSequence;)V

    sget-object v2, Landroid/support/v4/widget/s;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/a/b;->b(Landroid/graphics/Rect;)V

    sget-object v2, Landroid/support/v4/widget/s;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/a/b;->d(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/support/v4/widget/s;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/a/b;->b(Landroid/view/View;)V

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/s;->a(ILandroid/support/v4/view/a/b;)V

    invoke-virtual {v0}, Landroid/support/v4/view/a/b;->q()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/view/a/b;->r()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/support/v4/widget/s;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/a/b;->a(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/support/v4/widget/s;->d:Landroid/graphics/Rect;

    sget-object v3, Landroid/support/v4/widget/s;->a:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v0}, Landroid/support/v4/view/a/b;->d()I

    move-result v2

    and-int/lit8 v3, v2, 0x40

    if-nez v3, :cond_b

    const/16 v3, 0x80

    and-int/2addr v2, v3

    if-nez v2, :cond_a

    iget-object v2, p0, Landroid/support/v4/widget/s;->h:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/view/a/b;->a(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/support/v4/widget/s;->h:Landroid/view/View;

    invoke-virtual {v0, v2, p1}, Landroid/support/v4/view/a/b;->a(Landroid/view/View;I)V

    iget v2, p0, Landroid/support/v4/widget/s;->j:I

    const/4 v4, 0x0

    if-ne v2, p1, :cond_2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/b;->f(Z)V

    invoke-virtual {v0, v3}, Landroid/support/v4/view/a/b;->a(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v4}, Landroid/support/v4/view/a/b;->f(Z)V

    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Landroid/support/v4/view/a/b;->a(I)V

    :goto_1
    iget v2, p0, Landroid/support/v4/widget/s;->k:I

    if-ne v2, p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_4

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/support/v4/view/a/b;->a(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Landroid/support/v4/view/a/b;->g()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/b;->a(I)V

    :cond_5
    :goto_3
    invoke-virtual {v0, p1}, Landroid/support/v4/view/a/b;->d(Z)V

    iget-object p1, p0, Landroid/support/v4/widget/s;->h:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v4/widget/s;->f:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p1, p0, Landroid/support/v4/widget/s;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/a/b;->c(Landroid/graphics/Rect;)V

    iget-object p1, p0, Landroid/support/v4/widget/s;->c:Landroid/graphics/Rect;

    sget-object v2, Landroid/support/v4/widget/s;->a:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Landroid/support/v4/widget/s;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/a/b;->a(Landroid/graphics/Rect;)V

    iget p1, v0, Landroid/support/v4/view/a/b;->a:I

    const/4 v2, -0x1

    if-eq p1, v2, :cond_7

    invoke-static {}, Landroid/support/v4/view/a/b;->b()Landroid/support/v4/view/a/b;

    move-result-object p1

    iget v3, v0, Landroid/support/v4/view/a/b;->a:I

    :goto_4
    if-eq v3, v2, :cond_6

    iget-object v5, p0, Landroid/support/v4/widget/s;->h:Landroid/view/View;

    invoke-virtual {p1, v5, v2}, Landroid/support/v4/view/a/b;->c(Landroid/view/View;I)V

    sget-object v5, Landroid/support/v4/widget/s;->a:Landroid/graphics/Rect;

    invoke-virtual {p1, v5}, Landroid/support/v4/view/a/b;->b(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v3, p1}, Landroid/support/v4/widget/s;->a(ILandroid/support/v4/view/a/b;)V

    iget-object v3, p0, Landroid/support/v4/widget/s;->d:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/support/v4/view/a/b;->a(Landroid/graphics/Rect;)V

    iget-object v3, p0, Landroid/support/v4/widget/s;->c:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/support/v4/widget/s;->d:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/support/v4/widget/s;->d:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    iget v3, p1, Landroid/support/v4/view/a/b;->a:I

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Landroid/support/v4/view/a/b;->s()V

    :cond_7
    iget-object p1, p0, Landroid/support/v4/widget/s;->c:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v4/widget/s;->f:[I

    aget v2, v2, v4

    iget-object v3, p0, Landroid/support/v4/widget/s;->h:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v4/widget/s;->f:[I

    aget v3, v3, v1

    iget-object v5, p0, Landroid/support/v4/widget/s;->h:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    :cond_8
    iget-object p1, p0, Landroid/support/v4/widget/s;->h:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v4/widget/s;->e:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Landroid/support/v4/widget/s;->e:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v4/widget/s;->f:[I

    aget v2, v2, v4

    iget-object v3, p0, Landroid/support/v4/widget/s;->h:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v4/widget/s;->f:[I

    aget v3, v3, v1

    iget-object v4, p0, Landroid/support/v4/widget/s;->h:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    iget-object p1, p0, Landroid/support/v4/widget/s;->c:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v4/widget/s;->e:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Landroid/support/v4/widget/s;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/a/b;->d(Landroid/graphics/Rect;)V

    iget-object p1, p0, Landroid/support/v4/widget/s;->c:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Landroid/support/v4/widget/s;->a(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/b;->e(Z)V

    :cond_9
    return-object v0

    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private g(I)Z
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/s;->g:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/widget/s;->g:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v4/widget/s;->j:I

    if-eq v0, p1, :cond_2

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    invoke-direct {p0, v0}, Landroid/support/v4/widget/s;->h(I)Z

    :cond_1
    iput p1, p0, Landroid/support/v4/widget/s;->j:I

    iget-object v0, p0, Landroid/support/v4/widget/s;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const v0, 0x8000

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/s;->a(II)Z

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private h(I)Z
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/s;->j:I

    if-ne v0, p1, :cond_0

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v4/widget/s;->j:I

    iget-object v0, p0, Landroid/support/v4/widget/s;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/s;->a(II)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected abstract a(FF)I
.end method

.method a(I)Landroid/support/v4/view/a/b;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Landroid/support/v4/widget/s;->e()Landroid/support/v4/view/a/b;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v4/widget/s;->f(I)Landroid/support/v4/view/a/b;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View;)Landroid/support/v4/view/a/e;
    .locals 0

    iget-object p1, p0, Landroid/support/v4/widget/s;->i:Landroid/support/v4/widget/v;

    if-nez p1, :cond_0

    new-instance p1, Landroid/support/v4/widget/v;

    invoke-direct {p1, p0}, Landroid/support/v4/widget/v;-><init>(Landroid/support/v4/widget/s;)V

    iput-object p1, p0, Landroid/support/v4/widget/s;->i:Landroid/support/v4/widget/v;

    :cond_0
    iget-object p1, p0, Landroid/support/v4/widget/s;->i:Landroid/support/v4/widget/v;

    return-object p1
.end method

.method protected abstract a(ILandroid/support/v4/view/a/b;)V
.end method

.method protected a(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method protected a(IZ)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/support/v4/view/a/b;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/a/b;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/b;->a(Landroid/view/View;Landroid/support/v4/view/a/b;)V

    invoke-virtual {p0, p2}, Landroid/support/v4/widget/s;->a(Landroid/support/v4/view/a/b;)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/b;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0, p2}, Landroid/support/v4/widget/s;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method protected a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method protected abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public final a(II)Z
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/widget/s;->g:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/s;->h:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/s;->c(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    iget-object p2, p0, Landroid/support/v4/widget/s;->h:Landroid/view/View;

    invoke-static {v1, p2, p1}, Landroid/support/v4/view/cj;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method a(IILandroid/os/Bundle;)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/s;->c(IILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p2, p3}, Landroid/support/v4/widget/s;->a(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Landroid/support/v4/widget/s;->g:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/widget/s;->g:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    if-eq v0, v2, :cond_3

    const/16 v2, 0x9

    if-eq v0, v2, :cond_3

    const/16 p1, 0xa

    if-eq v0, p1, :cond_1

    return v1

    :cond_1
    iget p1, p0, Landroid/support/v4/widget/s;->j:I

    if-eq p1, v4, :cond_2

    invoke-direct {p0, v4}, Landroid/support/v4/widget/s;->d(I)V

    return v3

    :cond_2
    return v1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/support/v4/widget/s;->a(FF)I

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/v4/widget/s;->d(I)V

    if-eq p1, v4, :cond_4

    const/4 v1, 0x1

    :cond_4
    :goto_0
    return v1
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/s;->j:I

    return v0
.end method

.method public final b(II)V
    .locals 2

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/s;->g:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/s;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x800

    invoke-direct {p0, p1, v1}, Landroid/support/v4/widget/s;->c(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/support/v4/view/a/a;->a(Landroid/view/accessibility/AccessibilityEvent;I)V

    iget-object p2, p0, Landroid/support/v4/widget/s;->h:Landroid/view/View;

    invoke-static {v0, p2, p1}, Landroid/support/v4/view/cj;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method

.method public final b(I)Z
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/s;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/s;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroid/support/v4/widget/s;->k:I

    if-ne v0, p1, :cond_1

    return v1

    :cond_1
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/s;->c(I)Z

    :cond_2
    iput p1, p0, Landroid/support/v4/widget/s;->k:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/s;->a(IZ)V

    const/16 v1, 0x8

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/s;->a(II)Z

    return v0
.end method

.method protected abstract b(IILandroid/os/Bundle;)Z
.end method

.method public final c()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/s;->b(II)V

    return-void
.end method

.method public final c(I)Z
    .locals 2

    iget v0, p0, Landroid/support/v4/widget/s;->k:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    :cond_0
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v4/widget/s;->k:I

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/s;->a(IZ)V

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/s;->a(II)Z

    const/4 p1, 0x1

    return p1
.end method

.method public d()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/support/v4/widget/s;->b()I

    move-result v0

    return v0
.end method

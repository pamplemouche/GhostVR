.class Landroid/support/v7/widget/jo;
.super Landroid/support/v4/widget/s;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/jn;

.field private final c:Landroid/graphics/Rect;

.field private final d:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/jn;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-direct {p0, p2}, Landroid/support/v4/widget/s;-><init>(Landroid/view/View;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/jo;->c:Landroid/graphics/Rect;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/jo;->d:Ljava/util/Calendar;

    return-void
.end method

.method private a(ILandroid/graphics/Rect;)V
    .locals 6

    iget-object v0, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v0}, Landroid/support/v7/widget/jn;->l(Landroid/support/v7/widget/jn;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v1}, Landroid/support/v7/widget/jn;->m(Landroid/support/v7/widget/jn;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, -0x40800000    # -1.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v2}, Landroid/support/v7/widget/jn;->n(Landroid/support/v7/widget/jn;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v3}, Landroid/support/v7/widget/jn;->o(Landroid/support/v7/widget/jn;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v4}, Landroid/support/v7/widget/jn;->p(Landroid/support/v7/widget/jn;)I

    move-result v4

    div-int/2addr v3, v4

    add-int/lit8 p1, p1, -0x1

    iget-object v4, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v4}, Landroid/support/v7/widget/jn;->e(Landroid/support/v7/widget/jn;)I

    move-result v4

    add-int/2addr p1, v4

    iget-object v4, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v4}, Landroid/support/v7/widget/jn;->p(Landroid/support/v7/widget/jn;)I

    move-result v4

    div-int v4, p1, v4

    iget-object v5, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v5}, Landroid/support/v7/widget/jn;->p(Landroid/support/v7/widget/jn;)I

    move-result v5

    rem-int/2addr p1, v5

    mul-int p1, p1, v3

    add-int/2addr v0, p1

    mul-int v4, v4, v2

    add-int/2addr v1, v4

    add-int/2addr v3, v0

    add-int/2addr v2, v1

    invoke-virtual {p2, v0, v1, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private d(I)Ljava/lang/CharSequence;
    .locals 11

    const-string v0, "SemSimpleMonthView"

    iget-object v1, p0, Landroid/support/v7/widget/jo;->d:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v2}, Landroid/support/v7/widget/jn;->j(Landroid/support/v7/widget/jn;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v3}, Landroid/support/v7/widget/jn;->h(Landroid/support/v7/widget/jn;)I

    move-result v3

    invoke-virtual {v1, v2, v3, p1}, Ljava/util/Calendar;->set(III)V

    iget-object v1, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v1}, Landroid/support/v7/widget/jn;->m(Landroid/support/v7/widget/jn;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/jo;->d:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/16 v4, 0x16

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v2}, Landroid/support/v7/widget/jn;->g(Landroid/support/v7/widget/jn;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v2}, Landroid/support/v7/widget/jn;->q(Landroid/support/v7/widget/jn;)Ldalvik/system/PathClassLoader;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v2}, Landroid/support/v7/widget/jn;->j(Landroid/support/v7/widget/jn;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v3}, Landroid/support/v7/widget/jn;->h(Landroid/support/v7/widget/jn;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v4}, Landroid/support/v7/widget/jn;->i(Landroid/support/v7/widget/jn;)Z

    move-result v4

    const/16 v5, 0xb

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-gtz p1, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v3}, Landroid/support/v7/widget/jn;->h(Landroid/support/v7/widget/jn;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v4}, Landroid/support/v7/widget/jn;->i(Landroid/support/v7/widget/jn;)Z

    move-result v4

    xor-int/2addr v4, v6

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v4}, Landroid/support/v7/widget/jn;->r(Landroid/support/v7/widget/jn;)Z

    move-result v4

    if-gez v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0xb

    :cond_0
    iget-object v5, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v5, v3, v2, v4}, Landroid/support/v7/widget/jn;->a(Landroid/support/v7/widget/jn;IIZ)I

    move-result v5

    add-int/2addr p1, v5

    goto :goto_0

    :cond_1
    iget-object v8, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v8}, Landroid/support/v7/widget/jn;->k(Landroid/support/v7/widget/jn;)I

    move-result v8

    if-le p1, v8, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v3}, Landroid/support/v7/widget/jn;->h(Landroid/support/v7/widget/jn;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v4}, Landroid/support/v7/widget/jn;->s(Landroid/support/v7/widget/jn;)Z

    move-result v4

    xor-int/2addr v4, v6

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v4}, Landroid/support/v7/widget/jn;->s(Landroid/support/v7/widget/jn;)Z

    move-result v4

    if-le v3, v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    :cond_2
    iget-object v5, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v5}, Landroid/support/v7/widget/jn;->k(Landroid/support/v7/widget/jn;)I

    move-result v5

    sub-int/2addr p1, v5

    :cond_3
    :goto_0
    iget-object v5, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v5}, Landroid/support/v7/widget/jn;->t(Landroid/support/v7/widget/jn;)Ljava/lang/Object;

    move-result-object v8

    iget-object v9, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v9}, Landroid/support/v7/widget/jn;->u(Landroid/support/v7/widget/jn;)Ljava/lang/reflect/Method;

    move-result-object v9

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v10, v2

    const/4 p1, 0x3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v10, p1

    invoke-static {v5, v8, v9, v10}, Landroid/support/v7/widget/jn;->a(Landroid/support/v7/widget/jn;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {p1}, Landroid/support/v7/widget/jn;->t(Landroid/support/v7/widget/jn;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v4}, Landroid/support/v7/widget/jn;->v(Landroid/support/v7/widget/jn;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p1, v3, v4, v5}, Landroid/support/v7/widget/jn;->a(Landroid/support/v7/widget/jn;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v3, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v3}, Landroid/support/v7/widget/jn;->t(Landroid/support/v7/widget/jn;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v5}, Landroid/support/v7/widget/jn;->w(Landroid/support/v7/widget/jn;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v8}, Landroid/support/v7/widget/jn;->a(Landroid/support/v7/widget/jn;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v4}, Landroid/support/v7/widget/jn;->t(Landroid/support/v7/widget/jn;)Ljava/lang/Object;

    move-result-object v5

    iget-object v8, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v8}, Landroid/support/v7/widget/jn;->x(Landroid/support/v7/widget/jn;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v8, v9}, Landroid/support/v7/widget/jn;->a(Landroid/support/v7/widget/jn;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, p1, Ljava/lang/Integer;

    if-eqz v5, :cond_5

    instance-of v5, v3, Ljava/lang/Integer;

    if-eqz v5, :cond_5

    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, p1, v3, v4}, Ljava/util/Calendar;->set(III)V

    :try_start_0
    const-string p1, "com.android.calendar.event.widget.datetimepicker.LunarDateUtils"

    iget-object v3, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v3}, Landroid/support/v7/widget/jn;->q(Landroid/support/v7/widget/jn;)Ldalvik/system/PathClassLoader;

    move-result-object v3

    invoke-static {p1, v6, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_4

    const-string p1, "getItemDescription, Calendar LunarDateUtils class is null"

    :goto_1
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/util/Calendar;

    aput-object v4, v3, v7

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v6

    const-string v4, "buildLunarDateString"

    invoke-static {v0, p1, v4, v3}, Landroid/support/v7/widget/jn;->a(Landroid/support/v7/widget/jn;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v7

    invoke-virtual {v0}, Landroid/support/v7/widget/jn;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-static {v0, v3, p1, v2}, Landroid/support/v7/widget/jn;->a(Landroid/support/v7/widget/jn;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_5

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_2

    :catch_0
    const-string p1, "getItemDescription, Calendar LunarDateUtils class not found"

    goto :goto_1

    :cond_5
    :goto_2
    return-object v1
.end method


# virtual methods
.method protected a(FF)I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v0, p1, p2}, Landroid/support/v7/widget/jn;->a(Landroid/support/v7/widget/jn;FF)I

    move-result p1

    iget-object p2, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {p2}, Landroid/support/v7/widget/jn;->a(Landroid/support/v7/widget/jn;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {p2}, Landroid/support/v7/widget/jn;->b(Landroid/support/v7/widget/jn;)I

    move-result p2

    if-lt p1, p2, :cond_1

    :cond_0
    iget-object p2, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {p2}, Landroid/support/v7/widget/jn;->c(Landroid/support/v7/widget/jn;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {p2}, Landroid/support/v7/widget/jn;->d(Landroid/support/v7/widget/jn;)I

    move-result p2

    if-le p1, p2, :cond_2

    :cond_1
    const/high16 p1, -0x80000000

    return p1

    :cond_2
    iget-object p2, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {p2}, Landroid/support/v7/widget/jn;->e(Landroid/support/v7/widget/jn;)I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method protected a(ILandroid/support/v4/view/a/b;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v0}, Landroid/support/v7/widget/jn;->e(Landroid/support/v7/widget/jn;)I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Landroid/support/v7/widget/jo;->c:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/jo;->a(ILandroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Landroid/support/v7/widget/jo;->d(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/b;->c(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v7/widget/jo;->c:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/b;->b(Landroid/graphics/Rect;)V

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/b;->a(I)V

    iget-object v0, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v0}, Landroid/support/v7/widget/jn;->f(Landroid/support/v7/widget/jn;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v0}, Landroid/support/v7/widget/jn;->f(Landroid/support/v7/widget/jn;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x4

    invoke-virtual {p2, p1}, Landroid/support/v4/view/a/b;->a(I)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/support/v4/view/a/b;->g(Z)V

    invoke-virtual {p2, p1}, Landroid/support/v4/view/a/b;->a(Z)V

    invoke-virtual {p2, p1}, Landroid/support/v4/view/a/b;->b(Z)V

    :cond_0
    return-void
.end method

.method protected a(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v0}, Landroid/support/v7/widget/jn;->e(Landroid/support/v7/widget/jn;)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/jo;->d(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v0}, Landroid/support/v7/widget/jn;->e(Landroid/support/v7/widget/jn;)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x2a

    if-gt v1, v2, :cond_3

    sub-int v2, v1, v0

    iget-object v3, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v3}, Landroid/support/v7/widget/jn;->a(Landroid/support/v7/widget/jn;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v3}, Landroid/support/v7/widget/jn;->b(Landroid/support/v7/widget/jn;)I

    move-result v3

    if-lt v2, v3, :cond_2

    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v3}, Landroid/support/v7/widget/jn;->c(Landroid/support/v7/widget/jn;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v3}, Landroid/support/v7/widget/jn;->d(Landroid/support/v7/widget/jn;)I

    move-result v3

    if-le v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected b(IILandroid/os/Bundle;)Z
    .locals 6

    const/4 p3, 0x0

    const/16 v0, 0x10

    if-eq p2, v0, :cond_0

    return p3

    :cond_0
    iget-object p2, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {p2}, Landroid/support/v7/widget/jn;->e(Landroid/support/v7/widget/jn;)I

    move-result p2

    sub-int/2addr p1, p2

    iget-object p2, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {p2}, Landroid/support/v7/widget/jn;->a(Landroid/support/v7/widget/jn;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {p2}, Landroid/support/v7/widget/jn;->b(Landroid/support/v7/widget/jn;)I

    move-result p2

    if-lt p1, p2, :cond_2

    :cond_1
    iget-object p2, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {p2}, Landroid/support/v7/widget/jn;->c(Landroid/support/v7/widget/jn;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {p2}, Landroid/support/v7/widget/jn;->d(Landroid/support/v7/widget/jn;)I

    move-result p2

    if-le p1, p2, :cond_3

    :cond_2
    return v0

    :cond_3
    const/16 p2, 0xb

    const/4 v1, 0x2

    const/4 v2, 0x5

    if-gtz p1, :cond_6

    iget-object p3, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {p3}, Landroid/support/v7/widget/jn;->g(Landroid/support/v7/widget/jn;)Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p3, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {p3}, Landroid/support/v7/widget/jn;->h(Landroid/support/v7/widget/jn;)I

    move-result p3

    iget-object v1, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v1}, Landroid/support/v7/widget/jn;->i(Landroid/support/v7/widget/jn;)Z

    move-result v1

    xor-int/2addr v1, v0

    sub-int/2addr p3, v1

    if-gez p3, :cond_4

    iget-object v1, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v1}, Landroid/support/v7/widget/jn;->j(Landroid/support/v7/widget/jn;)I

    move-result v2

    sub-int/2addr v2, v0

    iget-object v3, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v3}, Landroid/support/v7/widget/jn;->i(Landroid/support/v7/widget/jn;)Z

    move-result v3

    invoke-static {v1, p2, v2, v3}, Landroid/support/v7/widget/jn;->a(Landroid/support/v7/widget/jn;IIZ)I

    move-result p2

    iget-object v1, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v1}, Landroid/support/v7/widget/jn;->j(Landroid/support/v7/widget/jn;)I

    move-result v2

    sub-int/2addr v2, v0

    goto :goto_0

    :cond_4
    iget-object p2, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {p2}, Landroid/support/v7/widget/jn;->j(Landroid/support/v7/widget/jn;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v2}, Landroid/support/v7/widget/jn;->i(Landroid/support/v7/widget/jn;)Z

    move-result v2

    invoke-static {p2, p3, v1, v2}, Landroid/support/v7/widget/jn;->a(Landroid/support/v7/widget/jn;IIZ)I

    move-result p2

    iget-object v1, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v1}, Landroid/support/v7/widget/jn;->j(Landroid/support/v7/widget/jn;)I

    move-result v2

    :goto_0
    add-int/2addr p2, p1

    invoke-static {v1, v2, p3, p2, v0}, Landroid/support/v7/widget/jn;->a(Landroid/support/v7/widget/jn;IIIZ)V

    goto/16 :goto_1

    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->clear()V

    iget-object p3, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {p3}, Landroid/support/v7/widget/jn;->j(Landroid/support/v7/widget/jn;)I

    move-result p3

    iget-object v3, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v3}, Landroid/support/v7/widget/jn;->h(Landroid/support/v7/widget/jn;)I

    move-result v3

    invoke-virtual {p2, p3, v3, v0}, Ljava/util/Calendar;->set(III)V

    sub-int/2addr p1, v0

    invoke-virtual {p2, v2, p1}, Ljava/util/Calendar;->add(II)V

    iget-object p1, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-static {p1, p3, v1, p2, v0}, Landroid/support/v7/widget/jn;->a(Landroid/support/v7/widget/jn;IIIZ)V

    goto/16 :goto_1

    :cond_6
    iget-object v3, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v3}, Landroid/support/v7/widget/jn;->k(Landroid/support/v7/widget/jn;)I

    move-result v3

    if-le p1, v3, :cond_9

    iget-object v3, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v3}, Landroid/support/v7/widget/jn;->g(Landroid/support/v7/widget/jn;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v1, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v1}, Landroid/support/v7/widget/jn;->h(Landroid/support/v7/widget/jn;)I

    move-result v1

    add-int/2addr v1, v0

    if-le v1, p2, :cond_7

    iget-object p2, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {p2}, Landroid/support/v7/widget/jn;->j(Landroid/support/v7/widget/jn;)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v2}, Landroid/support/v7/widget/jn;->k(Landroid/support/v7/widget/jn;)I

    move-result v2

    sub-int/2addr p1, v2

    invoke-static {p2, v1, p3, p1, p3}, Landroid/support/v7/widget/jn;->a(Landroid/support/v7/widget/jn;IIIZ)V

    goto :goto_1

    :cond_7
    iget-object p2, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {p2}, Landroid/support/v7/widget/jn;->j(Landroid/support/v7/widget/jn;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v3}, Landroid/support/v7/widget/jn;->k(Landroid/support/v7/widget/jn;)I

    move-result v3

    sub-int/2addr p1, v3

    invoke-static {p2, v2, v1, p1, p3}, Landroid/support/v7/widget/jn;->a(Landroid/support/v7/widget/jn;IIIZ)V

    goto :goto_1

    :cond_8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->clear()V

    iget-object v3, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v3}, Landroid/support/v7/widget/jn;->j(Landroid/support/v7/widget/jn;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v4}, Landroid/support/v7/widget/jn;->h(Landroid/support/v7/widget/jn;)I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v5}, Landroid/support/v7/widget/jn;->k(Landroid/support/v7/widget/jn;)I

    move-result v5

    invoke-virtual {p2, v3, v4, v5}, Ljava/util/Calendar;->set(III)V

    iget-object v3, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v3}, Landroid/support/v7/widget/jn;->k(Landroid/support/v7/widget/jn;)I

    move-result v3

    sub-int/2addr p1, v3

    invoke-virtual {p2, v2, p1}, Ljava/util/Calendar;->add(II)V

    iget-object p1, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-static {p1, v3, v1, p2, p3}, Landroid/support/v7/widget/jn;->a(Landroid/support/v7/widget/jn;IIIZ)V

    goto :goto_1

    :cond_9
    iget-object p2, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {p2}, Landroid/support/v7/widget/jn;->j(Landroid/support/v7/widget/jn;)I

    move-result p3

    iget-object v1, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-static {v1}, Landroid/support/v7/widget/jn;->h(Landroid/support/v7/widget/jn;)I

    move-result v1

    invoke-static {p2, p3, v1, p1}, Landroid/support/v7/widget/jn;->a(Landroid/support/v7/widget/jn;III)V

    :goto_1
    return v0
.end method

.method public e()V
    .locals 4

    invoke-virtual {p0}, Landroid/support/v7/widget/jo;->d()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/jo;->a:Landroid/support/v7/widget/jn;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/jo;->a(Landroid/view/View;)Landroid/support/v4/view/a/e;

    move-result-object v1

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/view/a/e;->a(IILandroid/os/Bundle;)Z

    :cond_0
    return-void
.end method

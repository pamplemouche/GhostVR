.class public final Landroid/support/v4/view/cj;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/view/cm;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/cl;

    invoke-direct {v0}, Landroid/support/v4/view/cl;-><init>()V

    :goto_0
    sput-object v0, Landroid/support/v4/view/cj;->a:Landroid/support/v4/view/cm;

    goto :goto_1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/view/ck;

    invoke-direct {v0}, Landroid/support/v4/view/ck;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/view/cm;

    invoke-direct {v0}, Landroid/support/v4/view/cm;-><init>()V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;I)V
    .locals 1

    instance-of v0, p0, Landroid/support/v4/view/x;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/view/x;

    invoke-interface {p0, p1, p2}, Landroid/support/v4/view/x;->c(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    sget-object p2, Landroid/support/v4/view/cj;->a:Landroid/support/v4/view/cm;

    invoke-virtual {p2, p0, p1}, Landroid/support/v4/view/cm;->a(Landroid/view/ViewParent;Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;IIIII)V
    .locals 9

    instance-of v0, p0, Landroid/support/v4/view/x;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/support/v4/view/x;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/support/v4/view/x;->a(Landroid/view/View;IIIII)V

    goto :goto_0

    :cond_0
    if-nez p6, :cond_1

    sget-object v2, Landroid/support/v4/view/cj;->a:Landroid/support/v4/view/cm;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v2 .. v8}, Landroid/support/v4/view/cm;->a(Landroid/view/ViewParent;Landroid/view/View;IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;II[II)V
    .locals 8

    instance-of v0, p0, Landroid/support/v4/view/x;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/support/v4/view/x;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/support/v4/view/x;->a(Landroid/view/View;II[II)V

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    sget-object v2, Landroid/support/v4/view/cj;->a:Landroid/support/v4/view/cm;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Landroid/support/v4/view/cm;->a(Landroid/view/ViewParent;Landroid/view/View;II[I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/cj;->a:Landroid/support/v4/view/cm;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/view/cm;->a(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .locals 6

    sget-object v0, Landroid/support/v4/view/cj;->a:Landroid/support/v4/view/cm;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/cm;->a(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z
    .locals 1

    instance-of v0, p0, Landroid/support/v4/view/x;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/view/x;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/support/v4/view/x;->a(Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    return p0

    :cond_0
    if-nez p4, :cond_1

    sget-object p4, Landroid/support/v4/view/cj;->a:Landroid/support/v4/view/cm;

    invoke-virtual {p4, p0, p1, p2, p3}, Landroid/support/v4/view/cm;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p0, p1, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V
    .locals 1

    instance-of v0, p0, Landroid/support/v4/view/x;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/view/x;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/support/v4/view/x;->b(Landroid/view/View;Landroid/view/View;II)V

    goto :goto_0

    :cond_0
    if-nez p4, :cond_1

    sget-object p4, Landroid/support/v4/view/cj;->a:Landroid/support/v4/view/cm;

    invoke-virtual {p4, p0, p1, p2, p3}, Landroid/support/v4/view/cm;->b(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method

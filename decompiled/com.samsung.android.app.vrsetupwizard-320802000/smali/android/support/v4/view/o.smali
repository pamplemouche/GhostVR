.class public final Landroid/support/v4/view/o;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/view/r;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/p;

    invoke-direct {v0}, Landroid/support/v4/view/p;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v4/view/q;

    invoke-direct {v0}, Landroid/support/v4/view/q;-><init>()V

    :goto_0
    sput-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/r;

    return-void
.end method

.method public static a(Landroid/view/MenuItem;Landroid/support/v4/view/g;)Landroid/view/MenuItem;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/f/a/b;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/f/a/b;

    invoke-interface {p0, p1}, Landroid/support/v4/f/a/b;->a(Landroid/support/v4/view/g;)Landroid/support/v4/f/a/b;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "MenuItemCompat"

    const-string v0, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static a(Landroid/view/MenuItem;CI)V
    .locals 1

    instance-of v0, p0, Landroid/support/v4/f/a/b;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/f/a/b;

    invoke-interface {p0, p1, p2}, Landroid/support/v4/f/a/b;->setNumericShortcut(CI)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/r;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/r;->b(Landroid/view/MenuItem;CI)V

    :goto_0
    return-void
.end method

.method public static a(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V
    .locals 1

    instance-of v0, p0, Landroid/support/v4/f/a/b;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/f/a/b;

    invoke-interface {p0, p1}, Landroid/support/v4/f/a/b;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/r;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/r;->a(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method

.method public static a(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    instance-of v0, p0, Landroid/support/v4/f/a/b;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/f/a/b;

    invoke-interface {p0, p1}, Landroid/support/v4/f/a/b;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/r;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/r;->a(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V

    :goto_0
    return-void
.end method

.method public static a(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .locals 1

    instance-of v0, p0, Landroid/support/v4/f/a/b;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/f/a/b;

    invoke-interface {p0, p1}, Landroid/support/v4/f/a/b;->a(Ljava/lang/CharSequence;)Landroid/support/v4/f/a/b;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/r;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/r;->a(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public static b(Landroid/view/MenuItem;CI)V
    .locals 1

    instance-of v0, p0, Landroid/support/v4/f/a/b;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/f/a/b;

    invoke-interface {p0, p1, p2}, Landroid/support/v4/f/a/b;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/r;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/r;->a(Landroid/view/MenuItem;CI)V

    :goto_0
    return-void
.end method

.method public static b(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .locals 1

    instance-of v0, p0, Landroid/support/v4/f/a/b;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/f/a/b;

    invoke-interface {p0, p1}, Landroid/support/v4/f/a/b;->b(Ljava/lang/CharSequence;)Landroid/support/v4/f/a/b;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/r;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/r;->b(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

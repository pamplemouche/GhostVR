.class Landroid/support/v4/widget/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/widget/ab;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;
    .locals 1

    instance-of v0, p1, Landroid/support/v4/widget/by;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/widget/by;

    invoke-interface {p1}, Landroid/support/v4/widget/by;->getSupportImageTintList()Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public a(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V
    .locals 1

    instance-of v0, p1, Landroid/support/v4/widget/by;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/widget/by;

    invoke-interface {p1, p2}, Landroid/support/v4/widget/by;->setSupportImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    instance-of v0, p1, Landroid/support/v4/widget/by;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/widget/by;

    invoke-interface {p1, p2}, Landroid/support/v4/widget/by;->setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    instance-of v0, p1, Landroid/support/v4/widget/by;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/widget/by;

    invoke-interface {p1}, Landroid/support/v4/widget/by;->getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

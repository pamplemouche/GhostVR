.class public Landroid/support/v7/widget/lg;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/support/v7/widget/lk;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    new-instance v0, Landroid/support/v7/widget/li;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/li;-><init>(Landroid/support/v7/widget/lh;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/lj;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/lj;-><init>(Landroid/support/v7/widget/lh;)V

    :goto_0
    sput-object v0, Landroid/support/v7/widget/lg;->a:Landroid/support/v7/widget/lk;

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1

    sget-object v0, Landroid/support/v7/widget/lg;->a:Landroid/support/v7/widget/lk;

    invoke-interface {v0, p0, p1}, Landroid/support/v7/widget/lk;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static a(Z)V
    .locals 1

    sget-object v0, Landroid/support/v7/widget/lg;->a:Landroid/support/v7/widget/lk;

    invoke-interface {v0, p0}, Landroid/support/v7/widget/lk;->b(Z)V

    return-void
.end method

.method public static b(Z)V
    .locals 1

    sget-object v0, Landroid/support/v7/widget/lg;->a:Landroid/support/v7/widget/lk;

    invoke-interface {v0, p0}, Landroid/support/v7/widget/lk;->c(Z)V

    return-void
.end method

.method public static c(Z)V
    .locals 1

    sget-object v0, Landroid/support/v7/widget/lg;->a:Landroid/support/v7/widget/lk;

    invoke-interface {v0, p0}, Landroid/support/v7/widget/lk;->a(Z)V

    return-void
.end method

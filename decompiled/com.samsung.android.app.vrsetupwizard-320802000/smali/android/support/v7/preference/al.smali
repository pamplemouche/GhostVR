.class Landroid/support/v7/preference/al;
.super Landroid/support/v4/view/b;


# instance fields
.field final synthetic a:Landroid/support/v7/preference/ak;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/ak;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/preference/al;->a:Landroid/support/v7/preference/ak;

    invoke-direct {p0}, Landroid/support/v4/view/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/view/a/b;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/al;->a:Landroid/support/v7/preference/ak;

    iget-object v0, v0, Landroid/support/v7/preference/ak;->c:Landroid/support/v4/view/b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/b;->a(Landroid/view/View;Landroid/support/v4/view/a/b;)V

    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/al;->a:Landroid/support/v7/preference/ak;

    iget-object v0, v0, Landroid/support/v7/preference/ak;->c:Landroid/support/v4/view/b;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/b;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

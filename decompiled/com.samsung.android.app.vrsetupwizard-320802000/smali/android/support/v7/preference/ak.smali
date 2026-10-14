.class public Landroid/support/v7/preference/ak;
.super Landroid/support/v7/widget/fu;


# instance fields
.field final a:Landroid/support/v7/widget/RecyclerView;

.field final c:Landroid/support/v4/view/b;

.field final d:Landroid/support/v4/view/b;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/fu;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-super {p0}, Landroid/support/v7/widget/fu;->b()Landroid/support/v4/view/b;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/ak;->c:Landroid/support/v4/view/b;

    new-instance v0, Landroid/support/v7/preference/al;

    invoke-direct {v0, p0}, Landroid/support/v7/preference/al;-><init>(Landroid/support/v7/preference/ak;)V

    iput-object v0, p0, Landroid/support/v7/preference/ak;->d:Landroid/support/v4/view/b;

    iput-object p1, p0, Landroid/support/v7/preference/ak;->a:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public b()Landroid/support/v4/view/b;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/ak;->d:Landroid/support/v4/view/b;

    return-object v0
.end method

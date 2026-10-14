.class Landroid/support/v7/preference/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/preference/s;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/s;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/preference/u;->a:Landroid/support/v7/preference/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/preference/u;->a:Landroid/support/v7/preference/s;

    invoke-static {v0}, Landroid/support/v7/preference/s;->b(Landroid/support/v7/preference/s;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/preference/u;->a:Landroid/support/v7/preference/s;

    invoke-static {v1}, Landroid/support/v7/preference/s;->b(Landroid/support/v7/preference/s;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->focusableViewAvailable(Landroid/view/View;)V

    return-void
.end method

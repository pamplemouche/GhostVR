.class Landroid/support/v4/app/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v4/app/ab;


# direct methods
.method constructor <init>(Landroid/support/v4/app/ab;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/ab;

    iget-object v0, v0, Landroid/support/v4/app/ab;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/ab;

    iget-object v1, v1, Landroid/support/v4/app/ab;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/ab;

    iget-object v0, v0, Landroid/support/v4/app/ab;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->W()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/ab;

    iget-object v0, v0, Landroid/support/v4/app/ab;->c:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->a(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/ab;

    iget-object v1, v0, Landroid/support/v4/app/ab;->d:Landroid/support/v4/app/z;

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/ab;

    iget-object v2, v0, Landroid/support/v4/app/ab;->c:Landroid/support/v4/app/Fragment;

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/ab;

    iget-object v0, v0, Landroid/support/v4/app/ab;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->Y()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/app/z;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    :cond_0
    return-void
.end method

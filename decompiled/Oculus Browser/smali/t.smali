.class public Lt;
.super Landroid/app/Fragment;
.source "PG"


# instance fields
.field public w:Ls;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag"

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Lt;

    invoke-direct {v2}, Lt;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 4
    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lk;)V
    .locals 2

    .line 5
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 6
    instance-of v1, v0, Ln;

    if-eqz v1, :cond_0

    .line 7
    check-cast v0, Ln;

    invoke-interface {v0}, Ln;->B()Lm;

    move-result-object v0

    .line 8
    instance-of v1, v0, Lo;

    if-eqz v1, :cond_0

    .line 9
    check-cast v0, Lo;

    invoke-virtual {v0, p1}, Lo;->a(Lk;)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Lk;->w:Lk;

    invoke-virtual {p0, p1}, Lt;->a(Lk;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 2
    sget-object v0, Lk;->B:Lk;

    invoke-virtual {p0, v0}, Lt;->a(Lk;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lt;->w:Ls;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 2
    sget-object v0, Lk;->z:Lk;

    invoke-virtual {p0, v0}, Lt;->a(Lk;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 2
    sget-object v0, Lk;->y:Lk;

    invoke-virtual {p0, v0}, Lt;->a(Lk;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 2
    sget-object v0, Lk;->x:Lk;

    invoke-virtual {p0, v0}, Lt;->a(Lk;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 2
    sget-object v0, Lk;->A:Lk;

    invoke-virtual {p0, v0}, Lt;->a(Lk;)V

    return-void
.end method

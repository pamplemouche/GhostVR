.class public LkE0;
.super Ls2;
.source "PG"


# instance fields
.field public final D0:LFU0;

.field public final E0:LJE0;

.field public F0:LKE0;

.field public G0:Ljava/util/List;

.field public H0:LiE0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LkE0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls2;-><init>()V

    .line 2
    new-instance v0, LdE0;

    invoke-direct {v0, p0}, LdE0;-><init>(LkE0;)V

    iput-object v0, p0, LkE0;->D0:LFU0;

    .line 3
    new-instance v0, LeE0;

    invoke-direct {v0, p0}, LeE0;-><init>(LkE0;)V

    iput-object v0, p0, LkE0;->E0:LJE0;

    return-void
.end method


# virtual methods
.method public M()V
    .locals 2

    .line 1
    invoke-super {p0}, Ls2;->M()V

    .line 2
    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacade;->get()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object v0

    iget-object v1, p0, LkE0;->D0:LFU0;

    invoke-virtual {v0, v1}, Lorg/chromium/components/signin/AccountManagerFacade;->a(LFU0;)V

    .line 3
    iget-object v0, p0, LkE0;->F0:LKE0;

    iget-object v1, p0, LkE0;->E0:LJE0;

    invoke-virtual {v0, v1}, LKE0;->a(LJE0;)V

    .line 4
    invoke-virtual {p0}, LkE0;->O()V

    return-void
.end method

.method public N()V
    .locals 2

    .line 1
    invoke-super {p0}, Ls2;->N()V

    .line 2
    iget-object v0, p0, LkE0;->F0:LKE0;

    iget-object v1, p0, LkE0;->E0:LJE0;

    invoke-virtual {v0, v1}, LKE0;->b(LJE0;)V

    .line 3
    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacade;->get()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object v0

    iget-object v1, p0, LkE0;->D0:LFU0;

    invoke-virtual {v0, v1}, Lorg/chromium/components/signin/AccountManagerFacade;->b(LFU0;)V

    return-void
.end method

.method public final O()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacade;->get()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {v0}, Lorg/chromium/components/signin/AccountManagerFacade;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 4
    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    iput-object v1, p0, LkE0;->G0:Ljava/util/List;
    :try_end_0
    .catch LoU0; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    iget-object v0, p0, LkE0;->F0:LKE0;

    invoke-virtual {v0, v1}, LKE0;->a(Ljava/util/List;)V

    .line 7
    invoke-virtual {p0}, LkE0;->P()V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 8
    :try_start_1
    throw v0
    :try_end_1
    .catch LoU0; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "AccountPickerDialog"

    const-string v3, "Can\'t get account list"

    .line 9
    invoke-static {v0, v3, v2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0, v1}, Ls2;->g(Z)V

    return-void
.end method

.method public final P()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, LkE0;->G0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    iget-object v3, p0, LkE0;->F0:LKE0;

    invoke-virtual {v3, v2}, LKE0;->a(Ljava/lang/String;)LGE0;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, LkE0;->H0:LiE0;

    .line 5
    iput-object v0, v1, LiE0;->z:Ljava/util/List;

    .line 6
    iget-object v0, v1, LBg;->w:LCg;

    invoke-virtual {v0}, LCg;->b()V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Ls2;->b(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, LKE0;

    .line 3
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070337

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    .line 4
    invoke-direct {p1, v0, v1, v2}, LKE0;-><init>(Landroid/content/Context;ILIE0;)V

    .line 5
    iput-object p1, p0, LkE0;->F0:LKE0;

    .line 6
    iget-object p1, p0, Lz2;->C:Landroid/os/Bundle;

    const-string v0, "AccountPickerDialogFragment.SelectedAccountName"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance v0, LiE0;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, p1, v1}, LiE0;-><init>(LkE0;Ljava/lang/String;Ljava/util/List;)V

    iput-object v0, p0, LkE0;->H0:LiE0;

    return-void
.end method

.method public h(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 1
    new-instance p1, LO8;

    .line 2
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    const v1, 0x7f140245

    invoke-direct {p1, v0, v1}, LO8;-><init>(Landroid/content/Context;I)V

    .line 3
    iget-object v0, p1, LO8;->a:LK8;

    iget-object v0, v0, LK8;->a:Landroid/content/Context;

    .line 4
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0023

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 6
    iget-object v1, p0, LkE0;->H0:LiE0;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(LBg;)V

    .line 7
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(LQg;)V

    const v1, 0x7f130590

    .line 8
    invoke-virtual {p1, v1}, LO8;->b(I)LO8;

    .line 9
    iget-object v1, p1, LO8;->a:LK8;

    iput-object v0, v1, LK8;->u:Landroid/view/View;

    const/4 v0, 0x0

    .line 10
    iput v0, v1, LK8;->t:I

    .line 11
    iput-boolean v0, v1, LK8;->v:Z

    .line 12
    invoke-virtual {p1}, LO8;->a()LP8;

    move-result-object p1

    return-object p1
.end method

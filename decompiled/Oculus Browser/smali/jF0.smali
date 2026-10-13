.class public abstract LjF0;
.super Lz2;
.source "PG"

# interfaces
.implements LjE0;


# instance fields
.field public A0:Ljava/lang/String;

.field public B0:Z

.field public C0:LFU0;

.field public D0:LJE0;

.field public E0:LKE0;

.field public F0:Ljava/util/List;

.field public G0:Z

.field public H0:Z

.field public I0:Z

.field public J0:Z

.field public K0:Z

.field public L0:Lla0;

.field public M0:LP8;

.field public N0:J

.field public O0:LuE0;

.field public u0:I

.field public v0:I

.field public w0:Lorg/chromium/chrome/browser/signin/SigninView;

.field public x0:LFE0;

.field public y0:Z

.field public z0:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lz2;-><init>()V

    .line 2
    new-instance v0, LRE0;

    invoke-direct {v0, p0}, LRE0;-><init>(LjF0;)V

    iput-object v0, p0, LjF0;->C0:LFU0;

    .line 3
    new-instance v0, LVE0;

    invoke-direct {v0, p0}, LVE0;-><init>(LjF0;)V

    iput-object v0, p0, LjF0;->D0:LJE0;

    return-void
.end method


# virtual methods
.method public H()V
    .locals 2

    .line 1
    invoke-super {p0}, Lz2;->H()V

    .line 2
    invoke-virtual {p0}, LjF0;->P()V

    .line 3
    invoke-virtual {p0}, LjF0;->Q()V

    .line 4
    iget-object v0, p0, LjF0;->O0:LuE0;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, v1}, LuE0;->b(Z)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, LjF0;->O0:LuE0;

    .line 7
    :cond_0
    iget-boolean v0, p0, LjF0;->K0:Z

    if-eqz v0, :cond_1

    const-string v0, "Signin_Undo_Signin"

    invoke-static {v0}, LhV;->a(Ljava/lang/String;)V

    .line 8
    :cond_1
    iput-boolean v1, p0, LjF0;->H0:Z

    return-void
.end method

.method public K()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lz2;->c0:Z

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LjF0;->G0:Z

    .line 3
    iget-object v0, p0, LjF0;->E0:LKE0;

    iget-object v1, p0, LjF0;->D0:LJE0;

    invoke-virtual {v0, v1}, LKE0;->b(LJE0;)V

    .line 4
    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacade;->get()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object v0

    iget-object v1, p0, LjF0;->C0:LFU0;

    invoke-virtual {v0, v1}, Lorg/chromium/components/signin/AccountManagerFacade;->b(LFU0;)V

    .line 5
    iget-object v0, p0, LjF0;->w0:Lorg/chromium/chrome/browser/signin/SigninView;

    .line 6
    iget-object v0, v0, Lorg/chromium/chrome/browser/signin/SigninView;->L:Lnd1;

    invoke-interface {v0}, Lnd1;->stop()V

    return-void
.end method

.method public L()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lz2;->c0:Z

    .line 2
    iput-boolean v0, p0, LjF0;->G0:Z

    .line 3
    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacade;->get()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object v0

    iget-object v1, p0, LjF0;->C0:LFU0;

    invoke-virtual {v0, v1}, Lorg/chromium/components/signin/AccountManagerFacade;->a(LFU0;)V

    .line 4
    iget-object v0, p0, LjF0;->E0:LKE0;

    iget-object v1, p0, LjF0;->D0:LJE0;

    invoke-virtual {v0, v1}, LKE0;->a(LJE0;)V

    .line 5
    invoke-virtual {p0}, LjF0;->T()V

    .line 6
    iget-object v0, p0, LjF0;->w0:Lorg/chromium/chrome/browser/signin/SigninView;

    .line 7
    iget-object v0, v0, Lorg/chromium/chrome/browser/signin/SigninView;->L:Lnd1;

    invoke-interface {v0}, Lnd1;->start()V

    return-void
.end method

.method public final O()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lz2;->E()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lz2;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, LjF0;->y0:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, LjF0;->I0:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, LjF0;->J0:Z

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public final P()V
    .locals 3

    .line 1
    iget-object v0, p0, LjF0;->L0:Lla0;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lla0;->d:Landroid/app/Dialog;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 4
    iput-object v2, v0, Lla0;->d:Landroid/app/Dialog;

    .line 5
    :cond_1
    iput-object v2, p0, LjF0;->L0:Lla0;

    return-void
.end method

.method public final Q()V
    .locals 4

    .line 1
    iget-object v0, p0, LjF0;->M0:LP8;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, LjF0;->M0:LP8;

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, LjF0;->N0:J

    sub-long/2addr v0, v2

    const-string v2, "Signin.AndroidGmsUpdatingDialogShownTime"

    .line 5
    invoke-static {v2, v0, v1}, LfV;->c(Ljava/lang/String;J)V

    return-void
.end method

.method public final R()LkE0;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lz2;->o()LH2;

    move-result-object v0

    const-string v1, "SigninFragmentBase.AccountPickerDialogFragment"

    invoke-virtual {v0, v1}, LH2;->a(Ljava/lang/String;)Lz2;

    move-result-object v0

    check-cast v0, LkE0;

    return-object v0
.end method

.method public final S()V
    .locals 5

    .line 1
    invoke-virtual {p0}, LjF0;->R()LkE0;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, LjF0;->A0:Ljava/lang/String;

    .line 3
    new-instance v1, LkE0;

    invoke-direct {v1}, LkE0;-><init>()V

    .line 4
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "AccountPickerDialogFragment.SelectedAccountName"

    .line 5
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, v2}, Lz2;->g(Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {p0}, Lz2;->o()LH2;

    move-result-object v0

    check-cast v0, LY2;

    if-eqz v0, :cond_1

    .line 8
    new-instance v2, Lq2;

    invoke-direct {v2, v0}, Lq2;-><init>(LY2;)V

    const/4 v0, 0x0

    const/4 v3, 0x1

    const-string v4, "SigninFragmentBase.AccountPickerDialogFragment"

    .line 9
    invoke-virtual {v2, v0, v1, v4, v3}, Lq2;->a(ILz2;Ljava/lang/String;I)V

    .line 10
    invoke-virtual {v2}, Ld3;->b()I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 11
    throw v0
.end method

.method public final T()V
    .locals 3

    .line 1
    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacade;->get()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object v0

    new-instance v1, LUE0;

    invoke-direct {v1, p0}, LUE0;-><init>(LjF0;)V

    if-eqz v0, :cond_0

    .line 2
    new-instance v2, LrU0;

    invoke-direct {v2, v0, v1}, LrU0;-><init>(Lorg/chromium/components/signin/AccountManagerFacade;Lorg/chromium/base/Callback;)V

    invoke-virtual {v0, v2}, Lorg/chromium/components/signin/AccountManagerFacade;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public final U()V
    .locals 4

    .line 1
    iget-object v0, p0, LjF0;->A0:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, LjF0;->E0:LKE0;

    .line 3
    invoke-virtual {v1, v0}, LKE0;->a(Ljava/lang/String;)LGE0;

    move-result-object v0

    .line 4
    iget-object v1, p0, LjF0;->w0:Lorg/chromium/chrome/browser/signin/SigninView;

    .line 5
    iget-object v1, v1, Lorg/chromium/chrome/browser/signin/SigninView;->A:Landroid/widget/ImageView;

    .line 6
    iget-object v2, v0, LGE0;->b:Landroid/graphics/drawable/Drawable;

    .line 7
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object v1, v0, LGE0;->c:Ljava/lang/String;

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    iget-object v2, p0, LjF0;->x0:LFE0;

    iget-object v3, p0, LjF0;->w0:Lorg/chromium/chrome/browser/signin/SigninView;

    .line 11
    iget-object v3, v3, Lorg/chromium/chrome/browser/signin/SigninView;->B:Landroid/widget/TextView;

    .line 12
    invoke-virtual {v2, v3, v1}, LFE0;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 13
    iget-object v1, p0, LjF0;->x0:LFE0;

    iget-object v2, p0, LjF0;->w0:Lorg/chromium/chrome/browser/signin/SigninView;

    .line 14
    iget-object v2, v2, Lorg/chromium/chrome/browser/signin/SigninView;->C:Landroid/widget/TextView;

    .line 15
    iget-object v0, v0, LGE0;->a:Ljava/lang/String;

    .line 16
    invoke-virtual {v1, v2, v0}, LFE0;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p0, LjF0;->w0:Lorg/chromium/chrome/browser/signin/SigninView;

    .line 18
    iget-object v0, v0, Lorg/chromium/chrome/browser/signin/SigninView;->C:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 20
    :cond_1
    iget-object v1, p0, LjF0;->x0:LFE0;

    iget-object v2, p0, LjF0;->w0:Lorg/chromium/chrome/browser/signin/SigninView;

    .line 21
    iget-object v2, v2, Lorg/chromium/chrome/browser/signin/SigninView;->B:Landroid/widget/TextView;

    .line 22
    iget-object v0, v0, LGE0;->a:Ljava/lang/String;

    .line 23
    invoke-virtual {v1, v2, v0}, LFE0;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 24
    iget-object v0, p0, LjF0;->w0:Lorg/chromium/chrome/browser/signin/SigninView;

    .line 25
    iget-object v0, v0, Lorg/chromium/chrome/browser/signin/SigninView;->C:Landroid/widget/TextView;

    const/16 v1, 0x8

    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const p3, 0x7f0e019e

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/signin/SigninView;

    iput-object p1, p0, LjF0;->w0:Lorg/chromium/chrome/browser/signin/SigninView;

    .line 2
    iget-object p1, p1, Lorg/chromium/chrome/browser/signin/SigninView;->z:Landroid/view/View;

    .line 3
    new-instance p2, LWE0;

    invoke-direct {p2, p0}, LWE0;-><init>(LjF0;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object p1, p0, LjF0;->w0:Lorg/chromium/chrome/browser/signin/SigninView;

    .line 5
    iget-object p1, p1, Lorg/chromium/chrome/browser/signin/SigninView;->I:Landroid/widget/Button;

    .line 6
    new-instance p2, LXE0;

    invoke-direct {p2, p0}, LXE0;-><init>(LjF0;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, p0, LjF0;->w0:Lorg/chromium/chrome/browser/signin/SigninView;

    .line 8
    iget-object p1, p1, Lorg/chromium/chrome/browser/signin/SigninView;->H:Lorg/chromium/ui/widget/ButtonCompat;

    const/16 p2, 0x8

    .line 9
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 10
    iget-object p1, p0, LjF0;->w0:Lorg/chromium/chrome/browser/signin/SigninView;

    .line 11
    iget-object p1, p1, Lorg/chromium/chrome/browser/signin/SigninView;->J:Landroid/widget/Button;

    .line 12
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 13
    iget-object p1, p0, LjF0;->w0:Lorg/chromium/chrome/browser/signin/SigninView;

    .line 14
    iget-object p1, p1, Lorg/chromium/chrome/browser/signin/SigninView;->J:Landroid/widget/Button;

    .line 15
    new-instance p3, LYE0;

    invoke-direct {p3, p0}, LYE0;-><init>(LjF0;)V

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p1, p0, LjF0;->w0:Lorg/chromium/chrome/browser/signin/SigninView;

    .line 17
    iget-object p1, p1, Lorg/chromium/chrome/browser/signin/SigninView;->w:Lorg/chromium/chrome/browser/signin/SigninScrollView;

    .line 18
    new-instance p3, LZE0;

    invoke-direct {p3, p0}, LZE0;-><init>(LjF0;)V

    invoke-virtual {p1, p3}, Lorg/chromium/chrome/browser/signin/SigninScrollView;->a(Ljava/lang/Runnable;)V

    .line 19
    iget-object p1, p0, LjF0;->w0:Lorg/chromium/chrome/browser/signin/SigninView;

    .line 20
    iget-object p1, p1, Lorg/chromium/chrome/browser/signin/SigninView;->G:Landroid/widget/TextView;

    .line 21
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 22
    iget p1, p0, LjF0;->u0:I

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 23
    invoke-virtual {p0}, Lz2;->p()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f08010b

    .line 24
    invoke-static {p1, v0}, Lsa;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 25
    iget-object v0, p0, LjF0;->w0:Lorg/chromium/chrome/browser/signin/SigninView;

    .line 26
    iget-object v0, v0, Lorg/chromium/chrome/browser/signin/SigninView;->I:Landroid/widget/Button;

    .line 27
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 28
    iget-object p2, p0, LjF0;->w0:Lorg/chromium/chrome/browser/signin/SigninView;

    .line 29
    iget-object p2, p2, Lorg/chromium/chrome/browser/signin/SigninView;->K:Landroid/view/View;

    const/4 v0, 0x4

    .line 30
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0}, Lz2;->p()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f080134

    const v0, 0x7f060169

    .line 32
    invoke-static {p1, p2, v0}, Lwc1;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 33
    :goto_0
    iget-object p2, p0, LjF0;->w0:Lorg/chromium/chrome/browser/signin/SigninView;

    .line 34
    iget-object p2, p2, Lorg/chromium/chrome/browser/signin/SigninView;->D:Landroid/widget/ImageView;

    .line 35
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    iget-object p1, p0, LjF0;->x0:LFE0;

    iget-object p2, p0, LjF0;->w0:Lorg/chromium/chrome/browser/signin/SigninView;

    .line 37
    iget-object p2, p2, Lorg/chromium/chrome/browser/signin/SigninView;->y:Landroid/widget/TextView;

    const v0, 0x7f1305a3

    const/4 v1, 0x0

    .line 38
    invoke-virtual {p1, p2, v0, v1}, LFE0;->a(Landroid/widget/TextView;ILDE0;)V

    .line 39
    iget-object p1, p0, LjF0;->x0:LFE0;

    iget-object p2, p0, LjF0;->w0:Lorg/chromium/chrome/browser/signin/SigninView;

    .line 40
    iget-object p2, p2, Lorg/chromium/chrome/browser/signin/SigninView;->E:Landroid/widget/TextView;

    const v0, 0x7f1305a2

    .line 41
    invoke-virtual {p1, p2, v0, v1}, LFE0;->a(Landroid/widget/TextView;ILDE0;)V

    .line 42
    iget p1, p0, LjF0;->v0:I

    if-ne p1, p3, :cond_1

    const p1, 0x7f1305a1

    goto :goto_1

    :cond_1
    const p1, 0x7f1305a0

    .line 43
    :goto_1
    iget-object p2, p0, LjF0;->x0:LFE0;

    iget-object v0, p0, LjF0;->w0:Lorg/chromium/chrome/browser/signin/SigninView;

    .line 44
    iget-object v0, v0, Lorg/chromium/chrome/browser/signin/SigninView;->F:Landroid/widget/TextView;

    .line 45
    invoke-virtual {p2, v0, p1, v1}, LFE0;->a(Landroid/widget/TextView;ILDE0;)V

    .line 46
    iget-object p1, p0, LjF0;->x0:LFE0;

    iget-object p2, p0, LjF0;->w0:Lorg/chromium/chrome/browser/signin/SigninView;

    .line 47
    iget-object p2, p2, Lorg/chromium/chrome/browser/signin/SigninView;->I:Landroid/widget/Button;

    .line 48
    move-object v0, p0

    check-cast v0, Lorg/chromium/chrome/browser/signin/SigninFragment;

    .line 49
    iget v0, v0, Lorg/chromium/chrome/browser/signin/SigninFragment;->P0:I

    const/16 v2, 0xf

    if-ne v0, v2, :cond_2

    const v0, 0x7f130418

    goto :goto_2

    :cond_2
    const v0, 0x7f1301d4

    .line 50
    :goto_2
    invoke-virtual {p1, p2, v0, v1}, LFE0;->a(Landroid/widget/TextView;ILDE0;)V

    .line 51
    iget-object p1, p0, LjF0;->x0:LFE0;

    iget-object p2, p0, LjF0;->w0:Lorg/chromium/chrome/browser/signin/SigninView;

    .line 52
    iget-object p2, p2, Lorg/chromium/chrome/browser/signin/SigninView;->J:Landroid/widget/Button;

    const v0, 0x7f1303e8

    .line 53
    invoke-virtual {p1, p2, v0, v1}, LFE0;->a(Landroid/widget/TextView;ILDE0;)V

    .line 54
    invoke-virtual {p0, p3}, LjF0;->i(Z)V

    .line 55
    iget-object p1, p0, LjF0;->A0:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, LjF0;->U()V

    .line 56
    :cond_3
    iget-object p1, p0, LjF0;->w0:Lorg/chromium/chrome/browser/signin/SigninView;

    return-object p1
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    const/4 p1, -0x1

    if-ne p2, p1, :cond_6

    if-nez p3, :cond_0

    return-void

    :cond_0
    const-string p1, "authAccount"

    .line 58
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 59
    :cond_1
    invoke-virtual {p0}, LjF0;->R()LkE0;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 60
    invoke-virtual {p2, v0}, Ls2;->g(Z)V

    .line 61
    :cond_2
    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacade;->get()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object p2

    new-instance p3, LTE0;

    invoke-direct {p3, p0, p1}, LTE0;-><init>(LjF0;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_5

    .line 62
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 63
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 64
    iget-object v0, p2, Lorg/chromium/components/signin/AccountManagerFacade;->k:LWU0;

    if-eqz v0, :cond_4

    .line 65
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 66
    iget-object p1, v0, LWU0;->a:Ljava/lang/Object;

    .line 67
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    .line 68
    invoke-virtual {p3}, LTE0;->run()V

    goto :goto_0

    .line 69
    :cond_3
    iget-object p1, p2, Lorg/chromium/components/signin/AccountManagerFacade;->j:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    :cond_4
    throw p1

    .line 71
    :cond_5
    throw p1

    :cond_6
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0

    .line 57
    invoke-virtual {p0, p1, p2}, LjF0;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lz2;->b(Landroid/os/Bundle;)V

    .line 2
    move-object v0, p0

    check-cast v0, Lorg/chromium/chrome/browser/signin/SigninFragment;

    .line 3
    iget-object v0, v0, Lz2;->C:Landroid/os/Bundle;

    const-string v1, "SigninFragmentBase.AccountName"

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LjF0;->z0:Ljava/lang/String;

    const-string v1, "SigninFragmentBase.ChildAccountStatus"

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, LjF0;->v0:I

    const-string v1, "SigninFragmentBase.SigninFlowType"

    .line 6
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, LjF0;->u0:I

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, LjF0;->y0:Z

    if-nez p1, :cond_1

    const/4 p1, 0x2

    if-ne v0, p1, :cond_0

    .line 8
    invoke-virtual {p0}, LjF0;->S()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    if-ne v0, p1, :cond_1

    .line 9
    invoke-virtual {p0}, LjF0;->e()V

    .line 10
    :cond_1
    :goto_0
    new-instance p1, LFE0;

    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p1, v0}, LFE0;-><init>(Landroid/content/res/Resources;)V

    iput-object p1, p0, LjF0;->x0:LFE0;

    .line 11
    iget p1, p0, LjF0;->v0:I

    invoke-static {p1}, LJU0;->a(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0800f4

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 13
    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070061

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 14
    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070062

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 15
    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070060

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 16
    new-instance v4, LIE0;

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v0, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {v4, p1, v5, v3}, LIE0;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Point;I)V

    move-object v2, v4

    .line 17
    :cond_2
    new-instance p1, LKE0;

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    .line 18
    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070337

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {p1, v0, v3, v2}, LKE0;-><init>(Landroid/content/Context;ILIE0;)V

    iput-object p1, p0, LjF0;->E0:LKE0;

    .line 19
    iput-boolean v1, p0, LjF0;->K0:Z

    return-void
.end method

.method public final b(Ljava/lang/String;Z)V
    .locals 1

    .line 20
    iput-object p1, p0, LjF0;->A0:Ljava/lang/String;

    .line 21
    iput-boolean p2, p0, LjF0;->B0:Z

    .line 22
    iget-object p2, p0, LjF0;->E0:LKE0;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, LKE0;->a(Ljava/util/List;)V

    .line 23
    invoke-virtual {p0}, LjF0;->U()V

    .line 24
    invoke-virtual {p0}, LjF0;->R()LkE0;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 25
    iget-object p2, p2, LkE0;->H0:LiE0;

    .line 26
    iput-object p1, p2, LiE0;->y:Ljava/lang/String;

    .line 27
    iget-object p1, p2, LBg;->w:LCg;

    invoke-virtual {p1}, LCg;->b()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "Signin_AddAccountToDevice"

    .line 1
    invoke-static {v0}, LhV;->a(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacade;->get()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object v0

    new-instance v1, LSE0;

    invoke-direct {v1, p0}, LSE0;-><init>(LjF0;)V

    invoke-virtual {v0, v1}, Lorg/chromium/components/signin/AccountManagerFacade;->a(Lorg/chromium/base/Callback;)V

    return-void
.end method

.method public final g(Z)V
    .locals 7

    .line 1
    new-instance v6, LuE0;

    invoke-virtual {p0}, Lz2;->p()Landroid/content/Context;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Lz2;->o()LH2;

    move-result-object v2

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, LJ/N;->MT3mZ4XY(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-object v4, p0, LjF0;->A0:Ljava/lang/String;

    new-instance v5, LhF0;

    invoke-direct {v5, p0, p1}, LhF0;-><init>(LjF0;Z)V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LuE0;-><init>(Landroid/content/Context;LH2;Ljava/lang/String;Ljava/lang/String;LmE0;)V

    iput-object v6, p0, LjF0;->O0:LuE0;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public final h(Z)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 2
    invoke-static {}, LHE0;->a()Lorg/chromium/components/signin/AccountTrackerService;

    move-result-object v6

    .line 3
    invoke-virtual {v6}, Lorg/chromium/components/signin/AccountTrackerService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v3

    const-string v2, "Signin.AndroidAccountSigninViewSeedingTime"

    .line 5
    invoke-static {v2, v0, v1}, LfV;->c(Ljava/lang/String;J)V

    .line 6
    invoke-virtual {p0, p1}, LjF0;->g(Z)V

    return-void

    .line 7
    :cond_0
    new-instance v7, LeF0;

    move-object v0, v7

    move-object v1, p0

    move-object v2, v6

    move v5, p1

    invoke-direct/range {v0 .. v5}, LeF0;-><init>(LjF0;Lorg/chromium/components/signin/AccountTrackerService;JZ)V

    .line 8
    invoke-virtual {v6, v7}, Lorg/chromium/components/signin/AccountTrackerService;->a(LEU0;)V

    return-void
.end method

.method public final i(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object v1, p0, LjF0;->w0:Lorg/chromium/chrome/browser/signin/SigninView;

    .line 2
    iget-object v1, v1, Lorg/chromium/chrome/browser/signin/SigninView;->z:Landroid/view/View;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v1, p0, LjF0;->x0:LFE0;

    iget-object v2, p0, LjF0;->w0:Lorg/chromium/chrome/browser/signin/SigninView;

    .line 5
    iget-object v2, v2, Lorg/chromium/chrome/browser/signin/SigninView;->H:Lorg/chromium/ui/widget/ButtonCompat;

    const v3, 0x7f13058f

    .line 6
    invoke-virtual {v1, v2, v3, v0}, LFE0;->a(Landroid/widget/TextView;ILDE0;)V

    .line 7
    iget-object v1, p0, LjF0;->w0:Lorg/chromium/chrome/browser/signin/SigninView;

    .line 8
    iget-object v1, v1, Lorg/chromium/chrome/browser/signin/SigninView;->H:Lorg/chromium/ui/widget/ButtonCompat;

    .line 9
    new-instance v2, LaF0;

    invoke-direct {v2, p0}, LaF0;-><init>(LjF0;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, LjF0;->w0:Lorg/chromium/chrome/browser/signin/SigninView;

    .line 11
    iget-object v1, v1, Lorg/chromium/chrome/browser/signin/SigninView;->z:Landroid/view/View;

    const/16 v2, 0x8

    .line 12
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v1, p0, LjF0;->x0:LFE0;

    iget-object v2, p0, LjF0;->w0:Lorg/chromium/chrome/browser/signin/SigninView;

    .line 14
    iget-object v2, v2, Lorg/chromium/chrome/browser/signin/SigninView;->H:Lorg/chromium/ui/widget/ButtonCompat;

    const v3, 0x7f130591

    .line 15
    invoke-virtual {v1, v2, v3, v0}, LFE0;->a(Landroid/widget/TextView;ILDE0;)V

    .line 16
    iget-object v1, p0, LjF0;->w0:Lorg/chromium/chrome/browser/signin/SigninView;

    .line 17
    iget-object v1, v1, Lorg/chromium/chrome/browser/signin/SigninView;->H:Lorg/chromium/ui/widget/ButtonCompat;

    .line 18
    new-instance v2, LbF0;

    invoke-direct {v2, p0}, LbF0;-><init>(LjF0;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    if-eqz p1, :cond_1

    .line 19
    new-instance v0, LVe1;

    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object p1

    new-instance v1, LcF0;

    invoke-direct {v1, p0}, LcF0;-><init>(LjF0;)V

    invoke-direct {v0, p1, v1}, LVe1;-><init>(Landroid/content/res/Resources;Lorg/chromium/base/Callback;)V

    .line 20
    :cond_1
    new-instance p1, LWe1;

    const-string v1, "<LINK1>"

    const-string v2, "</LINK1>"

    invoke-direct {p1, v1, v2, v0}, LWe1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    iget-object v0, p0, LjF0;->x0:LFE0;

    iget-object v1, p0, LjF0;->w0:Lorg/chromium/chrome/browser/signin/SigninView;

    .line 22
    iget-object v1, v1, Lorg/chromium/chrome/browser/signin/SigninView;->G:Landroid/widget/TextView;

    const v2, 0x7f130592

    .line 23
    new-instance v3, LdF0;

    invoke-direct {v3, p1}, LdF0;-><init>(LWe1;)V

    invoke-virtual {v0, v1, v2, v3}, LFE0;->a(Landroid/widget/TextView;ILDE0;)V

    return-void
.end method

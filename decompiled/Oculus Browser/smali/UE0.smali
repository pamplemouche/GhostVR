.class public final synthetic LUE0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LjF0;


# direct methods
.method public constructor <init>(LjF0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LUE0;->a:LjF0;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, LUE0;->a:LjF0;

    check-cast p1, LzU0;

    .line 1
    iget-boolean v1, v0, LjF0;->G0:Z

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    const-string v1, "SigninFragmentBase"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2
    :try_start_0
    iget-object v5, p1, LzU0;->b:LoU0;

    if-nez v5, :cond_1

    .line 3
    iget-object p1, p1, LzU0;->a:Ljava/lang/Object;

    .line 4
    check-cast p1, Ljava/util/List;

    .line 5
    invoke-virtual {v0}, LjF0;->P()V

    .line 6
    invoke-virtual {v0}, LjF0;->Q()V

    goto :goto_2

    .line 7
    :cond_1
    throw v5
    :try_end_0
    .catch LLU0; {:try_start_0 .. :try_end_0} :catch_1
    .catch LoU0; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v4

    const-string p1, "Unknown exception from AccountManagerFacade."

    .line 8
    invoke-static {v1, p1, v5}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v0}, LjF0;->P()V

    .line 10
    invoke-virtual {v0}, LjF0;->Q()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 11
    invoke-virtual {v0}, LjF0;->Q()V

    .line 12
    sget-object v5, Ldm;->d:Ldm;

    .line 13
    iget v6, p1, LLU0;->w:I

    if-eqz v5, :cond_e

    .line 14
    invoke-static {v6}, Lkm;->b(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 15
    iget p1, p1, LLU0;->w:I

    .line 16
    iget-object v1, v0, LjF0;->L0:Lla0;

    if-eqz v1, :cond_3

    .line 17
    iget-object v1, v1, Lla0;->d:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    goto :goto_1

    .line 18
    :cond_3
    invoke-static {}, LHE0;->b()Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v1

    .line 19
    iget-wide v5, v1, Lorg/chromium/chrome/browser/signin/SigninManager;->a:J

    .line 20
    invoke-static {v5, v6}, LJ/N;->MPGEx92r(J)Z

    move-result v1

    xor-int/2addr v1, v3

    .line 21
    new-instance v5, Lla0;

    .line 22
    invoke-virtual {v0}, Lz2;->l()LD2;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lla0;-><init>(Landroid/app/Activity;Z)V

    iput-object v5, v0, LjF0;->L0:Lla0;

    .line 23
    invoke-virtual {v0}, Lz2;->l()LD2;

    move-result-object v1

    .line 24
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 25
    invoke-virtual {v5, v1, p1}, Lna0;->a(Landroid/content/Context;I)V

    goto :goto_1

    :cond_4
    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v4

    const-string p1, "Unresolvable GmsAvailabilityException."

    .line 26
    invoke-static {v1, p1, v5}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    move-object p1, v2

    .line 27
    :goto_2
    iput-object p1, v0, LjF0;->F0:Ljava/util/List;

    if-nez p1, :cond_5

    const/4 p1, 0x1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    .line 28
    :goto_3
    iput-boolean p1, v0, LjF0;->J0:Z

    .line 29
    iget-object v1, v0, LjF0;->w0:Lorg/chromium/chrome/browser/signin/SigninView;

    .line 30
    iget-object v1, v1, Lorg/chromium/chrome/browser/signin/SigninView;->H:Lorg/chromium/ui/widget/ButtonCompat;

    xor-int/2addr p1, v3

    .line 31
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 32
    iget-boolean p1, v0, LjF0;->J0:Z

    if-eqz p1, :cond_6

    goto :goto_6

    .line 33
    :cond_6
    iget-object p1, v0, LjF0;->F0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 34
    iput-object v2, v0, LjF0;->A0:Ljava/lang/String;

    .line 35
    iput-boolean v4, v0, LjF0;->y0:Z

    .line 36
    invoke-virtual {v0, v4}, LjF0;->i(Z)V

    goto :goto_6

    .line 37
    :cond_7
    invoke-virtual {v0, v3}, LjF0;->i(Z)V

    .line 38
    iget-boolean p1, v0, LjF0;->y0:Z

    if-eqz p1, :cond_9

    .line 39
    iget-object p1, v0, LjF0;->F0:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 40
    iget-object v1, v0, LjF0;->z0:Ljava/lang/String;

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    move-object v1, p1

    .line 41
    :goto_4
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, v1, p1}, LjF0;->b(Ljava/lang/String;Z)V

    .line 42
    iput-boolean v4, v0, LjF0;->y0:Z

    .line 43
    iput-object v2, v0, LjF0;->z0:Ljava/lang/String;

    .line 44
    :cond_9
    iget-object p1, v0, LjF0;->A0:Ljava/lang/String;

    if-eqz p1, :cond_a

    iget-object v1, v0, LjF0;->F0:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_6

    .line 45
    :cond_a
    iget-object p1, v0, LjF0;->O0:LuE0;

    if-eqz p1, :cond_b

    .line 46
    invoke-virtual {p1, v4}, LuE0;->b(Z)V

    .line 47
    iput-object v2, v0, LjF0;->O0:LuE0;

    .line 48
    :cond_b
    iget p1, v0, LjF0;->u0:I

    if-ne p1, v3, :cond_c

    const/4 p1, 0x1

    goto :goto_5

    :cond_c
    const/4 p1, 0x0

    :goto_5
    if-eqz p1, :cond_d

    .line 49
    check-cast v0, Lorg/chromium/chrome/browser/signin/SigninFragment;

    .line 50
    invoke-virtual {v0}, Lz2;->l()LD2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_6

    .line 51
    :cond_d
    iget-object p1, v0, LjF0;->F0:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1, v3}, LjF0;->b(Ljava/lang/String;Z)V

    .line 52
    invoke-virtual {v0}, LjF0;->S()V

    :goto_6
    return-void

    .line 53
    :cond_e
    throw v2
.end method

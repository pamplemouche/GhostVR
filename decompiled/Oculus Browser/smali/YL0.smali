.class public LYL0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lti0;
.implements Lui0;
.implements LvZ;
.implements Lx00;


# instance fields
.field public A:Lyc0;

.field public B:Lorg/chromium/base/Callback;

.field public C:Lorg/chromium/base/Callback;

.field public D:Lv30;

.field public E:LSO0;

.field public w:Lorg/chromium/chrome/browser/ChromeActivity;

.field public x:LA00;

.field public final y:LwZ;

.field public z:Lxc0;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LYL0;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 3
    invoke-virtual {p1}, LBg0;->M()Lqi0;

    move-result-object p1

    check-cast p1, Lqg0;

    invoke-virtual {p1, p0}, Lqg0;->a(Lvi0;)V

    .line 4
    iget-object p1, p0, LYL0;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->E0()LwZ;

    move-result-object p1

    iput-object p1, p0, LYL0;->y:LwZ;

    .line 5
    invoke-interface {p1, p0}, LwZ;->b(LvZ;)V

    .line 6
    new-instance p1, LTL0;

    invoke-direct {p1, p0}, LTL0;-><init>(LYL0;)V

    iput-object p1, p0, LYL0;->B:Lorg/chromium/base/Callback;

    .line 7
    iget-object p1, p0, LYL0;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->C0()LQT;

    move-result-object p1

    iget-object v0, p0, LYL0;->B:Lorg/chromium/base/Callback;

    check-cast p1, LST;

    invoke-virtual {p1, v0}, LST;->a(Lorg/chromium/base/Callback;)Ljava/lang/Object;

    .line 8
    iget-object p1, p0, LYL0;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->H0()LQT;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    new-instance p1, LUL0;

    invoke-direct {p1, p0}, LUL0;-><init>(LYL0;)V

    iput-object p1, p0, LYL0;->C:Lorg/chromium/base/Callback;

    .line 10
    iget-object p1, p0, LYL0;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->H0()LQT;

    move-result-object p1

    iget-object v0, p0, LYL0;->C:Lorg/chromium/base/Callback;

    check-cast p1, LST;

    invoke-virtual {p1, v0}, LST;->a(Lorg/chromium/base/Callback;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 1
    iget-object v0, p0, LYL0;->y:LwZ;

    invoke-interface {v0, p0}, LwZ;->a(LvZ;)V

    .line 2
    iget-object v0, p0, LYL0;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->C0()LQT;

    move-result-object v0

    iget-object v1, p0, LYL0;->B:Lorg/chromium/base/Callback;

    check-cast v0, LST;

    .line 3
    iget-object v0, v0, LST;->d:LWT;

    invoke-virtual {v0, v1}, LWT;->b(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, LYL0;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->H0()LQT;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, LYL0;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->H0()LQT;

    move-result-object v0

    iget-object v1, p0, LYL0;->C:Lorg/chromium/base/Callback;

    check-cast v0, LST;

    .line 6
    iget-object v0, v0, LST;->d:LWT;

    invoke-virtual {v0, v1}, LWT;->b(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    iget-object v0, p0, LYL0;->x:LA00;

    if-eqz v0, :cond_3

    .line 8
    check-cast v0, LE00;

    .line 9
    iget-object v0, v0, LE00;->e:LI00;

    .line 10
    iget-object v0, v0, LI00;->z:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 11
    iget-object v0, p0, LYL0;->x:LA00;

    iget-object v1, p0, LYL0;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    check-cast v0, LE00;

    .line 12
    iget-object v0, v0, LE00;->e:LI00;

    .line 13
    iget-object v0, v0, LI00;->z:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, p0, LYL0;->x:LA00;

    check-cast v0, LE00;

    .line 15
    iget-object v1, v0, LE00;->e:LI00;

    if-eqz v1, :cond_1

    .line 16
    invoke-virtual {v1}, LI00;->d()V

    .line 17
    iget-object v2, v1, LI00;->G:Lqi0;

    check-cast v2, Lqg0;

    invoke-virtual {v2, v1}, Lqg0;->b(Lvi0;)V

    .line 18
    :cond_1
    iget-object v0, v0, LE00;->d:LK00;

    check-cast v0, LN00;

    .line 19
    iget-object v1, v0, LN00;->i:LQT;

    if-eqz v1, :cond_2

    .line 20
    iget-object v2, v0, LN00;->k:Lorg/chromium/base/Callback;

    check-cast v1, LST;

    .line 21
    iget-object v1, v1, LST;->d:LWT;

    invoke-virtual {v1, v2}, LWT;->b(Ljava/lang/Object;)Z

    .line 22
    :cond_2
    iget-object v1, v0, LN00;->j:LQT;

    iget-object v0, v0, LN00;->l:Lorg/chromium/base/Callback;

    check-cast v1, LST;

    .line 23
    iget-object v1, v1, LST;->d:LWT;

    invoke-virtual {v1, v0}, LWT;->b(Ljava/lang/Object;)Z

    .line 24
    :cond_3
    iget-object v0, p0, LYL0;->z:Lxc0;

    if-eqz v0, :cond_4

    iget-object v1, p0, LYL0;->A:Lyc0;

    .line 25
    iget-object v0, v0, Lxc0;->f:LWT;

    invoke-virtual {v0, v1}, LWT;->b(Ljava/lang/Object;)Z

    .line 26
    :cond_4
    iget-object v0, p0, LYL0;->E:LSO0;

    if-eqz v0, :cond_5

    .line 27
    sget-object v1, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_5
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, LYL0;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    return-void
.end method

.method public z()Z
    .locals 3

    .line 1
    iget-object v0, p0, LYL0;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->t0()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LYL0;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 2
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->t0()Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, LYL0;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->z0()V

    .line 5
    iget-object v0, p0, LYL0;->z:Lxc0;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, v0, Lxc0;->a:Lwc0;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, LYL0;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 8
    invoke-static {v0}, Lorg/chromium/ui/base/DeviceFormFactor;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    return v1
.end method

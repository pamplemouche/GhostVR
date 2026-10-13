.class public LGJ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lwi0;
.implements LJE0;
.implements LxF0;
.implements LoG0;


# instance fields
.field public A:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

.field public B:LKE0;

.field public C:Z

.field public D:Z

.field public final w:Landroid/content/Context;

.field public final x:LkK0;

.field public y:Lqi0;

.field public z:Lorg/chromium/chrome/browser/signin/SigninManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;LkK0;Lqi0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LGJ0;->w:Landroid/content/Context;

    .line 3
    iput-object p2, p0, LGJ0;->x:LkK0;

    .line 4
    iput-object p3, p0, LGJ0;->y:Lqi0;

    .line 5
    check-cast p3, Lqg0;

    invoke-virtual {p3, p0}, Lqg0;->a(Lvi0;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 42
    iget-boolean v0, p0, LGJ0;->C:Z

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-static {}, LKU0;->d()LKU0;

    move-result-object v0

    invoke-virtual {v0}, LKU0;->a()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 45
    iget-object p1, p0, LGJ0;->B:LKE0;

    invoke-virtual {p1, v0}, LKE0;->a(Ljava/lang/String;)LGE0;

    move-result-object p1

    .line 46
    iget-object p1, p1, LGE0;->b:Landroid/graphics/drawable/Drawable;

    .line 47
    iget-object v0, p0, LGJ0;->x:LkK0;

    .line 48
    iget-object v0, v0, LkK0;->A:LfL0;

    .line 49
    iget-object v0, v0, LfL0;->a:LQK0;

    invoke-virtual {v0, p1}, LQK0;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 10

    const-string v0, "IdentityDisc"

    .line 1
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, LGJ0;->A:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iput-boolean p1, p0, LGJ0;->D:Z

    .line 4
    invoke-static {}, LKU0;->d()LKU0;

    move-result-object v0

    invoke-virtual {v0}, LKU0;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 5
    iget-object p1, p0, LGJ0;->A:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 6
    iget-wide v3, p1, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 7
    invoke-static {v3, v4, p1}, LJ/N;->Map18zd9(JLjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 8
    :goto_0
    iget-boolean v3, p0, LGJ0;->C:Z

    if-ne p1, v3, :cond_3

    return-void

    :cond_3
    if-eqz p1, :cond_7

    .line 9
    iget-object p1, p0, LGJ0;->B:LKE0;

    if-eqz p1, :cond_4

    goto :goto_2

    .line 10
    :cond_4
    iget-object p1, p0, LGJ0;->x:LkK0;

    .line 11
    iget-boolean p1, p1, LkK0;->m0:Z

    if-eqz p1, :cond_5

    const p1, 0x7f07031f

    goto :goto_1

    :cond_5
    const p1, 0x7f07031e

    .line 12
    :goto_1
    iget-object v1, p0, LGJ0;->w:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 13
    new-instance v1, LKE0;

    iget-object v3, p0, LGJ0;->w:Landroid/content/Context;

    const/4 v4, 0x0

    .line 14
    invoke-direct {v1, v3, p1, v4}, LKE0;-><init>(Landroid/content/Context;ILIE0;)V

    .line 15
    iput-object v1, p0, LGJ0;->B:LKE0;

    .line 16
    invoke-virtual {v1, p0}, LKE0;->a(LJE0;)V

    .line 17
    iget-object p1, p0, LGJ0;->B:LKE0;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, LKE0;->a(Ljava/util/List;)V

    .line 18
    :goto_2
    iget-object p1, p0, LGJ0;->B:LKE0;

    invoke-virtual {p1, v0}, LKE0;->a(Ljava/lang/String;)LGE0;

    move-result-object p1

    .line 19
    iget-object p1, p1, LGE0;->b:Landroid/graphics/drawable/Drawable;

    .line 20
    iget-object v0, p0, LGJ0;->x:LkK0;

    new-instance v1, LEJ0;

    invoke-direct {v1, p0}, LEJ0;-><init>(LGJ0;)V

    const v3, 0x7f130119

    .line 21
    iget-object v0, v0, LkK0;->A:LfL0;

    .line 22
    iget-object v0, v0, LfL0;->a:LQK0;

    invoke-virtual {v0, v1, p1, v3}, LQK0;->a(Landroid/view/View$OnClickListener;Landroid/graphics/drawable/Drawable;I)V

    .line 23
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object p1

    .line 24
    invoke-static {p1}, LJa0;->a(Lorg/chromium/chrome/browser/profiles/Profile;)LoT0;

    move-result-object p1

    const-string v0, "IPH_IdentityDisc"

    .line 25
    invoke-interface {p1, v0}, LoT0;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    .line 26
    :cond_6
    iget-object v0, p0, LGJ0;->x:LkK0;

    const v6, 0x7f13036b

    const v7, 0x7f13036a

    new-instance v1, LFJ0;

    invoke-direct {v1, p1}, LFJ0;-><init>(LoT0;)V

    .line 27
    iget-object p1, v0, LkK0;->A:LfL0;

    .line 28
    iget-object p1, p1, LfL0;->a:LQK0;

    .line 29
    invoke-virtual {p1}, LQK0;->e()Landroid/view/View;

    move-result-object v5

    .line 30
    new-instance v0, LoN0;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 31
    new-instance v9, Lpf1;

    invoke-direct {v9, v5}, Lpf1;-><init>(Landroid/view/View;)V

    const/4 v8, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, LoN0;-><init>(Landroid/content/Context;Landroid/view/View;IIZLhf1;)V

    .line 32
    invoke-virtual {v0, v2}, LoN0;->a(Z)V

    .line 33
    new-instance p1, LNK0;

    invoke-direct {p1, v1}, LNK0;-><init>(Ljava/lang/Runnable;)V

    .line 34
    iget-object v1, v0, LoN0;->y:Lef1;

    .line 35
    iget-object v1, v1, Lef1;->G:LWT;

    invoke-virtual {v1, p1}, LWT;->a(Ljava/lang/Object;)Z

    .line 36
    invoke-virtual {v0}, LoN0;->b()V

    .line 37
    :goto_3
    iput-boolean v2, p0, LGJ0;->C:Z

    goto :goto_4

    .line 38
    :cond_7
    iput-boolean v1, p0, LGJ0;->C:Z

    .line 39
    iget-object p1, p0, LGJ0;->x:LkK0;

    .line 40
    iget-object p1, p1, LkK0;->A:LfL0;

    .line 41
    iget-object p1, p1, LfL0;->a:LQK0;

    invoke-virtual {p1}, LQK0;->c()V

    :goto_4
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-static {}, LKU0;->d()LKU0;

    move-result-object v0

    invoke-virtual {v0}, LKU0;->a()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, LGJ0;->B:LKE0;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, LKE0;->a(Ljava/util/List;)V

    .line 4
    :cond_0
    iget-boolean v0, p0, LGJ0;->D:Z

    invoke-virtual {p0, v0}, LGJ0;->a(Z)V

    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-boolean v0, p0, LGJ0;->D:Z

    invoke-virtual {p0, v0}, LGJ0;->a(Z)V

    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    iget-boolean v0, p0, LGJ0;->D:Z

    invoke-virtual {p0, v0}, LGJ0;->a(Z)V

    return-void
.end method

.class public Lorg/chromium/chrome/browser/permissions/PermissionDialogController;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lhx0;
.implements LDd1;


# instance fields
.field public A:I

.field public w:Lle1;

.field public x:Lorg/chromium/chrome/browser/permissions/PermissionDialogDelegate;

.field public y:LBd1;

.field public z:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljx0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->z:Ljava/util/List;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->A:I

    return-void
.end method

.method public static createDialog(Lorg/chromium/chrome/browser/permissions/PermissionDialogDelegate;)V
    .locals 2

    .line 1
    sget-object v0, Lkx0;->a:Lorg/chromium/chrome/browser/permissions/PermissionDialogController;

    .line 2
    iget-object v1, v0, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->z:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iput-object v0, p0, Lorg/chromium/chrome/browser/permissions/PermissionDialogDelegate;->b:Lorg/chromium/chrome/browser/permissions/PermissionDialogController;

    .line 4
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->b()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 21
    iget-object v0, p0, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->x:Lorg/chromium/chrome/browser/permissions/PermissionDialogDelegate;

    .line 22
    iget-wide v1, v0, Lorg/chromium/chrome/browser/permissions/PermissionDialogDelegate;->a:J

    .line 23
    invoke-static {v1, v2, v0}, LJ/N;->M5wo6e1K(JLjava/lang/Object;)V

    const-wide/16 v1, 0x0

    .line 24
    iput-wide v1, v0, Lorg/chromium/chrome/browser/permissions/PermissionDialogDelegate;->a:J

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->x:Lorg/chromium/chrome/browser/permissions/PermissionDialogDelegate;

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->A:I

    return-void
.end method

.method public a(Lle1;I)V
    .locals 2

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->w:Lle1;

    .line 2
    iget-object p1, p0, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->x:Lorg/chromium/chrome/browser/permissions/PermissionDialogDelegate;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 3
    iput p2, p0, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->A:I

    return-void

    .line 4
    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->A:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const/4 v0, 0x5

    .line 5
    iput v0, p0, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->A:I

    .line 6
    iget-object v0, p1, Lorg/chromium/chrome/browser/permissions/PermissionDialogDelegate;->c:Lorg/chromium/chrome/browser/tab/Tab;

    .line 7
    iget-object p1, p1, Lorg/chromium/chrome/browser/permissions/PermissionDialogDelegate;->h:[I

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 8
    invoke-static {v0, p1, p0}, Lix0;->a(Lorg/chromium/chrome/browser/tab/Tab;[ILhx0;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 9
    iget-object p1, p0, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->x:Lorg/chromium/chrome/browser/permissions/PermissionDialogDelegate;

    if-nez p1, :cond_1

    .line 10
    iput p2, p0, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->A:I

    goto :goto_0

    .line 11
    :cond_1
    iget-wide v0, p1, Lorg/chromium/chrome/browser/permissions/PermissionDialogDelegate;->a:J

    .line 12
    invoke-static {v0, v1, p1}, LJ/N;->MFuPdQCS(JLjava/lang/Object;)V

    .line 13
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->a()V

    .line 14
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->b()V

    goto :goto_2

    :cond_2
    const/4 p2, 0x4

    if-ne v0, p2, :cond_3

    .line 15
    iget-wide v0, p1, Lorg/chromium/chrome/browser/permissions/PermissionDialogDelegate;->a:J

    .line 16
    invoke-static {v0, v1, p1}, LJ/N;->MIzxYZSI(JLjava/lang/Object;)V

    goto :goto_1

    .line 17
    :cond_3
    iget-wide v0, p1, Lorg/chromium/chrome/browser/permissions/PermissionDialogDelegate;->a:J

    .line 18
    invoke-static {v0, v1, p1}, LJ/N;->MxsYC4x9(JLjava/lang/Object;)V

    .line 19
    :goto_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->a()V

    .line 20
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->b()V

    :cond_4
    :goto_2
    return-void
.end method

.method public final b()V
    .locals 7

    .line 1
    iget v0, p0, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->A:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->z:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/permissions/PermissionDialogDelegate;

    iput-object v0, p0, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->x:Lorg/chromium/chrome/browser/permissions/PermissionDialogDelegate;

    .line 3
    iget-object v0, v0, Lorg/chromium/chrome/browser/permissions/PermissionDialogDelegate;->c:Lorg/chromium/chrome/browser/tab/Tab;

    .line 4
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->x:Lorg/chromium/chrome/browser/permissions/PermissionDialogDelegate;

    .line 6
    iget-wide v1, v0, Lorg/chromium/chrome/browser/permissions/PermissionDialogDelegate;->a:J

    .line 7
    invoke-static {v1, v2, v0}, LJ/N;->MxsYC4x9(JLjava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->a()V

    goto/16 :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->x:Lorg/chromium/chrome/browser/permissions/PermissionDialogDelegate;

    if-nez v0, :cond_1

    .line 10
    iput v1, p0, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->A:I

    .line 11
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->b()V

    goto/16 :goto_0

    .line 12
    :cond_1
    iget-object v0, v0, Lorg/chromium/chrome/browser/permissions/PermissionDialogDelegate;->c:Lorg/chromium/chrome/browser/tab/Tab;

    .line 13
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    invoke-virtual {v0}, LBg0;->o()LBd1;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->y:LBd1;

    .line 14
    iget-object v0, p0, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->x:Lorg/chromium/chrome/browser/permissions/PermissionDialogDelegate;

    .line 15
    iget-object v2, v0, Lorg/chromium/chrome/browser/permissions/PermissionDialogDelegate;->c:Lorg/chromium/chrome/browser/tab/Tab;

    .line 16
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v2

    .line 17
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0e015d

    const/4 v4, 0x0

    .line 18
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 19
    iget-object v3, v0, Lorg/chromium/chrome/browser/permissions/PermissionDialogDelegate;->e:Ljava/lang/String;

    const v5, 0x7f0b047a

    .line 20
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 21
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget v3, v0, Lorg/chromium/chrome/browser/permissions/PermissionDialogDelegate;->d:I

    .line 23
    invoke-virtual {v5, v3, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 24
    sget-object v3, LEd1;->q:[LUd1;

    .line 25
    invoke-static {v3}, Lle1;->a([LUd1;)Ljava/util/Map;

    move-result-object v3

    .line 26
    sget-object v5, LEd1;->a:Lfe1;

    .line 27
    new-instance v6, Lbe1;

    invoke-direct {v6, v4}, Lbe1;-><init>(LVd1;)V

    .line 28
    iput-object p0, v6, Lbe1;->a:Ljava/lang/Object;

    .line 29
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v5, LEd1;->f:Lke1;

    .line 31
    new-instance v6, Lbe1;

    invoke-direct {v6, v4}, Lbe1;-><init>(LVd1;)V

    .line 32
    iput-object v2, v6, Lbe1;->a:Ljava/lang/Object;

    .line 33
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v2, LEd1;->g:Lke1;

    .line 35
    iget-object v5, v0, Lorg/chromium/chrome/browser/permissions/PermissionDialogDelegate;->f:Ljava/lang/String;

    .line 36
    new-instance v6, Lbe1;

    invoke-direct {v6, v4}, Lbe1;-><init>(LVd1;)V

    .line 37
    iput-object v5, v6, Lbe1;->a:Ljava/lang/Object;

    .line 38
    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v2, LEd1;->j:Lke1;

    .line 40
    iget-object v5, v0, Lorg/chromium/chrome/browser/permissions/PermissionDialogDelegate;->g:Ljava/lang/String;

    .line 41
    new-instance v6, Lbe1;

    invoke-direct {v6, v4}, Lbe1;-><init>(LVd1;)V

    .line 42
    iput-object v5, v6, Lbe1;->a:Ljava/lang/Object;

    .line 43
    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v2, LEd1;->b:Lfe1;

    .line 45
    iget-object v0, v0, Lorg/chromium/chrome/browser/permissions/PermissionDialogDelegate;->e:Ljava/lang/String;

    .line 46
    new-instance v5, Lbe1;

    invoke-direct {v5, v4}, Lbe1;-><init>(LVd1;)V

    .line 47
    iput-object v0, v5, Lbe1;->a:Ljava/lang/Object;

    .line 48
    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, LEd1;->n:Lce1;

    .line 50
    new-instance v2, LWd1;

    invoke-direct {v2, v4}, LWd1;-><init>(LVd1;)V

    const/4 v5, 0x1

    .line 51
    iput-boolean v5, v2, LWd1;->a:Z

    .line 52
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v0, Lle1;

    invoke-direct {v0, v3, v4}, Lle1;-><init>(Ljava/util/Map;LVd1;)V

    .line 54
    iput-object v0, p0, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->w:Lle1;

    .line 55
    iget-object v2, p0, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->y:LBd1;

    .line 56
    invoke-virtual {v2, v0, v5, v1}, LBd1;->a(Lle1;IZ)V

    const/4 v0, 0x2

    .line 57
    iput v0, p0, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->A:I

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Lle1;I)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    .line 58
    iput p2, p0, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->A:I

    .line 59
    iget-object p2, p0, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->y:LBd1;

    const/4 v0, 0x2

    invoke-virtual {p2, p1, v0}, LBd1;->a(Lle1;I)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    .line 60
    iput p2, p0, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->A:I

    .line 61
    iget-object p2, p0, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->y:LBd1;

    invoke-virtual {p2, p1, v0}, LBd1;->a(Lle1;I)V

    :goto_0
    return-void
.end method

.method public onAndroidPermissionAccepted()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->x:Lorg/chromium/chrome/browser/permissions/PermissionDialogDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->A:I

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v1, v0, Lorg/chromium/chrome/browser/permissions/PermissionDialogDelegate;->a:J

    .line 4
    invoke-static {v1, v2, v0}, LJ/N;->MFuPdQCS(JLjava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->a()V

    .line 6
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->b()V

    return-void
.end method

.method public onAndroidPermissionCanceled()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->x:Lorg/chromium/chrome/browser/permissions/PermissionDialogDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->A:I

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v1, v0, Lorg/chromium/chrome/browser/permissions/PermissionDialogDelegate;->a:J

    .line 4
    invoke-static {v1, v2, v0}, LJ/N;->MxsYC4x9(JLjava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->a()V

    .line 6
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/permissions/PermissionDialogController;->b()V

    return-void
.end method

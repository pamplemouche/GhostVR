.class public Le9;
.super LYc;
.source "PG"


# instance fields
.field public final synthetic x:Lk9;


# direct methods
.method public constructor <init>(Lk9;Landroid/view/Window$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le9;->x:Lk9;

    .line 2
    invoke-direct {p0, p2}, LYc;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 10

    .line 1
    new-instance v0, LRc;

    iget-object v1, p0, Le9;->x:Lk9;

    iget-object v1, v1, Lk9;->x:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, LRc;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 2
    iget-object p1, p0, Le9;->x:Lk9;

    const/4 v1, 0x0

    if-eqz p1, :cond_14

    .line 3
    iget-object v2, p1, Lk9;->I:LNc;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, LNc;->a()V

    .line 5
    :cond_0
    new-instance v2, Ld9;

    invoke-direct {v2, p1, v0}, Ld9;-><init>(Lk9;LMc;)V

    .line 6
    invoke-virtual {p1}, Lk9;->i()V

    .line 7
    iget-object v3, p1, Lk9;->C:LB8;

    const/16 v4, 0x20

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    .line 8
    check-cast v3, Lqa;

    .line 9
    iget-object v7, v3, Lqa;->i:Lpa;

    if-eqz v7, :cond_1

    .line 10
    invoke-virtual {v7}, Lpa;->a()V

    .line 11
    :cond_1
    iget-object v7, v3, Lqa;->c:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-virtual {v7, v6}, Landroid/support/v7/widget/ActionBarOverlayLayout;->a(Z)V

    .line 12
    iget-object v7, v3, Lqa;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v7}, Landroid/support/v7/widget/ActionBarContextView;->b()V

    .line 13
    new-instance v7, Lpa;

    iget-object v8, v3, Lqa;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v3, v8, v2}, Lpa;-><init>(Lqa;Landroid/content/Context;LMc;)V

    .line 14
    iget-object v8, v7, Lpa;->z:Lqd;

    invoke-virtual {v8}, Lqd;->i()V

    .line 15
    :try_start_0
    iget-object v8, v7, Lpa;->A:LMc;

    iget-object v9, v7, Lpa;->z:Lqd;

    invoke-interface {v8, v7, v9}, LMc;->a(LNc;Landroid/view/Menu;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object v9, v7, Lpa;->z:Lqd;

    invoke-virtual {v9}, Lqd;->h()V

    if-eqz v8, :cond_2

    .line 17
    iput-object v7, v3, Lqa;->i:Lpa;

    .line 18
    invoke-virtual {v7}, Lpa;->g()V

    .line 19
    iget-object v8, v3, Lqa;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v8, v7}, Landroid/support/v7/widget/ActionBarContextView;->a(LNc;)V

    .line 20
    invoke-virtual {v3, v5}, Lqa;->c(Z)V

    .line 21
    iget-object v3, v3, Lqa;->f:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    goto :goto_0

    :cond_2
    move-object v7, v1

    .line 22
    :goto_0
    iput-object v7, p1, Lk9;->I:LNc;

    if-eqz v7, :cond_3

    .line 23
    iget-object v3, p1, Lk9;->B:LR8;

    if-eqz v3, :cond_3

    .line 24
    invoke-interface {v3, v7}, LR8;->b(LNc;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 25
    iget-object v0, v7, Lpa;->z:Lqd;

    invoke-virtual {v0}, Lqd;->h()V

    throw p1

    .line 26
    :cond_3
    :goto_1
    iget-object v3, p1, Lk9;->I:LNc;

    if-nez v3, :cond_12

    .line 27
    invoke-virtual {p1}, Lk9;->e()V

    .line 28
    iget-object v3, p1, Lk9;->I:LNc;

    if-eqz v3, :cond_4

    .line 29
    invoke-virtual {v3}, LNc;->a()V

    .line 30
    :cond_4
    iget-object v3, p1, Lk9;->B:LR8;

    if-eqz v3, :cond_5

    iget-boolean v7, p1, Lk9;->d0:Z

    if-nez v7, :cond_5

    .line 31
    :try_start_1
    invoke-interface {v3, v2}, LR8;->a(LMc;)LNc;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    :cond_5
    move-object v3, v1

    :goto_2
    if-eqz v3, :cond_6

    .line 32
    iput-object v3, p1, Lk9;->I:LNc;

    goto/16 :goto_8

    .line 33
    :cond_6
    iget-object v3, p1, Lk9;->J:Landroid/support/v7/widget/ActionBarContextView;

    if-nez v3, :cond_b

    .line 34
    iget-boolean v3, p1, Lk9;->X:Z

    if-eqz v3, :cond_8

    .line 35
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 36
    iget-object v7, p1, Lk9;->x:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x7f040009

    .line 37
    invoke-virtual {v7, v8, v3, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 38
    iget v8, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v8, :cond_7

    .line 39
    iget-object v8, p1, Lk9;->x:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 40
    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 41
    iget v7, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v7, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 42
    new-instance v7, LPc;

    iget-object v9, p1, Lk9;->x:Landroid/content/Context;

    invoke-direct {v7, v9, v6}, LPc;-><init>(Landroid/content/Context;I)V

    .line 43
    invoke-virtual {v7}, LPc;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto :goto_3

    .line 44
    :cond_7
    iget-object v7, p1, Lk9;->x:Landroid/content/Context;

    .line 45
    :goto_3
    new-instance v8, Landroid/support/v7/widget/ActionBarContextView;

    .line 46
    invoke-direct {v8, v7, v1}, Landroid/support/v7/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput-object v8, p1, Lk9;->J:Landroid/support/v7/widget/ActionBarContextView;

    .line 48
    new-instance v8, Landroid/widget/PopupWindow;

    const v9, 0x7f040017

    invoke-direct {v8, v7, v1, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v8, p1, Lk9;->K:Landroid/widget/PopupWindow;

    const/4 v9, 0x2

    .line 49
    invoke-static {v8, v9}, Lt8;->a(Landroid/widget/PopupWindow;I)V

    .line 50
    iget-object v8, p1, Lk9;->K:Landroid/widget/PopupWindow;

    iget-object v9, p1, Lk9;->J:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 51
    iget-object v8, p1, Lk9;->K:Landroid/widget/PopupWindow;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 52
    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x7f040003

    invoke-virtual {v8, v9, v3, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 53
    iget v3, v3, Landroid/util/TypedValue;->data:I

    .line 54
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 55
    invoke-static {v3, v7}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v3

    .line 56
    iget-object v7, p1, Lk9;->J:Landroid/support/v7/widget/ActionBarContextView;

    .line 57
    iput v3, v7, LPd;->A:I

    .line 58
    iget-object v3, p1, Lk9;->K:Landroid/widget/PopupWindow;

    const/4 v7, -0x2

    invoke-virtual {v3, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 59
    new-instance v3, LZ8;

    invoke-direct {v3, p1}, LZ8;-><init>(Lk9;)V

    iput-object v3, p1, Lk9;->L:Ljava/lang/Runnable;

    goto :goto_5

    .line 60
    :cond_8
    iget-object v3, p1, Lk9;->P:Landroid/view/ViewGroup;

    const v7, 0x7f0b002c

    .line 61
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/ViewStubCompat;

    if-eqz v3, :cond_b

    .line 62
    invoke-virtual {p1}, Lk9;->i()V

    .line 63
    iget-object v7, p1, Lk9;->C:LB8;

    if-eqz v7, :cond_9

    .line 64
    invoke-virtual {v7}, LB8;->a()Landroid/content/Context;

    move-result-object v7

    goto :goto_4

    :cond_9
    move-object v7, v1

    :goto_4
    if-nez v7, :cond_a

    .line 65
    iget-object v7, p1, Lk9;->x:Landroid/content/Context;

    .line 66
    :cond_a
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 67
    iput-object v7, v3, Landroid/support/v7/widget/ViewStubCompat;->z:Landroid/view/LayoutInflater;

    .line 68
    invoke-virtual {v3}, Landroid/support/v7/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/ActionBarContextView;

    iput-object v3, p1, Lk9;->J:Landroid/support/v7/widget/ActionBarContextView;

    .line 69
    :cond_b
    :goto_5
    iget-object v3, p1, Lk9;->J:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v3, :cond_10

    .line 70
    invoke-virtual {p1}, Lk9;->e()V

    .line 71
    iget-object v3, p1, Lk9;->J:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v3}, Landroid/support/v7/widget/ActionBarContextView;->b()V

    .line 72
    new-instance v3, LQc;

    iget-object v7, p1, Lk9;->J:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p1, Lk9;->J:Landroid/support/v7/widget/ActionBarContextView;

    iget-object v9, p1, Lk9;->K:Landroid/widget/PopupWindow;

    if-nez v9, :cond_c

    goto :goto_6

    :cond_c
    const/4 v5, 0x0

    :goto_6
    invoke-direct {v3, v7, v8, v2, v5}, LQc;-><init>(Landroid/content/Context;Landroid/support/v7/widget/ActionBarContextView;LMc;Z)V

    .line 73
    iget-object v5, v3, LQc;->D:Lqd;

    .line 74
    iget-object v2, v2, Ld9;->a:LMc;

    invoke-interface {v2, v3, v5}, LMc;->a(LNc;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 75
    invoke-virtual {v3}, LQc;->g()V

    .line 76
    iget-object v2, p1, Lk9;->J:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionBarContextView;->a(LNc;)V

    .line 77
    iput-object v3, p1, Lk9;->I:LNc;

    .line 78
    invoke-virtual {p1}, Lk9;->j()Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_d

    .line 79
    iget-object v2, p1, Lk9;->J:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 80
    iget-object v2, p1, Lk9;->J:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v2}, LA7;->a(Landroid/view/View;)LR7;

    move-result-object v2

    invoke-virtual {v2, v3}, LR7;->a(F)LR7;

    iput-object v2, p1, Lk9;->M:LR7;

    .line 81
    new-instance v3, La9;

    invoke-direct {v3, p1}, La9;-><init>(Lk9;)V

    .line 82
    iget-object v4, v2, LR7;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_e

    .line 83
    invoke-virtual {v2, v4, v3}, LR7;->a(Landroid/view/View;LS7;)V

    goto :goto_7

    .line 84
    :cond_d
    iget-object v2, p1, Lk9;->J:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 85
    iget-object v2, p1, Lk9;->J:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v2, v6}, LPd;->setVisibility(I)V

    .line 86
    iget-object v2, p1, Lk9;->J:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 87
    iget-object v2, p1, Lk9;->J:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_e

    .line 88
    iget-object v2, p1, Lk9;->J:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 89
    invoke-virtual {v2}, Landroid/view/View;->requestApplyInsets()V

    .line 90
    :cond_e
    :goto_7
    iget-object v2, p1, Lk9;->K:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_10

    .line 91
    iget-object v2, p1, Lk9;->y:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p1, Lk9;->L:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    .line 92
    :cond_f
    iput-object v1, p1, Lk9;->I:LNc;

    .line 93
    :cond_10
    :goto_8
    iget-object v2, p1, Lk9;->I:LNc;

    if-eqz v2, :cond_11

    iget-object v3, p1, Lk9;->B:LR8;

    if-eqz v3, :cond_11

    .line 94
    invoke-interface {v3, v2}, LR8;->b(LNc;)V

    .line 95
    :cond_11
    iget-object v2, p1, Lk9;->I:LNc;

    .line 96
    iput-object v2, p1, Lk9;->I:LNc;

    .line 97
    :cond_12
    iget-object p1, p1, Lk9;->I:LNc;

    if-eqz p1, :cond_13

    .line 98
    invoke-virtual {v0, p1}, LRc;->b(LNc;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_13
    return-object v1

    .line 99
    :cond_14
    throw v1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le9;->x:Lk9;

    invoke-virtual {v0, p1}, Lk9;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, LYc;->w:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, LYc;->w:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    .line 2
    iget-object v0, p0, Le9;->x:Lk9;

    .line 3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 4
    invoke-virtual {v0}, Lk9;->i()V

    .line 5
    iget-object v4, v0, Lk9;->C:LB8;

    if-eqz v4, :cond_3

    .line 6
    check-cast v4, Lqa;

    .line 7
    iget-object v4, v4, Lqa;->i:Lpa;

    if-nez v4, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    iget-object v4, v4, Lpa;->z:Lqd;

    if-eqz v4, :cond_2

    .line 9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v5

    .line 10
    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v5

    .line 11
    invoke-virtual {v5}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v5

    if-eq v5, v1, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    invoke-interface {v4, v5}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 12
    invoke-interface {v4, v3, p1, v2}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v3

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_3

    goto :goto_3

    .line 13
    :cond_3
    iget-object v3, v0, Lk9;->b0:Li9;

    if-eqz v3, :cond_4

    .line 14
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v0, v3, v4, p1, v1}, Lk9;->a(Li9;ILandroid/view/KeyEvent;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 15
    iget-object p1, v0, Lk9;->b0:Li9;

    if-eqz p1, :cond_5

    .line 16
    iput-boolean v1, p1, Li9;->n:Z

    goto :goto_3

    .line 17
    :cond_4
    iget-object v3, v0, Lk9;->b0:Li9;

    if-nez v3, :cond_6

    .line 18
    invoke-virtual {v0, v2}, Lk9;->d(I)Li9;

    move-result-object v3

    .line 19
    invoke-virtual {v0, v3, p1}, Lk9;->b(Li9;Landroid/view/KeyEvent;)Z

    .line 20
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v0, v3, v4, p1, v1}, Lk9;->a(Li9;ILandroid/view/KeyEvent;I)Z

    move-result p1

    .line 21
    iput-boolean v2, v3, Li9;->m:Z

    if-eqz p1, :cond_6

    :cond_5
    :goto_3
    const/4 p1, 0x1

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    :goto_4
    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    :cond_8
    :goto_5
    return v1
.end method

.method public onContentChanged()V
    .locals 0

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 1
    instance-of v0, p2, Lqd;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, LYc;->w:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2

    .line 1
    iget-object v0, p0, LYc;->w:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 2
    iget-object p2, p0, Le9;->x:Lk9;

    if-eqz p2, :cond_1

    const/16 v0, 0x6c

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p2}, Lk9;->i()V

    .line 4
    iget-object p1, p2, Lk9;->C:LB8;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, v1}, LB8;->a(Z)V

    :cond_0
    return v1

    :cond_1
    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 2

    .line 1
    iget-object v0, p0, LYc;->w:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 2
    iget-object p2, p0, Le9;->x:Lk9;

    if-eqz p2, :cond_2

    const/16 v0, 0x6c

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p2}, Lk9;->i()V

    .line 4
    iget-object p1, p2, Lk9;->C:LB8;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1, v1}, LB8;->a(Z)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 6
    invoke-virtual {p2, p1}, Lk9;->d(I)Li9;

    move-result-object p1

    .line 7
    iget-boolean v0, p1, Li9;->o:Z

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p2, p1, v1}, Lk9;->a(Li9;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 9
    throw p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3

    .line 1
    instance-of v0, p3, Lqd;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lqd;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 2
    iput-boolean v2, v0, Lqd;->U:Z

    .line 3
    :cond_2
    iget-object v2, p0, LYc;->w:Landroid/view/Window$Callback;

    invoke-interface {v2, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    if-eqz v0, :cond_3

    .line 4
    iput-boolean v1, v0, Lqd;->U:Z

    :cond_3
    return p1
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le9;->x:Lk9;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lk9;->d(I)Li9;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Li9;->j:Lqd;

    if-eqz v0, :cond_0

    .line 3
    iget-object p2, p0, LYc;->w:Landroid/view/Window$Callback;

    invoke-interface {p2, p1, v0, p3}, Landroid/view/Window$Callback;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, LYc;->w:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$Callback;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    :goto_0
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Le9;->x:Lk9;

    .line 3
    iget-boolean v0, v0, Lk9;->N:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Le9;->a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, LYc;->w:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    .line 6
    iget-object v0, p0, Le9;->x:Lk9;

    .line 7
    iget-boolean v0, v0, Lk9;->N:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Le9;->a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, LYc;->w:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

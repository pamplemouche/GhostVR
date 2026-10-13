.class public Lk9;
.super LS8;
.source "PG"

# interfaces
.implements Lod;
.implements Landroid/view/LayoutInflater$Factory2;


# static fields
.field public static final o0:[I

.field public static p0:Z


# instance fields
.field public final A:Landroid/view/Window$Callback;

.field public final B:LR8;

.field public C:LB8;

.field public D:Landroid/view/MenuInflater;

.field public E:Ljava/lang/CharSequence;

.field public F:LYe;

.field public G:Lb9;

.field public H:Lj9;

.field public I:LNc;

.field public J:Landroid/support/v7/widget/ActionBarContextView;

.field public K:Landroid/widget/PopupWindow;

.field public L:Ljava/lang/Runnable;

.field public M:LR7;

.field public N:Z

.field public O:Z

.field public P:Landroid/view/ViewGroup;

.field public Q:Landroid/widget/TextView;

.field public R:Landroid/view/View;

.field public S:Z

.field public T:Z

.field public U:Z

.field public V:Z

.field public W:Z

.field public X:Z

.field public Y:Z

.field public Z:Z

.field public a0:[Li9;

.field public b0:Li9;

.field public c0:Z

.field public d0:Z

.field public e0:I

.field public f0:Z

.field public g0:Lg9;

.field public h0:Z

.field public i0:I

.field public final j0:Ljava/lang/Runnable;

.field public k0:Z

.field public l0:Landroid/graphics/Rect;

.field public m0:Landroid/graphics/Rect;

.field public n0:Landroid/support/v7/app/AppCompatViewInflater;

.field public final x:Landroid/content/Context;

.field public final y:Landroid/view/Window;

.field public final z:Landroid/view/Window$Callback;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x1010054

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 1
    sput-object v1, Lk9;->o0:[I

    if-eqz v3, :cond_0

    .line 2
    sget-boolean v1, Lk9;->p0:Z

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 4
    new-instance v2, LT8;

    invoke-direct {v2, v1}, LT8;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 5
    sput-boolean v0, Lk9;->p0:Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;LR8;)V
    .locals 3

    .line 1
    invoke-direct {p0}, LS8;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lk9;->M:LR7;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lk9;->N:Z

    const/16 v2, -0x64

    .line 4
    iput v2, p0, Lk9;->e0:I

    .line 5
    new-instance v2, LU8;

    invoke-direct {v2, p0}, LU8;-><init>(Lk9;)V

    iput-object v2, p0, Lk9;->j0:Ljava/lang/Runnable;

    .line 6
    iput-object p1, p0, Lk9;->x:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lk9;->y:Landroid/view/Window;

    .line 8
    iput-object p3, p0, Lk9;->B:LR8;

    .line 9
    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p2

    iput-object p2, p0, Lk9;->z:Landroid/view/Window$Callback;

    .line 10
    instance-of p3, p2, Le9;

    if-nez p3, :cond_2

    .line 11
    new-instance p3, Le9;

    invoke-direct {p3, p0, p2}, Le9;-><init>(Lk9;Landroid/view/Window$Callback;)V

    iput-object p3, p0, Lk9;->A:Landroid/view/Window$Callback;

    .line 12
    iget-object p2, p0, Lk9;->y:Landroid/view/Window;

    invoke-virtual {p2, p3}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 13
    sget-object p2, Lk9;->o0:[I

    .line 14
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x0

    .line 15
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 16
    invoke-virtual {p2, p3, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_0

    .line 17
    invoke-static {}, Lye;->a()Lye;

    move-result-object v0

    invoke-virtual {v0, p1, p3, v1}, Lye;->a(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 18
    iget-object p1, p0, Lk9;->y:Landroid/view/Window;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 19
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 20
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "AppCompat has already installed itself into the Window"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Landroid/view/Menu;)Li9;
    .locals 5

    .line 201
    iget-object v0, p0, Lk9;->a0:[Li9;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 202
    array-length v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 203
    aget-object v3, v0, v1

    if-eqz v3, :cond_1

    .line 204
    iget-object v4, v3, Li9;->j:Lqd;

    if-ne v4, p1, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(ILi9;Landroid/view/Menu;)V
    .locals 2

    if-nez p3, :cond_1

    if-nez p2, :cond_0

    if-ltz p1, :cond_0

    .line 195
    iget-object v0, p0, Lk9;->a0:[Li9;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 196
    aget-object p2, v0, p1

    :cond_0
    if-eqz p2, :cond_1

    .line 197
    iget-object p3, p2, Li9;->j:Lqd;

    :cond_1
    if-eqz p2, :cond_2

    .line 198
    iget-boolean p2, p2, Li9;->o:Z

    if-nez p2, :cond_2

    return-void

    .line 199
    :cond_2
    iget-boolean p2, p0, Lk9;->d0:Z

    if-nez p2, :cond_3

    .line 200
    iget-object p2, p0, Lk9;->z:Landroid/view/Window$Callback;

    invoke-interface {p2, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_3
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lk9;->z:Landroid/view/Window$Callback;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 2
    :try_start_0
    check-cast v0, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    :try_start_1
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v0, v2}, LB3;->b(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    nop

    :goto_0
    if-eqz v1, :cond_1

    .line 5
    iget-object v0, p0, Lk9;->C:LB8;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 6
    iput-boolean v1, p0, Lk9;->k0:Z

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v0, v1}, LB8;->b(Z)V

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 8
    iget v0, p0, Lk9;->e0:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_2

    const-string v0, "appcompat:local_night_mode"

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lk9;->e0:I

    :cond_2
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .line 10
    invoke-virtual {p0}, Lk9;->g()V

    .line 11
    iget-object v0, p0, Lk9;->P:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 12
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 13
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 14
    iget-object p1, p0, Lk9;->z:Landroid/view/Window$Callback;

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 15
    invoke-virtual {p0}, Lk9;->g()V

    .line 16
    iget-object v0, p0, Lk9;->P:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 17
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 18
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    iget-object p1, p0, Lk9;->z:Landroid/view/Window$Callback;

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final a(Li9;Landroid/view/KeyEvent;)V
    .locals 12

    .line 80
    iget-boolean v0, p1, Li9;->o:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lk9;->d0:Z

    if-eqz v0, :cond_0

    goto/16 :goto_d

    .line 81
    :cond_0
    iget v0, p1, Li9;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 82
    iget-object v0, p0, Lk9;->x:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 83
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return-void

    .line 84
    :cond_2
    invoke-virtual {p0}, Lk9;->h()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 85
    iget v3, p1, Li9;->a:I

    iget-object v4, p1, Li9;->j:Lqd;

    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 86
    invoke-virtual {p0, p1, v1}, Lk9;->a(Li9;Z)V

    return-void

    .line 87
    :cond_3
    iget-object v0, p0, Lk9;->x:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_4

    return-void

    .line 88
    :cond_4
    invoke-virtual {p0, p1, p2}, Lk9;->b(Li9;Landroid/view/KeyEvent;)Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    .line 89
    :cond_5
    iget-object p2, p1, Li9;->g:Landroid/view/ViewGroup;

    const/4 v3, -0x2

    const/4 v4, -0x1

    if-eqz p2, :cond_7

    iget-boolean p2, p1, Li9;->q:Z

    if-eqz p2, :cond_6

    goto :goto_1

    .line 90
    :cond_6
    iget-object p2, p1, Li9;->i:Landroid/view/View;

    if-eqz p2, :cond_1c

    .line 91
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_1c

    .line 92
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne p2, v4, :cond_1c

    const/4 v5, -0x1

    goto/16 :goto_c

    .line 93
    :cond_7
    :goto_1
    iget-object p2, p1, Li9;->g:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    if-nez p2, :cond_c

    .line 94
    invoke-virtual {p0}, Lk9;->i()V

    .line 95
    iget-object p2, p0, Lk9;->C:LB8;

    if-eqz p2, :cond_8

    .line 96
    invoke-virtual {p2}, LB8;->a()Landroid/content/Context;

    move-result-object p2

    goto :goto_2

    :cond_8
    move-object p2, v4

    :goto_2
    if-nez p2, :cond_9

    .line 97
    iget-object p2, p0, Lk9;->x:Landroid/content/Context;

    .line 98
    :cond_9
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 99
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    .line 100
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    const v7, 0x7f040002

    .line 101
    invoke-virtual {v6, v7, v5, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 102
    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_a

    .line 103
    invoke-virtual {v6, v7, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_a
    const v7, 0x7f0401a9

    .line 104
    invoke-virtual {v6, v7, v5, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 105
    iget v5, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_b

    .line 106
    invoke-virtual {v6, v5, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_3

    :cond_b
    const v5, 0x7f14022a

    .line 107
    invoke-virtual {v6, v5, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 108
    :goto_3
    new-instance v5, LPc;

    invoke-direct {v5, p2, v2}, LPc;-><init>(Landroid/content/Context;I)V

    .line 109
    invoke-virtual {v5}, LPc;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 110
    iput-object v5, p1, Li9;->l:Landroid/content/Context;

    .line 111
    sget-object p2, LeS;->r:[I

    invoke-virtual {v5, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/16 v5, 0x50

    .line 112
    invoke-virtual {p2, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p1, Li9;->b:I

    .line 113
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p1, Li9;->f:I

    .line 114
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    new-instance p2, Lh9;

    iget-object v5, p1, Li9;->l:Landroid/content/Context;

    invoke-direct {p2, p0, v5}, Lh9;-><init>(Lk9;Landroid/content/Context;)V

    iput-object p2, p1, Li9;->g:Landroid/view/ViewGroup;

    const/16 p2, 0x51

    .line 116
    iput p2, p1, Li9;->c:I

    goto :goto_4

    .line 117
    :cond_c
    iget-boolean v5, p1, Li9;->q:Z

    if-eqz v5, :cond_d

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_d

    .line 118
    iget-object p2, p1, Li9;->g:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 119
    :cond_d
    :goto_4
    iget-object p2, p1, Li9;->i:Landroid/view/View;

    if-eqz p2, :cond_e

    .line 120
    iput-object p2, p1, Li9;->h:Landroid/view/View;

    goto :goto_6

    .line 121
    :cond_e
    iget-object p2, p1, Li9;->j:Lqd;

    if-nez p2, :cond_f

    goto :goto_7

    .line 122
    :cond_f
    iget-object p2, p0, Lk9;->H:Lj9;

    if-nez p2, :cond_10

    .line 123
    new-instance p2, Lj9;

    invoke-direct {p2, p0}, Lj9;-><init>(Lk9;)V

    iput-object p2, p0, Lk9;->H:Lj9;

    .line 124
    :cond_10
    iget-object p2, p0, Lk9;->H:Lj9;

    .line 125
    iget-object v5, p1, Li9;->j:Lqd;

    if-nez v5, :cond_11

    goto :goto_5

    .line 126
    :cond_11
    iget-object v4, p1, Li9;->k:Lmd;

    if-nez v4, :cond_12

    .line 127
    new-instance v4, Lmd;

    iget-object v5, p1, Li9;->l:Landroid/content/Context;

    const v6, 0x7f0e0010

    invoke-direct {v4, v5, v6}, Lmd;-><init>(Landroid/content/Context;I)V

    iput-object v4, p1, Li9;->k:Lmd;

    .line 128
    iput-object p2, v4, Lmd;->D:LEd;

    .line 129
    iget-object p2, p1, Li9;->j:Lqd;

    .line 130
    iget-object v5, p2, Lqd;->w:Landroid/content/Context;

    invoke-virtual {p2, v4, v5}, Lqd;->a(LFd;Landroid/content/Context;)V

    .line 131
    :cond_12
    iget-object p2, p1, Li9;->k:Lmd;

    iget-object v4, p1, Li9;->g:Landroid/view/ViewGroup;

    .line 132
    iget-object v5, p2, Lmd;->z:Landroid/support/v7/view/menu/ExpandedMenuView;

    if-nez v5, :cond_14

    .line 133
    iget-object v5, p2, Lmd;->x:Landroid/view/LayoutInflater;

    const v6, 0x7f0e000d

    invoke-virtual {v5, v6, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/ExpandedMenuView;

    iput-object v4, p2, Lmd;->z:Landroid/support/v7/view/menu/ExpandedMenuView;

    .line 134
    iget-object v4, p2, Lmd;->E:Lld;

    if-nez v4, :cond_13

    .line 135
    new-instance v4, Lld;

    invoke-direct {v4, p2}, Lld;-><init>(Lmd;)V

    iput-object v4, p2, Lmd;->E:Lld;

    .line 136
    :cond_13
    iget-object v4, p2, Lmd;->z:Landroid/support/v7/view/menu/ExpandedMenuView;

    iget-object v5, p2, Lmd;->E:Lld;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    iget-object v4, p2, Lmd;->z:Landroid/support/v7/view/menu/ExpandedMenuView;

    invoke-virtual {v4, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 138
    :cond_14
    iget-object v4, p2, Lmd;->z:Landroid/support/v7/view/menu/ExpandedMenuView;

    .line 139
    :goto_5
    iput-object v4, p1, Li9;->h:Landroid/view/View;

    if-eqz v4, :cond_15

    :goto_6
    const/4 p2, 0x1

    goto :goto_8

    :cond_15
    :goto_7
    const/4 p2, 0x0

    :goto_8
    if-eqz p2, :cond_1d

    .line 140
    iget-object p2, p1, Li9;->h:Landroid/view/View;

    if-nez p2, :cond_16

    goto :goto_a

    .line 141
    :cond_16
    iget-object p2, p1, Li9;->i:Landroid/view/View;

    if-eqz p2, :cond_17

    goto :goto_9

    .line 142
    :cond_17
    iget-object p2, p1, Li9;->k:Lmd;

    invoke-virtual {p2}, Lmd;->a()Landroid/widget/ListAdapter;

    move-result-object p2

    invoke-interface {p2}, Landroid/widget/ListAdapter;->getCount()I

    move-result p2

    if-lez p2, :cond_18

    :goto_9
    const/4 p2, 0x1

    goto :goto_b

    :cond_18
    :goto_a
    const/4 p2, 0x0

    :goto_b
    if-nez p2, :cond_19

    goto :goto_d

    .line 143
    :cond_19
    iget-object p2, p1, Li9;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_1a

    .line 144
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 145
    :cond_1a
    iget v4, p1, Li9;->b:I

    .line 146
    iget-object v5, p1, Li9;->g:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 147
    iget-object v4, p1, Li9;->h:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1b

    .line 148
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1b

    .line 149
    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p1, Li9;->h:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 150
    :cond_1b
    iget-object v4, p1, Li9;->g:Landroid/view/ViewGroup;

    iget-object v5, p1, Li9;->h:Landroid/view/View;

    invoke-virtual {v4, v5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    iget-object p2, p1, Li9;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_1c

    .line 152
    iget-object p2, p1, Li9;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    :cond_1c
    const/4 v5, -0x2

    .line 153
    :goto_c
    iput-boolean v2, p1, Li9;->n:Z

    .line 154
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    const/4 v6, -0x2

    iget v7, p1, Li9;->d:I

    iget v8, p1, Li9;->e:I

    const/16 v9, 0x3ea

    const/high16 v10, 0x820000

    const/4 v11, -0x3

    move-object v4, p2

    invoke-direct/range {v4 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 155
    iget v2, p1, Li9;->c:I

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 156
    iget v2, p1, Li9;->f:I

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 157
    iget-object v2, p1, Li9;->g:Landroid/view/ViewGroup;

    invoke-interface {v0, v2, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iput-boolean v1, p1, Li9;->o:Z

    :cond_1d
    :goto_d
    return-void
.end method

.method public a(Li9;Z)V
    .locals 3

    if-eqz p2, :cond_0

    .line 181
    iget v0, p1, Li9;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lk9;->F:LYe;

    if-eqz v0, :cond_0

    .line 182
    invoke-interface {v0}, LYe;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object p1, p1, Li9;->j:Lqd;

    invoke-virtual {p0, p1}, Lk9;->b(Lqd;)V

    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lk9;->x:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 185
    iget-boolean v2, p1, Li9;->o:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Li9;->g:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 186
    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_1

    .line 187
    iget p2, p1, Li9;->a:I

    invoke-virtual {p0, p2, p1, v1}, Lk9;->a(ILi9;Landroid/view/Menu;)V

    :cond_1
    const/4 p2, 0x0

    .line 188
    iput-boolean p2, p1, Li9;->m:Z

    .line 189
    iput-boolean p2, p1, Li9;->n:Z

    .line 190
    iput-boolean p2, p1, Li9;->o:Z

    .line 191
    iput-object v1, p1, Li9;->h:Landroid/view/View;

    const/4 p2, 0x1

    .line 192
    iput-boolean p2, p1, Li9;->q:Z

    .line 193
    iget-object p2, p0, Lk9;->b0:Li9;

    if-ne p2, p1, :cond_2

    .line 194
    iput-object v1, p0, Lk9;->b0:Li9;

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 20
    iput-object p1, p0, Lk9;->E:Ljava/lang/CharSequence;

    .line 21
    iget-object v0, p0, Lk9;->F:LYe;

    if-eqz v0, :cond_0

    .line 22
    invoke-interface {v0, p1}, LYe;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lk9;->C:LB8;

    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {v0, p1}, LB8;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Lk9;->Q:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 26
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lqd;)V
    .locals 5

    .line 159
    iget-object p1, p0, Lk9;->F:LYe;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, LYe;->g()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lk9;->x:Landroid/content/Context;

    .line 160
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lk9;->F:LYe;

    .line 161
    invoke-interface {p1}, LYe;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 162
    :cond_0
    invoke-virtual {p0}, Lk9;->h()Landroid/view/Window$Callback;

    move-result-object p1

    .line 163
    iget-object v2, p0, Lk9;->F:LYe;

    invoke-interface {v2}, LYe;->a()Z

    move-result v2

    const/16 v3, 0x6c

    if-eqz v2, :cond_1

    .line 164
    iget-object v0, p0, Lk9;->F:LYe;

    invoke-interface {v0}, LYe;->e()Z

    .line 165
    iget-boolean v0, p0, Lk9;->d0:Z

    if-nez v0, :cond_4

    .line 166
    invoke-virtual {p0, v1}, Lk9;->d(I)Li9;

    move-result-object v0

    .line 167
    iget-object v0, v0, Li9;->j:Lqd;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_4

    .line 168
    iget-boolean v2, p0, Lk9;->d0:Z

    if-nez v2, :cond_4

    .line 169
    iget-boolean v2, p0, Lk9;->h0:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lk9;->i0:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lk9;->y:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lk9;->j0:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 171
    iget-object v0, p0, Lk9;->j0:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 172
    :cond_2
    invoke-virtual {p0, v1}, Lk9;->d(I)Li9;

    move-result-object v0

    .line 173
    iget-object v2, v0, Li9;->j:Lqd;

    if-eqz v2, :cond_4

    iget-boolean v4, v0, Li9;->r:Z

    if-nez v4, :cond_4

    iget-object v4, v0, Li9;->i:Landroid/view/View;

    .line 174
    invoke-interface {p1, v1, v4, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 175
    iget-object v0, v0, Li9;->j:Lqd;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 176
    iget-object p1, p0, Lk9;->F:LYe;

    invoke-interface {p1}, LYe;->f()Z

    goto :goto_0

    .line 177
    :cond_3
    invoke-virtual {p0, v1}, Lk9;->d(I)Li9;

    move-result-object p1

    .line 178
    iput-boolean v0, p1, Li9;->q:Z

    .line 179
    invoke-virtual {p0, p1, v1}, Lk9;->a(Li9;Z)V

    const/4 v0, 0x0

    .line 180
    invoke-virtual {p0, p1, v0}, Lk9;->a(Li9;Landroid/view/KeyEvent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public a()Z
    .locals 11

    .line 228
    iget v0, p0, Lk9;->e0:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    sget v0, LS8;->w:I

    :goto_0
    const/4 v2, 0x2

    const/16 v3, 0x17

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_2

    .line 230
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_2

    .line 231
    iget-object v1, p0, Lk9;->x:Landroid/content/Context;

    const-class v6, Landroid/app/UiModeManager;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    .line 232
    invoke-virtual {v1}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 233
    :cond_2
    invoke-virtual {p0}, Lk9;->f()V

    .line 234
    iget-object v1, p0, Lk9;->g0:Lg9;

    .line 235
    iget-object v6, v1, Lg9;->a:Lla;

    invoke-virtual {v6}, Lla;->a()Z

    move-result v6

    iput-boolean v6, v1, Lg9;->b:Z

    if-eqz v6, :cond_3

    const/4 v1, 0x2

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, -0x1

    :goto_2
    const/4 v6, 0x0

    if-eq v1, v4, :cond_15

    .line 236
    iget-object v4, p0, Lk9;->x:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 237
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    .line 238
    iget v8, v7, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v8, v8, 0x30

    if-ne v1, v2, :cond_5

    const/16 v1, 0x20

    goto :goto_3

    :cond_5
    const/16 v1, 0x10

    :goto_3
    if-eq v8, v1, :cond_15

    .line 239
    iget-boolean v2, p0, Lk9;->f0:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lk9;->x:Landroid/content/Context;

    instance-of v8, v2, Landroid/app/Activity;

    if-eqz v8, :cond_6

    .line 240
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 241
    :try_start_0
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, p0, Lk9;->x:Landroid/content/Context;

    iget-object v10, p0, Lk9;->x:Landroid/content/Context;

    .line 242
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 243
    invoke-virtual {v2, v8, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 244
    iget v2, v2, Landroid/content/pm/ActivityInfo;->configChanges:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_6

    :catch_0
    const/4 v6, 0x1

    :cond_6
    if-eqz v6, :cond_7

    .line 245
    iget-object v1, p0, Lk9;->x:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    .line 246
    invoke-virtual {v1}, Landroid/app/Activity;->recreate()V

    goto/16 :goto_c

    .line 247
    :cond_7
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2, v7}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 248
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 249
    iget v7, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, -0x31

    or-int/2addr v1, v7

    iput v1, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 250
    invoke-virtual {v4, v2, v6}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 251
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_14

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_8

    goto/16 :goto_c

    :cond_8
    const/16 v2, 0x18

    const-string v6, "mDrawableCache"

    const/4 v7, 0x0

    const-string v8, "ResourcesFlusher"

    if-lt v1, v2, :cond_e

    .line 252
    sget-boolean v1, Lia;->h:Z

    if-nez v1, :cond_9

    .line 253
    :try_start_1
    const-class v1, Landroid/content/res/Resources;

    const-string v2, "mResourcesImpl"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lia;->g:Ljava/lang/reflect/Field;

    .line 254
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    const-string v2, "Could not retrieve Resources#mResourcesImpl field"

    .line 255
    invoke-static {v8, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    :goto_4
    sput-boolean v5, Lia;->h:Z

    .line 257
    :cond_9
    sget-object v1, Lia;->g:Ljava/lang/reflect/Field;

    if-nez v1, :cond_a

    goto/16 :goto_c

    .line 258
    :cond_a
    :try_start_2
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v1

    const-string v2, "Could not retrieve value from Resources#mResourcesImpl"

    .line 259
    invoke-static {v8, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v7

    :goto_5
    if-nez v1, :cond_b

    goto/16 :goto_c

    .line 260
    :cond_b
    sget-boolean v2, Lia;->b:Z

    if-nez v2, :cond_c

    .line 261
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lia;->a:Ljava/lang/reflect/Field;

    .line 262
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    move-exception v2

    const-string v3, "Could not retrieve ResourcesImpl#mDrawableCache field"

    .line 263
    invoke-static {v8, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    :goto_6
    sput-boolean v5, Lia;->b:Z

    .line 265
    :cond_c
    sget-object v2, Lia;->a:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_d

    .line 266
    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_7

    :catch_4
    move-exception v1

    const-string v2, "Could not retrieve value from ResourcesImpl#mDrawableCache"

    .line 267
    invoke-static {v8, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    :goto_7
    if-eqz v7, :cond_14

    .line 268
    invoke-static {v7}, Lia;->a(Ljava/lang/Object;)V

    goto :goto_c

    :cond_e
    const-string v2, "Could not retrieve Resources#mDrawableCache field"

    const-string v9, "Could not retrieve value from Resources#mDrawableCache"

    if-lt v1, v3, :cond_12

    .line 269
    sget-boolean v1, Lia;->b:Z

    if-nez v1, :cond_f

    .line 270
    :try_start_5
    const-class v1, Landroid/content/res/Resources;

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lia;->a:Ljava/lang/reflect/Field;

    .line 271
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_8

    :catch_5
    move-exception v1

    .line 272
    invoke-static {v8, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    :goto_8
    sput-boolean v5, Lia;->b:Z

    .line 274
    :cond_f
    sget-object v1, Lia;->a:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_10

    .line 275
    :try_start_6
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_9

    :catch_6
    move-exception v1

    .line 276
    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_9
    if-nez v7, :cond_11

    goto :goto_c

    .line 277
    :cond_11
    invoke-static {v7}, Lia;->a(Ljava/lang/Object;)V

    goto :goto_c

    .line 278
    :cond_12
    sget-boolean v1, Lia;->b:Z

    if-nez v1, :cond_13

    .line 279
    :try_start_7
    const-class v1, Landroid/content/res/Resources;

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lia;->a:Ljava/lang/reflect/Field;

    .line 280
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_a

    :catch_7
    move-exception v1

    .line 281
    invoke-static {v8, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    :goto_a
    sput-boolean v5, Lia;->b:Z

    .line 283
    :cond_13
    sget-object v1, Lia;->a:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_14

    .line 284
    :try_start_8
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_b

    :catch_8
    move-exception v1

    .line 285
    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v7

    :goto_b
    if-eqz v1, :cond_14

    .line 286
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_14
    :goto_c
    const/4 v6, 0x1

    :cond_15
    if-nez v0, :cond_18

    .line 287
    invoke-virtual {p0}, Lk9;->f()V

    .line 288
    iget-object v0, p0, Lk9;->g0:Lg9;

    .line 289
    invoke-virtual {v0}, Lg9;->a()V

    .line 290
    iget-object v1, v0, Lg9;->c:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_16

    .line 291
    new-instance v1, Lf9;

    invoke-direct {v1, v0}, Lf9;-><init>(Lg9;)V

    iput-object v1, v0, Lg9;->c:Landroid/content/BroadcastReceiver;

    .line 292
    :cond_16
    iget-object v1, v0, Lg9;->d:Landroid/content/IntentFilter;

    if-nez v1, :cond_17

    .line 293
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, v0, Lg9;->d:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIME_SET"

    .line 294
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    iget-object v1, v0, Lg9;->d:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    iget-object v1, v0, Lg9;->d:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    :cond_17
    iget-object v1, v0, Lg9;->e:Lk9;

    iget-object v1, v1, Lk9;->x:Landroid/content/Context;

    iget-object v2, v0, Lg9;->c:Landroid/content/BroadcastReceiver;

    iget-object v0, v0, Lg9;->d:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 298
    :cond_18
    iput-boolean v5, p0, Lk9;->f0:Z

    return v6
.end method

.method public a(I)Z
    .locals 5

    const/16 v0, 0x8

    const-string v1, "AppCompatDelegate"

    const/16 v2, 0x6d

    const/16 v3, 0x6c

    if-ne p1, v0, :cond_0

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    .line 210
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6c

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    .line 211
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6d

    .line 212
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lk9;->Y:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-ne p1, v3, :cond_2

    return v1

    .line 213
    :cond_2
    iget-boolean v0, p0, Lk9;->U:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    if-ne p1, v4, :cond_3

    .line 214
    iput-boolean v1, p0, Lk9;->U:Z

    :cond_3
    if-eq p1, v4, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x5

    if-eq p1, v0, :cond_7

    const/16 v0, 0xa

    if-eq p1, v0, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    .line 215
    iget-object v0, p0, Lk9;->y:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result p1

    return p1

    .line 216
    :cond_4
    invoke-virtual {p0}, Lk9;->k()V

    .line 217
    iput-boolean v4, p0, Lk9;->V:Z

    return v4

    .line 218
    :cond_5
    invoke-virtual {p0}, Lk9;->k()V

    .line 219
    iput-boolean v4, p0, Lk9;->U:Z

    return v4

    .line 220
    :cond_6
    invoke-virtual {p0}, Lk9;->k()V

    .line 221
    iput-boolean v4, p0, Lk9;->W:Z

    return v4

    .line 222
    :cond_7
    invoke-virtual {p0}, Lk9;->k()V

    .line 223
    iput-boolean v4, p0, Lk9;->T:Z

    return v4

    .line 224
    :cond_8
    invoke-virtual {p0}, Lk9;->k()V

    .line 225
    iput-boolean v4, p0, Lk9;->S:Z

    return v4

    .line 226
    :cond_9
    invoke-virtual {p0}, Lk9;->k()V

    .line 227
    iput-boolean v4, p0, Lk9;->Y:Z

    return v4
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 31
    iget-object v0, p0, Lk9;->z:Landroid/view/Window$Callback;

    instance-of v1, v0, Ln7;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    instance-of v0, v0, Lm9;

    if-eqz v0, :cond_1

    .line 32
    :cond_0
    iget-object v0, p0, Lk9;->y:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 33
    invoke-static {v0, p1}, LA7;->b(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 34
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_2

    .line 35
    iget-object v0, p0, Lk9;->z:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 36
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 37
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x4

    if-eqz v3, :cond_8

    if-eq v0, v5, :cond_5

    if-eq v0, v1, :cond_4

    goto :goto_2

    .line 38
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1a

    .line 39
    invoke-virtual {p0, v4}, Lk9;->d(I)Li9;

    move-result-object v0

    .line 40
    iget-boolean v1, v0, Li9;->o:Z

    if-nez v1, :cond_1a

    .line 41
    invoke-virtual {p0, v0, p1}, Lk9;->b(Li9;Landroid/view/KeyEvent;)Z

    goto/16 :goto_b

    .line 42
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lk9;->c0:Z

    :cond_7
    :goto_2
    const/4 v2, 0x0

    goto/16 :goto_b

    :cond_8
    if-eq v0, v5, :cond_12

    if-eq v0, v1, :cond_9

    goto :goto_2

    .line 43
    :cond_9
    iget-object v0, p0, Lk9;->I:LNc;

    if-eqz v0, :cond_a

    goto/16 :goto_b

    .line 44
    :cond_a
    invoke-virtual {p0, v4}, Lk9;->d(I)Li9;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lk9;->F:LYe;

    if-eqz v1, :cond_c

    .line 46
    invoke-interface {v1}, LYe;->g()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lk9;->x:Landroid/content/Context;

    .line 47
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-nez v1, :cond_c

    .line 48
    iget-object v1, p0, Lk9;->F:LYe;

    invoke-interface {v1}, LYe;->a()Z

    move-result v1

    if-nez v1, :cond_b

    .line 49
    iget-boolean v1, p0, Lk9;->d0:Z

    if-nez v1, :cond_f

    invoke-virtual {p0, v0, p1}, Lk9;->b(Li9;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 50
    iget-object p1, p0, Lk9;->F:LYe;

    invoke-interface {p1}, LYe;->f()Z

    move-result p1

    goto :goto_5

    .line 51
    :cond_b
    iget-object p1, p0, Lk9;->F:LYe;

    invoke-interface {p1}, LYe;->e()Z

    move-result p1

    goto :goto_5

    .line 52
    :cond_c
    iget-boolean v1, v0, Li9;->o:Z

    if-nez v1, :cond_10

    iget-boolean v1, v0, Li9;->n:Z

    if-eqz v1, :cond_d

    goto :goto_4

    .line 53
    :cond_d
    iget-boolean v1, v0, Li9;->m:Z

    if-eqz v1, :cond_f

    .line 54
    iget-boolean v1, v0, Li9;->r:Z

    if-eqz v1, :cond_e

    .line 55
    iput-boolean v4, v0, Li9;->m:Z

    .line 56
    invoke-virtual {p0, v0, p1}, Lk9;->b(Li9;Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_3

    :cond_e
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_f

    .line 57
    invoke-virtual {p0, v0, p1}, Lk9;->a(Li9;Landroid/view/KeyEvent;)V

    const/4 p1, 0x1

    goto :goto_5

    :cond_f
    const/4 p1, 0x0

    goto :goto_5

    .line 58
    :cond_10
    :goto_4
    iget-boolean p1, v0, Li9;->o:Z

    .line 59
    invoke-virtual {p0, v0, v2}, Lk9;->a(Li9;Z)V

    :goto_5
    if-eqz p1, :cond_1a

    .line 60
    iget-object p1, p0, Lk9;->x:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_11

    .line 61
    invoke-virtual {p1, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_b

    :cond_11
    const-string p1, "AppCompatDelegate"

    const-string v0, "Couldn\'t get audio manager"

    .line 62
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 63
    :cond_12
    iget-boolean p1, p0, Lk9;->c0:Z

    .line 64
    iput-boolean v4, p0, Lk9;->c0:Z

    .line 65
    invoke-virtual {p0, v4}, Lk9;->d(I)Li9;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 66
    iget-boolean v1, v0, Li9;->o:Z

    if-eqz v1, :cond_13

    if-nez p1, :cond_1a

    .line 67
    invoke-virtual {p0, v0, v2}, Lk9;->a(Li9;Z)V

    goto :goto_b

    .line 68
    :cond_13
    iget-object p1, p0, Lk9;->I:LNc;

    if-eqz p1, :cond_14

    .line 69
    invoke-virtual {p1}, LNc;->a()V

    goto :goto_9

    .line 70
    :cond_14
    invoke-virtual {p0}, Lk9;->i()V

    .line 71
    iget-object p1, p0, Lk9;->C:LB8;

    if-eqz p1, :cond_19

    .line 72
    check-cast p1, Lqa;

    .line 73
    iget-object v0, p1, Lqa;->e:LZe;

    if-eqz v0, :cond_18

    check-cast v0, LXh;

    .line 74
    iget-object v0, v0, LXh;->a:Landroid/support/v7/widget/Toolbar;

    .line 75
    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->j0:LRh;

    if-eqz v0, :cond_15

    iget-object v0, v0, LRh;->x:Ltd;

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_6

    :cond_15
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_18

    .line 76
    iget-object p1, p1, Lqa;->e:LZe;

    check-cast p1, LXh;

    .line 77
    iget-object p1, p1, LXh;->a:Landroid/support/v7/widget/Toolbar;

    .line 78
    iget-object p1, p1, Landroid/support/v7/widget/Toolbar;->j0:LRh;

    if-nez p1, :cond_16

    const/4 p1, 0x0

    goto :goto_7

    :cond_16
    iget-object p1, p1, LRh;->x:Ltd;

    :goto_7
    if-eqz p1, :cond_17

    .line 79
    invoke-virtual {p1}, Ltd;->collapseActionView()Z

    :cond_17
    const/4 p1, 0x1

    goto :goto_8

    :cond_18
    const/4 p1, 0x0

    :goto_8
    if-eqz p1, :cond_19

    :goto_9
    const/4 p1, 0x1

    goto :goto_a

    :cond_19
    const/4 p1, 0x0

    :goto_a
    if-eqz p1, :cond_7

    :cond_1a
    :goto_b
    return v2
.end method

.method public final a(Li9;ILandroid/view/KeyEvent;I)Z
    .locals 2

    .line 205
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 206
    :cond_0
    iget-boolean v0, p1, Li9;->m:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p3}, Lk9;->b(Li9;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p1, Li9;->j:Lqd;

    if-eqz v0, :cond_2

    .line 207
    invoke-virtual {v0, p2, p3, p4}, Lqd;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_2
    if-eqz v1, :cond_3

    const/4 p2, 0x1

    and-int/lit8 p3, p4, 0x1

    if-nez p3, :cond_3

    .line 208
    iget-object p3, p0, Lk9;->F:LYe;

    if-nez p3, :cond_3

    .line 209
    invoke-virtual {p0, p1, p2}, Lk9;->a(Li9;Z)V

    :cond_3
    return v1
.end method

.method public a(Lqd;Landroid/view/MenuItem;)Z
    .locals 2

    .line 27
    invoke-virtual {p0}, Lk9;->h()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    iget-boolean v1, p0, Lk9;->d0:Z

    if-nez v1, :cond_0

    .line 29
    invoke-virtual {p1}, Lqd;->c()Lqd;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk9;->a(Landroid/view/Menu;)Li9;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 30
    iget p1, p1, Li9;->a:I

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 2

    .line 6
    iget-object v0, p0, Lk9;->x:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    .line 8
    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    instance-of v0, v0, Lk9;

    if-nez v0, :cond_1

    const-string v0, "AppCompatDelegate"

    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk9;->g()V

    .line 2
    iget-object v0, p0, Lk9;->P:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    iget-object v1, p0, Lk9;->x:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    iget-object p1, p0, Lk9;->z:Landroid/view/Window$Callback;

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public b(Lqd;)V
    .locals 2

    .line 70
    iget-boolean v0, p0, Lk9;->Z:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lk9;->Z:Z

    .line 72
    iget-object v0, p0, Lk9;->F:LYe;

    invoke-interface {v0}, LYe;->b()V

    .line 73
    invoke-virtual {p0}, Lk9;->h()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 74
    iget-boolean v1, p0, Lk9;->d0:Z

    if-nez v1, :cond_1

    const/16 v1, 0x6c

    .line 75
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 p1, 0x0

    .line 76
    iput-boolean p1, p0, Lk9;->Z:Z

    return-void
.end method

.method public final b(Li9;Landroid/view/KeyEvent;)Z
    .locals 11

    .line 11
    iget-boolean v0, p0, Lk9;->d0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 12
    :cond_0
    iget-boolean v0, p1, Li9;->m:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 13
    :cond_1
    iget-object v0, p0, Lk9;->b0:Li9;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    .line 14
    invoke-virtual {p0, v0, v1}, Lk9;->a(Li9;Z)V

    .line 15
    :cond_2
    invoke-virtual {p0}, Lk9;->h()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 16
    iget v3, p1, Li9;->a:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Li9;->i:Landroid/view/View;

    .line 17
    :cond_3
    iget v3, p1, Li9;->a:I

    const/16 v4, 0x6c

    if-eqz v3, :cond_5

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_6

    .line 18
    iget-object v5, p0, Lk9;->F:LYe;

    if-eqz v5, :cond_6

    .line 19
    invoke-interface {v5}, LYe;->c()V

    .line 20
    :cond_6
    iget-object v5, p1, Li9;->i:Landroid/view/View;

    if-nez v5, :cond_18

    .line 21
    iget-object v5, p1, Li9;->j:Lqd;

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    iget-boolean v5, p1, Li9;->r:Z

    if-eqz v5, :cond_12

    .line 22
    :cond_7
    iget-object v5, p1, Li9;->j:Lqd;

    if-nez v5, :cond_d

    .line 23
    iget-object v5, p0, Lk9;->x:Landroid/content/Context;

    .line 24
    iget v7, p1, Li9;->a:I

    if-eqz v7, :cond_8

    if-ne v7, v4, :cond_c

    :cond_8
    iget-object v4, p0, Lk9;->F:LYe;

    if-eqz v4, :cond_c

    .line 25
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 26
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x7f040009

    .line 27
    invoke-virtual {v7, v8, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 28
    iget v8, v4, Landroid/util/TypedValue;->resourceId:I

    const v9, 0x7f04000a

    if-eqz v8, :cond_9

    .line 29
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 30
    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 31
    iget v10, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v10, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 32
    invoke-virtual {v8, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_2

    .line 33
    :cond_9
    invoke-virtual {v7, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object v8, v6

    .line 34
    :goto_2
    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_b

    if-nez v8, :cond_a

    .line 35
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 36
    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 37
    :cond_a
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v4, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_b
    if-eqz v8, :cond_c

    .line 38
    new-instance v4, LPc;

    invoke-direct {v4, v5, v1}, LPc;-><init>(Landroid/content/Context;I)V

    .line 39
    invoke-virtual {v4}, LPc;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto :goto_3

    :cond_c
    move-object v4, v5

    .line 40
    :goto_3
    new-instance v5, Lqd;

    invoke-direct {v5, v4}, Lqd;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object p0, v5, Lqd;->A:Lod;

    .line 42
    invoke-virtual {p1, v5}, Li9;->a(Lqd;)V

    .line 43
    iget-object v4, p1, Li9;->j:Lqd;

    if-nez v4, :cond_d

    return v1

    :cond_d
    if-eqz v3, :cond_f

    .line 44
    iget-object v4, p0, Lk9;->F:LYe;

    if-eqz v4, :cond_f

    .line 45
    iget-object v4, p0, Lk9;->G:Lb9;

    if-nez v4, :cond_e

    .line 46
    new-instance v4, Lb9;

    invoke-direct {v4, p0}, Lb9;-><init>(Lk9;)V

    iput-object v4, p0, Lk9;->G:Lb9;

    .line 47
    :cond_e
    iget-object v4, p0, Lk9;->F:LYe;

    iget-object v5, p1, Li9;->j:Lqd;

    iget-object v7, p0, Lk9;->G:Lb9;

    invoke-interface {v4, v5, v7}, LYe;->a(Landroid/view/Menu;LEd;)V

    .line 48
    :cond_f
    iget-object v4, p1, Li9;->j:Lqd;

    invoke-virtual {v4}, Lqd;->i()V

    .line 49
    iget v4, p1, Li9;->a:I

    iget-object v5, p1, Li9;->j:Lqd;

    invoke-interface {v0, v4, v5}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 50
    invoke-virtual {p1, v6}, Li9;->a(Lqd;)V

    if-eqz v3, :cond_10

    .line 51
    iget-object p1, p0, Lk9;->F:LYe;

    if-eqz p1, :cond_10

    .line 52
    iget-object p2, p0, Lk9;->G:Lb9;

    invoke-interface {p1, v6, p2}, LYe;->a(Landroid/view/Menu;LEd;)V

    :cond_10
    return v1

    .line 53
    :cond_11
    iput-boolean v1, p1, Li9;->r:Z

    .line 54
    :cond_12
    iget-object v4, p1, Li9;->j:Lqd;

    invoke-virtual {v4}, Lqd;->i()V

    .line 55
    iget-object v4, p1, Li9;->s:Landroid/os/Bundle;

    if-eqz v4, :cond_13

    .line 56
    iget-object v5, p1, Li9;->j:Lqd;

    invoke-virtual {v5, v4}, Lqd;->a(Landroid/os/Bundle;)V

    .line 57
    iput-object v6, p1, Li9;->s:Landroid/os/Bundle;

    .line 58
    :cond_13
    iget-object v4, p1, Li9;->i:Landroid/view/View;

    iget-object v5, p1, Li9;->j:Lqd;

    invoke-interface {v0, v1, v4, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_15

    if-eqz v3, :cond_14

    .line 59
    iget-object p2, p0, Lk9;->F:LYe;

    if-eqz p2, :cond_14

    .line 60
    iget-object v0, p0, Lk9;->G:Lb9;

    invoke-interface {p2, v6, v0}, LYe;->a(Landroid/view/Menu;LEd;)V

    .line 61
    :cond_14
    iget-object p1, p1, Li9;->j:Lqd;

    invoke-virtual {p1}, Lqd;->h()V

    return v1

    :cond_15
    if-eqz p2, :cond_16

    .line 62
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_4

    :cond_16
    const/4 p2, -0x1

    .line 63
    :goto_4
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    .line 64
    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_17

    const/4 p2, 0x1

    goto :goto_5

    :cond_17
    const/4 p2, 0x0

    :goto_5
    iput-boolean p2, p1, Li9;->p:Z

    .line 65
    iget-object v0, p1, Li9;->j:Lqd;

    invoke-virtual {v0, p2}, Lqd;->setQwertyMode(Z)V

    .line 66
    iget-object p2, p1, Li9;->j:Lqd;

    invoke-virtual {p2}, Lqd;->h()V

    .line 67
    :cond_18
    iput-boolean v2, p1, Li9;->m:Z

    .line 68
    iput-boolean v1, p1, Li9;->n:Z

    .line 69
    iput-object p1, p0, Lk9;->b0:Li9;

    return v2
.end method

.method public c()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk9;->i()V

    .line 2
    iget-object v0, p0, Lk9;->C:LB8;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lk9;->e(I)V

    return-void
.end method

.method public c(I)V
    .locals 3

    .line 4
    invoke-virtual {p0, p1}, Lk9;->d(I)Li9;

    move-result-object v0

    .line 5
    iget-object v1, v0, Li9;->j:Lqd;

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 7
    iget-object v2, v0, Li9;->j:Lqd;

    invoke-virtual {v2, v1}, Lqd;->b(Landroid/os/Bundle;)V

    .line 8
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 9
    iput-object v1, v0, Li9;->s:Landroid/os/Bundle;

    .line 10
    :cond_0
    iget-object v1, v0, Li9;->j:Lqd;

    invoke-virtual {v1}, Lqd;->i()V

    .line 11
    iget-object v1, v0, Li9;->j:Lqd;

    invoke-virtual {v1}, Lqd;->clear()V

    :cond_1
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, v0, Li9;->r:Z

    .line 13
    iput-boolean v1, v0, Li9;->q:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    .line 14
    :cond_2
    iget-object p1, p0, Lk9;->F:LYe;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1}, Lk9;->d(I)Li9;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 16
    iput-boolean p1, v0, Li9;->m:Z

    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, v0, p1}, Lk9;->b(Li9;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method public d(I)Li9;
    .locals 4

    .line 9
    iget-object v0, p0, Lk9;->a0:[Li9;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 10
    new-array v1, v1, [Li9;

    if-eqz v0, :cond_1

    .line 11
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    :cond_1
    iput-object v1, p0, Lk9;->a0:[Li9;

    move-object v0, v1

    .line 13
    :cond_2
    aget-object v1, v0, p1

    if-nez v1, :cond_3

    .line 14
    new-instance v1, Li9;

    invoke-direct {v1, p1}, Li9;-><init>(I)V

    aput-object v1, v0, p1

    :cond_3
    return-object v1
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk9;->i()V

    .line 2
    iget-object v0, p0, Lk9;->C:LB8;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    check-cast v0, Lqa;

    .line 4
    iput-boolean v1, v0, Lqa;->v:Z

    .line 5
    iget-object v0, v0, Lqa;->u:LXc;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, LXc;->a()V

    .line 7
    :cond_0
    iget-object v0, p0, Lk9;->g0:Lg9;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lg9;->a()V

    :cond_1
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk9;->M:LR7;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, LR7;->a()V

    :cond_0
    return-void
.end method

.method public final e(I)V
    .locals 2

    .line 3
    iget v0, p0, Lk9;->i0:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Lk9;->i0:I

    .line 4
    iget-boolean p1, p0, Lk9;->h0:Z

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lk9;->y:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lk9;->j0:Ljava/lang/Runnable;

    invoke-static {p1, v0}, LA7;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 6
    iput-boolean v1, p0, Lk9;->h0:Z

    :cond_0
    return-void
.end method

.method public f(I)I
    .locals 8

    .line 1
    iget-object v0, p0, Lk9;->J:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_a

    .line 3
    iget-object v0, p0, Lk9;->J:Landroid/support/v7/widget/ActionBarContextView;

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 5
    iget-object v2, p0, Lk9;->J:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isShown()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    .line 6
    iget-object v2, p0, Lk9;->l0:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    .line 7
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lk9;->l0:Landroid/graphics/Rect;

    .line 8
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lk9;->m0:Landroid/graphics/Rect;

    .line 9
    :cond_0
    iget-object v2, p0, Lk9;->l0:Landroid/graphics/Rect;

    .line 10
    iget-object v4, p0, Lk9;->m0:Landroid/graphics/Rect;

    .line 11
    invoke-virtual {v2, v1, p1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 12
    iget-object v5, p0, Lk9;->P:Landroid/view/ViewGroup;

    .line 13
    sget-object v6, Lki;->a:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_1

    const/4 v7, 0x2

    :try_start_0
    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v1

    aput-object v4, v7, v3

    .line 14
    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 15
    :cond_1
    :goto_0
    iget v2, v4, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_2

    move v2, p1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 16
    :goto_1
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v2, :cond_5

    .line 17
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 18
    iget-object v2, p0, Lk9;->R:Landroid/view/View;

    if-nez v2, :cond_3

    .line 19
    new-instance v2, Landroid/view/View;

    iget-object v4, p0, Lk9;->x:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lk9;->R:Landroid/view/View;

    .line 20
    iget-object v4, p0, Lk9;->x:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060007

    .line 21
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 22
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 23
    iget-object v2, p0, Lk9;->P:Landroid/view/ViewGroup;

    iget-object v4, p0, Lk9;->R:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 24
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 25
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, p1, :cond_4

    .line 26
    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 27
    iget-object v4, p0, Lk9;->R:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_2
    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    .line 28
    :goto_3
    iget-object v4, p0, Lk9;->R:Landroid/view/View;

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    .line 29
    :goto_4
    iget-boolean v4, p0, Lk9;->W:Z

    if-nez v4, :cond_9

    if-eqz v3, :cond_9

    const/4 p1, 0x0

    goto :goto_6

    .line 30
    :cond_7
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v2, :cond_8

    .line 31
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v2, 0x1

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    :goto_5
    const/4 v3, 0x0

    :cond_9
    :goto_6
    if-eqz v2, :cond_b

    .line 32
    iget-object v2, p0, Lk9;->J:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    :cond_a
    const/4 v3, 0x0

    .line 33
    :cond_b
    :goto_7
    iget-object v0, p0, Lk9;->R:Landroid/view/View;

    if-eqz v0, :cond_d

    if-eqz v3, :cond_c

    goto :goto_8

    :cond_c
    const/16 v1, 0x8

    .line 34
    :goto_8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return p1
.end method

.method public final f()V
    .locals 4

    .line 35
    iget-object v0, p0, Lk9;->g0:Lg9;

    if-nez v0, :cond_1

    .line 36
    new-instance v0, Lg9;

    iget-object v1, p0, Lk9;->x:Landroid/content/Context;

    .line 37
    sget-object v2, Lla;->d:Lla;

    if-nez v2, :cond_0

    .line 38
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 39
    new-instance v2, Lla;

    const-string v3, "location"

    .line 40
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    invoke-direct {v2, v1, v3}, Lla;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v2, Lla;->d:Lla;

    .line 41
    :cond_0
    sget-object v1, Lla;->d:Lla;

    .line 42
    invoke-direct {v0, p0, v1}, Lg9;-><init>(Lk9;Lla;)V

    iput-object v0, p0, Lk9;->g0:Lg9;

    :cond_1
    return-void
.end method

.method public final g()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lk9;->O:Z

    if-nez v0, :cond_21

    .line 2
    iget-object v0, p0, Lk9;->x:Landroid/content/Context;

    sget-object v1, LeS;->r:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x6f

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v2, 0x78

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/16 v4, 0x6c

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p0, v5}, Lk9;->a(I)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p0, v4}, Lk9;->a(I)Z

    :cond_1
    :goto_0
    const/16 v1, 0x70

    .line 8
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v2, 0x6d

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p0, v2}, Lk9;->a(I)Z

    :cond_2
    const/16 v1, 0x71

    .line 10
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    .line 11
    invoke-virtual {p0, v1}, Lk9;->a(I)Z

    .line 12
    :cond_3
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lk9;->X:Z

    .line 13
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    iget-object v0, p0, Lk9;->y:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 15
    iget-object v0, p0, Lk9;->x:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 16
    iget-boolean v1, p0, Lk9;->Y:Z

    const/4 v6, 0x0

    if-nez v1, :cond_9

    .line 17
    iget-boolean v1, p0, Lk9;->X:Z

    if-eqz v1, :cond_4

    const v1, 0x7f0e000c

    .line 18
    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 19
    iput-boolean v3, p0, Lk9;->V:Z

    iput-boolean v3, p0, Lk9;->U:Z

    goto/16 :goto_3

    .line 20
    :cond_4
    iget-boolean v0, p0, Lk9;->U:Z

    if-eqz v0, :cond_8

    .line 21
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 22
    iget-object v1, p0, Lk9;->x:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v7, 0x7f040009

    invoke-virtual {v1, v7, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 23
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_5

    .line 24
    new-instance v1, LPc;

    iget-object v7, p0, Lk9;->x:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, v7, v0}, LPc;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    .line 25
    :cond_5
    iget-object v1, p0, Lk9;->x:Landroid/content/Context;

    .line 26
    :goto_1
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0017

    .line 27
    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0b014b

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, LYe;

    iput-object v1, p0, Lk9;->F:LYe;

    .line 29
    invoke-virtual {p0}, Lk9;->h()Landroid/view/Window$Callback;

    move-result-object v7

    invoke-interface {v1, v7}, LYe;->a(Landroid/view/Window$Callback;)V

    .line 30
    iget-boolean v1, p0, Lk9;->V:Z

    if-eqz v1, :cond_6

    .line 31
    iget-object v1, p0, Lk9;->F:LYe;

    invoke-interface {v1, v2}, LYe;->a(I)V

    .line 32
    :cond_6
    iget-boolean v1, p0, Lk9;->S:Z

    if-eqz v1, :cond_7

    .line 33
    iget-object v1, p0, Lk9;->F:LYe;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, LYe;->a(I)V

    .line 34
    :cond_7
    iget-boolean v1, p0, Lk9;->T:Z

    if-eqz v1, :cond_b

    .line 35
    iget-object v1, p0, Lk9;->F:LYe;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, LYe;->a(I)V

    goto :goto_3

    :cond_8
    move-object v0, v6

    goto :goto_3

    .line 36
    :cond_9
    iget-boolean v1, p0, Lk9;->W:Z

    if-eqz v1, :cond_a

    const v1, 0x7f0e0016

    .line 37
    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_a
    const v1, 0x7f0e0015

    .line 38
    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 39
    :goto_2
    new-instance v1, LV8;

    invoke-direct {v1, p0}, LV8;-><init>(Lk9;)V

    invoke-static {v0, v1}, LA7;->a(Landroid/view/View;Lu7;)V

    :cond_b
    :goto_3
    if-eqz v0, :cond_1f

    .line 40
    iget-object v1, p0, Lk9;->F:LYe;

    if-nez v1, :cond_c

    const v1, 0x7f0b0494

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lk9;->Q:Landroid/widget/TextView;

    .line 42
    :cond_c
    invoke-static {v0}, Lki;->b(Landroid/view/View;)V

    const v1, 0x7f0b0017

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ContentFrameLayout;

    .line 44
    iget-object v2, p0, Lk9;->y:Landroid/view/Window;

    const v7, 0x1020002

    invoke-virtual {v2, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_e

    .line 45
    :goto_4
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lez v8, :cond_d

    .line 46
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 47
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 48
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_d
    const/4 v8, -0x1

    .line 49
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setId(I)V

    .line 50
    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setId(I)V

    .line 51
    instance-of v8, v2, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_e

    .line 52
    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 53
    :cond_e
    iget-object v2, p0, Lk9;->y:Landroid/view/Window;

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 54
    new-instance v2, LX8;

    invoke-direct {v2, p0}, LX8;-><init>(Lk9;)V

    .line 55
    iput-object v2, v1, Landroid/support/v7/widget/ContentFrameLayout;->D:LXe;

    .line 56
    iput-object v0, p0, Lk9;->P:Landroid/view/ViewGroup;

    .line 57
    iget-object v0, p0, Lk9;->z:Landroid/view/Window$Callback;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_f

    .line 58
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_5

    .line 59
    :cond_f
    iget-object v0, p0, Lk9;->E:Ljava/lang/CharSequence;

    .line 60
    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 61
    iget-object v1, p0, Lk9;->F:LYe;

    if-eqz v1, :cond_10

    .line 62
    invoke-interface {v1, v0}, LYe;->a(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 63
    :cond_10
    iget-object v1, p0, Lk9;->C:LB8;

    if-eqz v1, :cond_11

    .line 64
    invoke-virtual {v1, v0}, LB8;->a(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 65
    :cond_11
    iget-object v1, p0, Lk9;->Q:Landroid/widget/TextView;

    if-eqz v1, :cond_12

    .line 66
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :cond_12
    :goto_6
    iget-object v0, p0, Lk9;->P:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ContentFrameLayout;

    .line 68
    iget-object v1, p0, Lk9;->y:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 70
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    .line 71
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 72
    iget-object v8, v0, Landroid/support/v7/widget/ContentFrameLayout;->C:Landroid/graphics/Rect;

    invoke-virtual {v8, v2, v6, v7, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 73
    invoke-static {v0}, LA7;->u(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 74
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 75
    :cond_13
    iget-object v1, p0, Lk9;->x:Landroid/content/Context;

    sget-object v2, LeS;->r:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v2, 0x76

    .line 76
    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->w:Landroid/util/TypedValue;

    if-nez v6, :cond_14

    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    iput-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->w:Landroid/util/TypedValue;

    .line 77
    :cond_14
    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->w:Landroid/util/TypedValue;

    .line 78
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    const/16 v2, 0x77

    .line 79
    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->x:Landroid/util/TypedValue;

    if-nez v6, :cond_15

    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    iput-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->x:Landroid/util/TypedValue;

    .line 80
    :cond_15
    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->x:Landroid/util/TypedValue;

    .line 81
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    const/16 v2, 0x74

    .line 82
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 83
    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->y:Landroid/util/TypedValue;

    if-nez v6, :cond_16

    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    iput-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->y:Landroid/util/TypedValue;

    .line 84
    :cond_16
    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->y:Landroid/util/TypedValue;

    .line 85
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_17
    const/16 v2, 0x75

    .line 86
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 87
    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->z:Landroid/util/TypedValue;

    if-nez v6, :cond_18

    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    iput-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->z:Landroid/util/TypedValue;

    .line 88
    :cond_18
    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->z:Landroid/util/TypedValue;

    .line 89
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_19
    const/16 v2, 0x72

    .line 90
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 91
    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->A:Landroid/util/TypedValue;

    if-nez v6, :cond_1a

    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    iput-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->A:Landroid/util/TypedValue;

    .line 92
    :cond_1a
    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->A:Landroid/util/TypedValue;

    .line 93
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_1b
    const/16 v2, 0x73

    .line 94
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 95
    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->B:Landroid/util/TypedValue;

    if-nez v6, :cond_1c

    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    iput-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->B:Landroid/util/TypedValue;

    .line 96
    :cond_1c
    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->B:Landroid/util/TypedValue;

    .line 97
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 98
    :cond_1d
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 100
    iput-boolean v5, p0, Lk9;->O:Z

    .line 101
    invoke-virtual {p0, v3}, Lk9;->d(I)Li9;

    move-result-object v0

    .line 102
    iget-boolean v1, p0, Lk9;->d0:Z

    if-nez v1, :cond_21

    if-eqz v0, :cond_1e

    iget-object v0, v0, Li9;->j:Lqd;

    if-nez v0, :cond_21

    .line 103
    :cond_1e
    invoke-virtual {p0, v4}, Lk9;->e(I)V

    goto :goto_7

    .line 104
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lk9;->U:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lk9;->V:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lk9;->X:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lk9;->W:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lk9;->Y:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_20
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    :goto_7
    return-void
.end method

.method public final h()Landroid/view/Window$Callback;
    .locals 1

    .line 1
    iget-object v0, p0, Lk9;->y:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lk9;->g()V

    .line 2
    iget-boolean v0, p0, Lk9;->U:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lk9;->C:LB8;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lk9;->z:Landroid/view/Window$Callback;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 4
    new-instance v0, Lqa;

    iget-object v1, p0, Lk9;->z:Landroid/view/Window$Callback;

    check-cast v1, Landroid/app/Activity;

    iget-boolean v2, p0, Lk9;->V:Z

    invoke-direct {v0, v1, v2}, Lqa;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lk9;->C:LB8;

    goto :goto_0

    .line 5
    :cond_1
    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Lqa;

    iget-object v1, p0, Lk9;->z:Landroid/view/Window$Callback;

    check-cast v1, Landroid/app/Dialog;

    invoke-direct {v0, v1}, Lqa;-><init>(Landroid/app/Dialog;)V

    iput-object v0, p0, Lk9;->C:LB8;

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lk9;->C:LB8;

    if-eqz v0, :cond_3

    .line 8
    iget-boolean v1, p0, Lk9;->k0:Z

    invoke-virtual {v0, v1}, LB8;->b(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk9;->O:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk9;->P:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-static {v0}, LA7;->u(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final k()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lk9;->O:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 7

    .line 1
    iget-object p1, p0, Lk9;->n0:Landroid/support/v7/app/AppCompatViewInflater;

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 2
    iget-object p1, p0, Lk9;->x:Landroid/content/Context;

    sget-object v1, LeS;->r:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 v1, 0x6e

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    const-class v1, Landroid/support/v7/app/AppCompatViewInflater;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Class;

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AppCompatViewInflater;

    iput-object v1, p0, Lk9;->n0:Landroid/support/v7/app/AppCompatViewInflater;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to instantiate custom view inflater "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Falling back to default."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AppCompatDelegate"

    invoke-static {v2, p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    new-instance p1, Landroid/support/v7/app/AppCompatViewInflater;

    invoke-direct {p1}, Landroid/support/v7/app/AppCompatViewInflater;-><init>()V

    iput-object p1, p0, Lk9;->n0:Landroid/support/v7/app/AppCompatViewInflater;

    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    new-instance p1, Landroid/support/v7/app/AppCompatViewInflater;

    invoke-direct {p1}, Landroid/support/v7/app/AppCompatViewInflater;-><init>()V

    iput-object p1, p0, Lk9;->n0:Landroid/support/v7/app/AppCompatViewInflater;

    .line 12
    :cond_2
    :goto_1
    iget-object p1, p0, Lk9;->n0:Landroid/support/v7/app/AppCompatViewInflater;

    .line 13
    invoke-static {}, Ldi;->a()Z

    const/4 v1, 0x0

    if-eqz p1, :cond_f

    const/4 v2, 0x4

    .line 14
    sget-object v3, LeS;->W0:[I

    invoke-virtual {p3, p4, v3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 15
    invoke-virtual {v3, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v4, :cond_3

    const-string v5, "AppCompatViewInflater"

    const-string v6, "app:theme is now deprecated. Please move to using android:theme instead."

    .line 16
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_3
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v4, :cond_5

    .line 18
    instance-of v3, p3, LPc;

    if-eqz v3, :cond_4

    move-object v3, p3

    check-cast v3, LPc;

    .line 19
    iget v3, v3, LPc;->a:I

    if-eq v3, v4, :cond_5

    .line 20
    :cond_4
    new-instance v3, LPc;

    invoke-direct {v3, p3, v4}, LPc;-><init>(Landroid/content/Context;I)V

    goto :goto_2

    :cond_5
    move-object v3, p3

    .line 21
    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v2, "Button"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x2

    goto/16 :goto_4

    :sswitch_1
    const-string v2, "EditText"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x3

    goto/16 :goto_4

    :sswitch_2
    const-string v2, "CheckBox"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x6

    goto/16 :goto_4

    :sswitch_3
    const-string v2, "AutoCompleteTextView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x9

    goto :goto_4

    :sswitch_4
    const-string v2, "ImageView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :sswitch_5
    const-string v2, "RadioButton"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x7

    goto :goto_4

    :sswitch_6
    const-string v4, "Spinner"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    :sswitch_7
    const-string v2, "SeekBar"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0xc

    goto :goto_4

    :sswitch_8
    const-string v2, "ImageButton"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x5

    goto :goto_4

    :sswitch_9
    const-string v2, "TextView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    goto :goto_4

    :sswitch_a
    const-string v2, "MultiAutoCompleteTextView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0xa

    goto :goto_4

    :sswitch_b
    const-string v2, "CheckedTextView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x8

    goto :goto_4

    :sswitch_c
    const-string v2, "RatingBar"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0xb

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v2, -0x1

    :goto_4
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_5

    .line 22
    :pswitch_0
    new-instance v2, LIe;

    invoke-direct {v2, v3, p4}, LIe;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-virtual {p1, v2, p2}, Landroid/support/v7/app/AppCompatViewInflater;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 24
    :pswitch_1
    new-instance v2, LHe;

    invoke-direct {v2, v3, p4}, LHe;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-virtual {p1, v2, p2}, Landroid/support/v7/app/AppCompatViewInflater;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 26
    :pswitch_2
    new-instance v2, LDe;

    invoke-direct {v2, v3, p4}, LDe;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-virtual {p1, v2, p2}, Landroid/support/v7/app/AppCompatViewInflater;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_6

    .line 28
    :pswitch_3
    new-instance v2, Lne;

    const v4, 0x7f040030

    .line 29
    invoke-direct {v2, v3, p4, v4}, Lne;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-virtual {p1, v2, p2}, Landroid/support/v7/app/AppCompatViewInflater;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_6

    .line 31
    :pswitch_4
    new-instance v2, Lre;

    invoke-direct {v2, v3, p4}, Lre;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-virtual {p1, v2, p2}, Landroid/support/v7/app/AppCompatViewInflater;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_6

    .line 33
    :pswitch_5
    new-instance v2, LGe;

    invoke-direct {v2, v3, p4}, LGe;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-virtual {p1, v2, p2}, Landroid/support/v7/app/AppCompatViewInflater;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_6

    .line 35
    :pswitch_6
    new-instance v2, Lqe;

    invoke-direct {v2, v3, p4}, Lqe;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-virtual {p1, v2, p2}, Landroid/support/v7/app/AppCompatViewInflater;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_6

    .line 37
    :pswitch_7
    new-instance v2, LBe;

    const v4, 0x7f04013d

    .line 38
    invoke-direct {v2, v3, p4, v4}, LBe;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-virtual {p1, v2, p2}, Landroid/support/v7/app/AppCompatViewInflater;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_6

    .line 40
    :pswitch_8
    new-instance v2, Landroid/support/v7/widget/AppCompatSpinner;

    invoke-direct {v2, v3, p4}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-virtual {p1, v2, p2}, Landroid/support/v7/app/AppCompatViewInflater;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_6

    .line 42
    :pswitch_9
    new-instance v2, Lze;

    const v4, 0x7f0400dd

    .line 43
    invoke-direct {v2, v3, p4, v4}, Lze;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-virtual {p1, v2, p2}, Landroid/support/v7/app/AppCompatViewInflater;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_6

    .line 45
    :pswitch_a
    invoke-virtual {p1, v3, p4}, Landroid/support/v7/app/AppCompatViewInflater;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lpe;

    move-result-object v2

    .line 46
    invoke-virtual {p1, v2, p2}, Landroid/support/v7/app/AppCompatViewInflater;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_6

    .line 47
    :pswitch_b
    new-instance v2, Landroid/support/v7/widget/AppCompatImageView;

    invoke-direct {v2, v3, p4}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-virtual {p1, v2, p2}, Landroid/support/v7/app/AppCompatViewInflater;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_6

    .line 49
    :pswitch_c
    new-instance v2, LSe;

    const v4, 0x1010084

    .line 50
    invoke-direct {v2, v3, p4, v4}, LSe;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-virtual {p1, v2, p2}, Landroid/support/v7/app/AppCompatViewInflater;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    move-object v2, v1

    :goto_6
    if-nez v2, :cond_b

    if-eq p3, v3, :cond_b

    const-string p3, "view"

    .line 52
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    const-string p2, "class"

    .line 53
    invoke-interface {p4, v1, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 54
    :cond_7
    :try_start_1
    iget-object p3, p1, Landroid/support/v7/app/AppCompatViewInflater;->a:[Ljava/lang/Object;

    aput-object v3, p3, v0

    .line 55
    iget-object p3, p1, Landroid/support/v7/app/AppCompatViewInflater;->a:[Ljava/lang/Object;

    aput-object p4, p3, v6

    const/16 p3, 0x2e

    .line 56
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(I)I

    move-result p3

    if-ne v5, p3, :cond_a

    const/4 p3, 0x0

    .line 57
    :goto_7
    sget-object v2, Landroid/support/v7/app/AppCompatViewInflater;->d:[Ljava/lang/String;

    array-length v2, v2

    if-ge p3, v2, :cond_9

    .line 58
    sget-object v2, Landroid/support/v7/app/AppCompatViewInflater;->d:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {p1, v3, p2, v2}, Landroid/support/v7/app/AppCompatViewInflater;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_8

    .line 59
    iget-object p1, p1, Landroid/support/v7/app/AppCompatViewInflater;->a:[Ljava/lang/Object;

    aput-object v1, p1, v0

    .line 60
    aput-object v1, p1, v6

    goto :goto_9

    :cond_8
    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    .line 61
    :cond_9
    iget-object p1, p1, Landroid/support/v7/app/AppCompatViewInflater;->a:[Ljava/lang/Object;

    aput-object v1, p1, v0

    .line 62
    aput-object v1, p1, v6

    goto :goto_8

    .line 63
    :cond_a
    :try_start_2
    invoke-virtual {p1, v3, p2, v1}, Landroid/support/v7/app/AppCompatViewInflater;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 64
    iget-object p1, p1, Landroid/support/v7/app/AppCompatViewInflater;->a:[Ljava/lang/Object;

    aput-object v1, p1, v0

    .line 65
    aput-object v1, p1, v6

    move-object v2, p2

    goto :goto_9

    :catchall_1
    move-exception p2

    .line 66
    iget-object p1, p1, Landroid/support/v7/app/AppCompatViewInflater;->a:[Ljava/lang/Object;

    aput-object v1, p1, v0

    .line 67
    aput-object v1, p1, v6

    throw p2

    .line 68
    :catch_0
    iget-object p1, p1, Landroid/support/v7/app/AppCompatViewInflater;->a:[Ljava/lang/Object;

    aput-object v1, p1, v0

    .line 69
    aput-object v1, p1, v6

    :goto_8
    move-object v2, v1

    :cond_b
    :goto_9
    if-eqz v2, :cond_e

    .line 70
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 71
    instance-of p2, p1, Landroid/content/ContextWrapper;

    if-eqz p2, :cond_e

    .line 72
    invoke-static {v2}, LA7;->q(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_c

    goto :goto_a

    .line 73
    :cond_c
    sget-object p2, Landroid/support/v7/app/AppCompatViewInflater;->c:[I

    invoke-virtual {p1, p4, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 74
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 75
    new-instance p3, Ln9;

    invoke-direct {p3, v2, p2}, Ln9;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    :cond_d
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_e
    :goto_a
    return-object v2

    .line 77
    :cond_f
    throw v1

    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_c
        -0x56c015e7 -> :sswitch_b
        -0x503aa7ad -> :sswitch_a
        -0x37f7066e -> :sswitch_9
        -0x37e04bb3 -> :sswitch_8
        -0x274065a5 -> :sswitch_7
        -0x1440b607 -> :sswitch_6
        0x2e46a6ed -> :sswitch_5
        0x431b5280 -> :sswitch_4
        0x5445f9ba -> :sswitch_3
        0x5f7507c3 -> :sswitch_2
        0x63577677 -> :sswitch_1
        0x77471352 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, v0, p1, p2, p3}, Lk9;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

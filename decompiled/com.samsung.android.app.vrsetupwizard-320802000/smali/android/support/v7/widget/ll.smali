.class Landroid/support/v7/widget/ll;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static i:Landroid/support/v7/widget/ll; = null

.field private static j:Landroid/support/v7/widget/ll; = null

.field private static k:I = 0x0

.field private static l:I = 0x0

.field private static m:Z = false

.field private static n:I = 0x0

.field private static o:Z = false

.field private static r:Z = false

.field private static s:Z = false


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Ljava/lang/CharSequence;

.field private final c:Ljava/lang/Runnable;

.field private final d:Ljava/lang/Runnable;

.field private e:I

.field private f:I

.field private g:Landroid/support/v7/widget/lo;

.field private h:Z

.field private p:Z

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v7/widget/lm;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/lm;-><init>(Landroid/support/v7/widget/ll;)V

    iput-object v0, p0, Landroid/support/v7/widget/ll;->c:Ljava/lang/Runnable;

    new-instance v0, Landroid/support/v7/widget/ln;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ln;-><init>(Landroid/support/v7/widget/ll;)V

    iput-object v0, p0, Landroid/support/v7/widget/ll;->d:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/ll;->p:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/ll;->q:Z

    iput-object p1, p0, Landroid/support/v7/widget/ll;->a:Landroid/view/View;

    iput-object p2, p0, Landroid/support/v7/widget/ll;->b:Ljava/lang/CharSequence;

    iget-object p1, p0, Landroid/support/v7/widget/ll;->a:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p0, Landroid/support/v7/widget/ll;->a:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/ll;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/ll;->b()V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/ll;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ll;->d(Z)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_0

    invoke-static {}, Landroid/support/v4/view/an;->g()I

    move-result p1

    invoke-static {p1}, Landroid/support/v4/d/a/a;->a(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/ll;->p:Z

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Landroid/support/v7/widget/ll;->p:Z

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/support/v4/view/an;->a()I

    move-result p1

    invoke-static {p1}, Landroid/support/v4/d/a/a;->a(I)V

    iput-boolean v0, p0, Landroid/support/v7/widget/ll;->p:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "TooltipCompatHandler"

    const-string p1, "view is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Landroid/support/v7/widget/ll;->i:Landroid/support/v7/widget/ll;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/support/v7/widget/ll;->a:Landroid/view/View;

    if-ne v0, p0, :cond_1

    invoke-static {v1}, Landroid/support/v7/widget/ll;->b(Landroid/support/v7/widget/ll;)V

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Landroid/support/v7/widget/ll;->j:Landroid/support/v7/widget/ll;

    if-eqz p1, :cond_2

    iget-object v0, p1, Landroid/support/v7/widget/ll;->a:Landroid/view/View;

    if-ne v0, p0, :cond_2

    invoke-direct {p1}, Landroid/support/v7/widget/ll;->b()V

    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/support/v7/widget/ll;->j:Landroid/support/v7/widget/ll;

    if-eqz v0, :cond_4

    iget-object v1, v0, Landroid/support/v7/widget/ll;->a:Landroid/view/View;

    if-ne v1, p0, :cond_4

    invoke-direct {v0}, Landroid/support/v7/widget/ll;->b()V

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/support/v7/widget/ll;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/ll;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Landroid/support/v7/widget/ll;->o:Z

    return-void
.end method

.method private b()V
    .locals 3

    sget-object v0, Landroid/support/v7/widget/ll;->j:Landroid/support/v7/widget/ll;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_1

    sput-object v1, Landroid/support/v7/widget/ll;->j:Landroid/support/v7/widget/ll;

    iget-object v0, p0, Landroid/support/v7/widget/ll;->g:Landroid/support/v7/widget/lo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/lo;->a()V

    iput-object v1, p0, Landroid/support/v7/widget/ll;->g:Landroid/support/v7/widget/lo;

    iget-object v0, p0, Landroid/support/v7/widget/ll;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0

    :cond_0
    const-string v0, "TooltipCompatHandler"

    const-string v2, "sActiveHandler.mPopup == null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/ll;->q:Z

    sget-object v2, Landroid/support/v7/widget/ll;->i:Landroid/support/v7/widget/ll;

    if-ne v2, p0, :cond_2

    invoke-static {v1}, Landroid/support/v7/widget/ll;->b(Landroid/support/v7/widget/ll;)V

    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/ll;->a:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/widget/ll;->d:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    sput v0, Landroid/support/v7/widget/ll;->k:I

    sput v0, Landroid/support/v7/widget/ll;->l:I

    sput-boolean v0, Landroid/support/v7/widget/ll;->o:Z

    sput-boolean v0, Landroid/support/v7/widget/ll;->m:Z

    return-void
.end method

.method private static b(Landroid/support/v7/widget/ll;)V
    .locals 1

    sget-object v0, Landroid/support/v7/widget/ll;->i:Landroid/support/v7/widget/ll;

    if-eqz v0, :cond_0

    invoke-direct {v0}, Landroid/support/v7/widget/ll;->d()V

    :cond_0
    sput-object p0, Landroid/support/v7/widget/ll;->i:Landroid/support/v7/widget/ll;

    sget-object p0, Landroid/support/v7/widget/ll;->i:Landroid/support/v7/widget/ll;

    if-eqz p0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/ll;->c()V

    :cond_1
    return-void
.end method

.method public static b(Z)V
    .locals 0

    sput-boolean p0, Landroid/support/v7/widget/ll;->r:Z

    return-void
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/ll;->a:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/ll;->c:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static c(Z)V
    .locals 0

    sput-boolean p0, Landroid/support/v7/widget/ll;->s:Z

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ll;->a:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/ll;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private d(Z)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Landroid/support/v7/widget/ll;->a:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/be;->x(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/support/v7/widget/ll;->b(Landroid/support/v7/widget/ll;)V

    sget-object v2, Landroid/support/v7/widget/ll;->j:Landroid/support/v7/widget/ll;

    if-eqz v2, :cond_1

    invoke-direct {v2}, Landroid/support/v7/widget/ll;->b()V

    :cond_1
    sput-object v0, Landroid/support/v7/widget/ll;->j:Landroid/support/v7/widget/ll;

    iput-boolean v1, v0, Landroid/support/v7/widget/ll;->h:Z

    new-instance v2, Landroid/support/v7/widget/lo;

    iget-object v3, v0, Landroid/support/v7/widget/ll;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/lo;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Landroid/support/v7/widget/ll;->g:Landroid/support/v7/widget/lo;

    sget-boolean v2, Landroid/support/v7/widget/ll;->m:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    sput-boolean v3, Landroid/support/v7/widget/ll;->r:Z

    sput-boolean v3, Landroid/support/v7/widget/ll;->s:Z

    sget-boolean v2, Landroid/support/v7/widget/ll;->o:Z

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    iget-object v1, v0, Landroid/support/v7/widget/ll;->g:Landroid/support/v7/widget/lo;

    sget v2, Landroid/support/v7/widget/ll;->k:I

    sget v4, Landroid/support/v7/widget/ll;->l:I

    sget v5, Landroid/support/v7/widget/ll;->n:I

    iget-object v6, v0, Landroid/support/v7/widget/ll;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/support/v7/widget/lo;->a(IIILjava/lang/CharSequence;)V

    sput-boolean v3, Landroid/support/v7/widget/ll;->m:Z

    goto :goto_2

    :cond_4
    sget-boolean v1, Landroid/support/v7/widget/ll;->o:Z

    if-nez v1, :cond_9

    sget-boolean v1, Landroid/support/v7/widget/ll;->r:Z

    if-nez v1, :cond_6

    sget-boolean v1, Landroid/support/v7/widget/ll;->s:Z

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    sput-boolean v3, Landroid/support/v7/widget/ll;->r:Z

    sput-boolean v3, Landroid/support/v7/widget/ll;->s:Z

    iget-object v4, v0, Landroid/support/v7/widget/ll;->g:Landroid/support/v7/widget/lo;

    iget-object v5, v0, Landroid/support/v7/widget/ll;->a:Landroid/view/View;

    iget v6, v0, Landroid/support/v7/widget/ll;->e:I

    iget v7, v0, Landroid/support/v7/widget/ll;->f:I

    iget-boolean v8, v0, Landroid/support/v7/widget/ll;->h:Z

    iget-object v9, v0, Landroid/support/v7/widget/ll;->b:Ljava/lang/CharSequence;

    invoke-virtual/range {v4 .. v9}, Landroid/support/v7/widget/lo;->a(Landroid/view/View;IIZLjava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    :goto_1
    iget-object v10, v0, Landroid/support/v7/widget/ll;->g:Landroid/support/v7/widget/lo;

    iget-object v11, v0, Landroid/support/v7/widget/ll;->a:Landroid/view/View;

    iget v12, v0, Landroid/support/v7/widget/ll;->e:I

    iget v13, v0, Landroid/support/v7/widget/ll;->f:I

    iget-boolean v14, v0, Landroid/support/v7/widget/ll;->h:Z

    iget-object v15, v0, Landroid/support/v7/widget/ll;->b:Ljava/lang/CharSequence;

    sget-boolean v16, Landroid/support/v7/widget/ll;->r:Z

    sget-boolean v17, Landroid/support/v7/widget/ll;->s:Z

    invoke-virtual/range {v10 .. v17}, Landroid/support/v7/widget/lo;->a(Landroid/view/View;IIZLjava/lang/CharSequence;ZZ)V

    :goto_2
    iget-object v1, v0, Landroid/support/v7/widget/ll;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-boolean v1, v0, Landroid/support/v7/widget/ll;->h:Z

    if-eqz v1, :cond_7

    const-wide/16 v1, 0x9c4

    goto :goto_4

    :cond_7
    iget-object v1, v0, Landroid/support/v7/widget/ll;->a:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/be;->m(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    const-wide/16 v1, 0xbb8

    goto :goto_3

    :cond_8
    const-wide/16 v1, 0x3a98

    :goto_3
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    :goto_4
    iget-object v3, v0, Landroid/support/v7/widget/ll;->a:Landroid/view/View;

    iget-object v4, v0, Landroid/support/v7/widget/ll;->d:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v3, v0, Landroid/support/v7/widget/ll;->a:Landroid/view/View;

    iget-object v4, v0, Landroid/support/v7/widget/ll;->d:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    return-void
.end method


# virtual methods
.method a()Z
    .locals 3

    invoke-static {}, Landroid/support/v4/i/r;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ll;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Landroid/support/v7/widget/ll;->g:Landroid/support/v7/widget/lo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/ll;->h:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ll;->a:Landroid/view/View;

    const-string v2, "TooltipCompatHandler"

    if-nez v0, :cond_1

    const-string p1, "TooltipCompat Anchor view is null"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v3, 0x4002

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v3

    const/4 v4, 0x2

    const/16 v5, 0x18

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/ll;->a()Z

    move-result v3

    if-nez v3, :cond_3

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v5, :cond_2

    iget-object p2, p0, Landroid/support/v7/widget/ll;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroid/support/v7/widget/ll;->g:Landroid/support/v7/widget/lo;

    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/support/v4/view/an;->a()I

    move-result p2

    invoke-static {v0, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p2

    invoke-static {p1, v4, p2}, Landroid/support/v4/view/aw;->a(Landroid/view/View;ILandroid/view/PointerIcon;)V

    :cond_2
    return v1

    :cond_3
    iget-object v3, p0, Landroid/support/v7/widget/ll;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "accessibility"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    return v1

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v6, 0x7

    if-eq v3, v6, :cond_9

    const/16 v6, 0x9

    if-eq v3, v6, :cond_8

    const/16 v6, 0xa

    if-eq v3, v6, :cond_5

    goto/16 :goto_0

    :cond_5
    const-string v3, "MotionEvent.ACTION_HOVER_EXIT : hide SeslTooltipPopup"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v5, :cond_6

    invoke-direct {p0, p2, v1}, Landroid/support/v7/widget/ll;->a(Landroid/view/MotionEvent;Z)V

    :cond_6
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v5, :cond_7

    iget-object p2, p0, Landroid/support/v7/widget/ll;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Landroid/support/v7/widget/ll;->g:Landroid/support/v7/widget/lo;

    if-eqz p2, :cond_7

    if-eqz v0, :cond_7

    invoke-static {}, Landroid/support/v4/view/an;->a()I

    move-result p2

    invoke-static {v0, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p2

    invoke-static {p1, v4, p2}, Landroid/support/v4/view/aw;->a(Landroid/view/View;ILandroid/view/PointerIcon;)V

    :cond_7
    invoke-direct {p0}, Landroid/support/v7/widget/ll;->b()V

    goto :goto_0

    :cond_8
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v5, :cond_b

    iget-object p2, p0, Landroid/support/v7/widget/ll;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Landroid/support/v7/widget/ll;->g:Landroid/support/v7/widget/lo;

    if-nez p2, :cond_b

    if-eqz v0, :cond_b

    invoke-static {}, Landroid/support/v4/view/an;->g()I

    move-result p2

    invoke-static {v0, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p2

    invoke-static {p1, v4, p2}, Landroid/support/v4/view/aw;->a(Landroid/view/View;ILandroid/view/PointerIcon;)V

    goto :goto_0

    :cond_9
    iget-object p1, p0, Landroid/support/v7/widget/ll;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Landroid/support/v7/widget/ll;->g:Landroid/support/v7/widget/lo;

    if-nez p1, :cond_b

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/ll;->e:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/ll;->f:I

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    if-ge p1, v5, :cond_a

    invoke-direct {p0, p2, v0}, Landroid/support/v7/widget/ll;->a(Landroid/view/MotionEvent;Z)V

    :cond_a
    iget-boolean p1, p0, Landroid/support/v7/widget/ll;->q:Z

    if-nez p1, :cond_b

    invoke-static {p0}, Landroid/support/v7/widget/ll;->b(Landroid/support/v7/widget/ll;)V

    iput-boolean v0, p0, Landroid/support/v7/widget/ll;->q:Z

    :cond_b
    :goto_0
    return v1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/ll;->e:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroid/support/v7/widget/ll;->f:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ll;->d(Z)V

    return p1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/ll;->b()V

    return-void
.end method

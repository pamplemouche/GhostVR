.class public Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# instance fields
.field public A:Landroid/app/Activity;

.field public B:Lorg/chromium/base/Callback;

.field public C:Ljava/lang/Runnable;

.field public D:Lorg/chromium/base/Callback;

.field public E:J

.field public F:Z

.field public final w:Lorg/chromium/content_public/browser/WebContents;

.field public x:J

.field public y:Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;

.field public z:Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;


# direct methods
.method public constructor <init>(JLorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->x:J

    .line 3
    iput-object p3, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->w:Lorg/chromium/content_public/browser/WebContents;

    return-void
.end method

.method public static create(JLorg/chromium/content_public/browser/WebContents;)Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;-><init>(JLorg/chromium/content_public/browser/WebContents;)V

    return-object v0
.end method

.method private destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->y:Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;->a()V

    :cond_0
    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->x:J

    return-void
.end method

.method private setPopulator(Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->y:Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;->a()V

    .line 2
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->y:Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;

    return-void
.end method

.method private showContextMenu(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;Landroid/view/View;F)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->w:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->t()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    if-eqz p2, :cond_7

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    .line 4
    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->y:Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 5
    :cond_1
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->z:Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;

    .line 6
    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iput-object v1, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->A:Landroid/app/Activity;

    .line 7
    new-instance v1, LZ30;

    invoke-direct {v1, p0}, LZ30;-><init>(Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->B:Lorg/chromium/base/Callback;

    .line 8
    new-instance v1, La40;

    invoke-direct {v1, p0}, La40;-><init>(Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->C:Ljava/lang/Runnable;

    .line 9
    new-instance v1, Lb40;

    invoke-direct {v1, p0}, Lb40;-><init>(Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->D:Lorg/chromium/base/Callback;

    const-string v1, "RevampedContextMenu"

    .line 10
    invoke-static {v1}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 11
    iget v1, p1, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->n:I

    if-eq v1, v2, :cond_5

    .line 12
    iget-object p1, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->y:Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;

    const/4 p2, 0x0

    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->A:Landroid/app/Activity;

    iget-object v1, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->z:Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;

    .line 13
    invoke-interface {p1, p2, v0, v1}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;->a(Landroid/view/ContextMenu;Landroid/content/Context;Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;)Ljava/util/List;

    move-result-object v5

    .line 14
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_2

    .line 15
    sget-object p1, LZ01;->a:LFW;

    new-instance p2, Lc40;

    invoke-direct {p2, p0}, Lc40;-><init>(Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;)V

    .line 16
    invoke-static {p1, p2, v0, v1}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void

    .line 17
    :cond_2
    new-instance p1, LD40;

    new-instance p2, Ld40;

    invoke-direct {p2, p0}, Ld40;-><init>(Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;)V

    invoke-direct {p1, p3, p2}, LD40;-><init>(FLjava/lang/Runnable;)V

    .line 18
    iget-object v3, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->A:Landroid/app/Activity;

    iget-object v4, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->z:Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;

    iget-object v6, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->B:Lorg/chromium/base/Callback;

    iget-object v7, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->C:Ljava/lang/Runnable;

    iget-object v8, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->D:Lorg/chromium/base/Callback;

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, LD40;->a(Landroid/app/Activity;Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;Ljava/util/List;Lorg/chromium/base/Callback;Ljava/lang/Runnable;Lorg/chromium/base/Callback;)V

    .line 19
    iget-object p2, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->z:Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;

    .line 20
    iget-boolean p2, p2, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->i:Z

    if-eqz p2, :cond_4

    .line 21
    iget-object p1, p1, LD40;->a:LF40;

    .line 22
    iget-object p1, p1, LF40;->b:LH40;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    new-instance v5, LE40;

    invoke-direct {v5, p1}, LE40;-><init>(LH40;)V

    .line 24
    iget-wide p1, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->x:J

    cmp-long p3, p1, v0

    if-nez p3, :cond_3

    goto :goto_0

    .line 25
    :cond_3
    iget-object p1, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->A:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070288

    .line 26
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 27
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 28
    iget-wide v2, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->x:J

    move-object v4, p0

    .line 29
    invoke-static/range {v2 .. v7}, LJ/N;->MOGUBTs4(JLjava/lang/Object;Ljava/lang/Object;II)V

    :cond_4
    :goto_0
    return-void

    .line 30
    :cond_5
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 31
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_6

    .line 32
    iget v1, p1, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->n:I

    if-ne v1, v2, :cond_6

    .line 33
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 34
    iget v2, p1, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->l:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    .line 35
    iget p1, p1, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->m:I

    int-to-float p1, p1

    mul-float p1, p1, v1

    add-float/2addr p1, p3

    .line 36
    invoke-virtual {p2, v2, p1}, Landroid/view/View;->showContextMenu(FF)Z

    move-result p1

    goto :goto_1

    .line 37
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->showContextMenu()Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_7

    .line 38
    iget-object p1, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->C:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 39
    new-instance p1, Li40;

    invoke-direct {p1, p0, v0}, Li40;-><init>(Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;Lorg/chromium/ui/base/WindowAndroid;)V

    invoke-virtual {v0, p1}, Lorg/chromium/ui/base/WindowAndroid;->addContextMenuCloseListener(LXc1;)V

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public final a(Lorg/chromium/base/Callback;)V
    .locals 11

    .line 4
    iget-wide v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->x:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v8, Lj40;

    invoke-direct {v8, p0, p1}, Lj40;-><init>(Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;Lorg/chromium/base/Callback;)V

    .line 6
    iget-wide v5, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->x:J

    const/16 v9, 0x800

    const/16 v10, 0x800

    move-object v7, p0

    .line 7
    invoke-static/range {v5 .. v10}, LJ/N;->MzTG3l9H(JLjava/lang/Object;Ljava/lang/Object;II)V

    return-void
.end method

.method public a(ZZ)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->x:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->x:J

    .line 3
    invoke-static {v0, v1, p0, p1, p2}, LJ/N;->MLHVy1fT(JLjava/lang/Object;ZZ)V

    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8

    .line 1
    iget-object p3, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->y:Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->z:Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;

    invoke-interface {p3, p1, p2, v0}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;->a(Landroid/view/ContextMenu;Landroid/content/Context;Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;)Ljava/util/List;

    move-result-object p2

    .line 3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4
    sget-object p1, LZ01;->a:LFW;

    new-instance p2, Lh40;

    invoke-direct {p2, p0}, Lh40;-><init>(Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;)V

    const-wide/16 v0, 0x0

    .line 5
    invoke-static {p1, p2, v0, v1}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void

    .line 6
    :cond_0
    new-instance p3, Lo40;

    invoke-direct {p3, p1}, Lo40;-><init>(Landroid/view/ContextMenu;)V

    .line 7
    iget-object p1, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->A:Landroid/app/Activity;

    iget-object v0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->z:Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;

    iget-object v1, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->B:Lorg/chromium/base/Callback;

    .line 8
    iget-object v2, v0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->b:Ljava/lang/String;

    .line 9
    invoke-static {v2}, LY30;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    invoke-static {v0}, LY30;->a(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_1
    iget-object v2, v0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->d:Ljava/lang/String;

    .line 12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 13
    iget-object v0, v0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->d:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, ""

    .line 14
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 15
    iget-object v2, p3, Lo40;->a:Landroid/view/ContextMenu;

    .line 16
    new-instance v3, Lm40;

    invoke-direct {v3, p1, v0}, Lm40;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    invoke-interface {v2, v3}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 18
    :cond_3
    new-instance v0, Ln40;

    invoke-direct {v0, p3, v1}, Ln40;-><init>(Lo40;Lorg/chromium/base/Callback;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 19
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 20
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    .line 21
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 22
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk40;

    .line 23
    iget-object v6, p3, Lo40;->a:Landroid/view/ContextMenu;

    invoke-interface {v5}, Lk40;->a()I

    move-result v7

    invoke-interface {v5, p1}, Lk40;->a(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v6, v1, v7, v1, v5}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    .line 24
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

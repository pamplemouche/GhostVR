.class public abstract LBg0;
.super LOY;
.source "PG"

# interfaces
.implements LGg0;
.implements LCg0;
.implements LCd1;


# instance fields
.field public final L:Landroid/os/Handler;

.field public final M:Lfh0;

.field public final N:Lqg0;

.field public final O:Lol0;

.field public P:J

.field public Q:LDc1;

.field public R:LBd1;

.field public S:Landroid/os/Bundle;

.field public T:I

.field public U:Z

.field public V:J

.field public W:Z

.field public X:Z

.field public Y:Z

.field public Z:Z

.field public a0:Z

.field public b0:Ljava/lang/Runnable;

.field public c0:Z

.field public final d0:LAg0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LBg0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LOY;-><init>()V

    .line 2
    new-instance v0, Lfh0;

    invoke-direct {v0, p0}, Lfh0;-><init>(LGg0;)V

    iput-object v0, p0, LBg0;->M:Lfh0;

    .line 3
    new-instance v0, Lqg0;

    invoke-direct {v0}, Lqg0;-><init>()V

    iput-object v0, p0, LBg0;->N:Lqg0;

    .line 4
    new-instance v0, Lol0;

    invoke-direct {v0, p0}, Lol0;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, LBg0;->O:Lol0;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, LBg0;->Y:Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, LBg0;->d0:LAg0;

    .line 7
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LBg0;->L:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final I()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget v0, p0, LBg0;->T:I

    .line 4
    invoke-virtual {p0}, LQ8;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, LBg0;->T:I

    return-void
.end method

.method public J()LBd1;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract K()LDc1;
.end method

.method public L()J
    .locals 2

    .line 1
    iget-wide v0, p0, LBg0;->V:J

    return-wide v0
.end method

.method public M()Lqi0;
    .locals 1

    .line 1
    iget-object v0, p0, LBg0;->N:Lqg0;

    return-object v0
.end method

.method public N()Lnl0;
    .locals 1

    .line 1
    iget-object v0, p0, LBg0;->O:Lol0;

    return-object v0
.end method

.method public O()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, LBg0;->S:Landroid/os/Bundle;

    return-object v0
.end method

.method public P()Landroid/view/View;
    .locals 1

    const v0, 0x1020002

    .line 1
    invoke-virtual {p0, v0}, LQ8;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public Q()LDc1;
    .locals 1

    .line 1
    iget-object v0, p0, LBg0;->Q:LDc1;

    return-object v0
.end method

.method public R()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LBg0;->c0:Z

    return v0
.end method

.method public S()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LBg0;->W:Z

    return v0
.end method

.method public T()V
    .locals 1

    .line 1
    iget-object v0, p0, LBg0;->b0:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, LBg0;->b0:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, LBg0;->c0:Z

    return-void
.end method

.method public U()V
    .locals 4

    .line 1
    invoke-virtual {p0}, LBg0;->P()Landroid/view/View;

    move-result-object v0

    .line 2
    new-instance v1, Lyg0;

    invoke-direct {v1, p0}, Lyg0;-><init>(LBg0;)V

    .line 3
    new-instance v2, Lch0;

    invoke-direct {v2, v0, v1}, Lch0;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 4
    new-instance v0, LZg0;

    invoke-direct {v0, v2}, LZg0;-><init>(Lch0;)V

    .line 5
    new-instance v1, Lbh0;

    invoke-direct {v1, v2}, Lbh0;-><init>(Lch0;)V

    .line 6
    iget-object v3, v2, Lch0;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 7
    iget-object v0, v2, Lch0;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method

.method public V()V
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/chromium/ui/base/DeviceFormFactor;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, LBg0;->W:Z

    .line 2
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->h:Lorg/chromium/base/library_loader/LibraryLoader;

    .line 3
    iget-boolean v0, v0, Lorg/chromium/base/library_loader/LibraryLoader;->a:Z

    .line 4
    iput-boolean v0, p0, LBg0;->X:Z

    .line 5
    iget-object v0, p0, LBg0;->N:Lqg0;

    .line 6
    iget-object v0, v0, Lqg0;->a:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lui0;

    .line 7
    check-cast v1, LYL0;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8
    throw v0

    :cond_1
    return-void
.end method

.method public W()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    :try_start_0
    const-class v2, Landroid/provider/Settings$Secure;

    const-string v3, "ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 2
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    if-ne v3, v4, :cond_0

    .line 4
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 6
    invoke-static {v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public X()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract Y()V
.end method

.method public a()V
    .locals 2

    .line 17
    iget-object v0, p0, LBg0;->N:Lqg0;

    .line 18
    iget-object v0, v0, Lqg0;->c:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxi0;

    .line 19
    invoke-interface {v1}, Lxi0;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 3

    .line 7
    iget-boolean v0, p0, LBg0;->Z:Z

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, LBg0;->M:Lfh0;

    .line 9
    invoke-static {}, Li00;->a()Li00;

    move-result-object v1

    .line 10
    iget-object v1, v1, Li00;->e:Lorg/chromium/content_public/browser/WebContents;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v1, v2

    .line 11
    invoke-virtual {v0, v1}, Lfh0;->a(Z)V

    .line 12
    :cond_1
    iput-object p1, p0, LBg0;->b0:Ljava/lang/Runnable;

    .line 13
    invoke-virtual {p0}, LBg0;->Y()V

    .line 14
    iget-object p1, p0, LBg0;->d0:LAg0;

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p1}, LAg0;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 16
    iget-object p1, p1, LAg0;->b:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_2
    return-void
.end method

.method public a(IILandroid/content/Intent;)Z
    .locals 5

    .line 20
    iget-object v0, p0, LBg0;->Q:LDc1;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 21
    iget-object v2, v0, LJc1;->x:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LWc1;

    .line 22
    iget-object v3, v0, LJc1;->x:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 23
    iget-object v3, v0, Lorg/chromium/ui/base/WindowAndroid;->mIntentErrors:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 24
    invoke-interface {v2, v0, p2, p3}, LWc1;->a(Lorg/chromium/ui/base/WindowAndroid;ILandroid/content/Intent;)V

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    if-eqz v3, :cond_1

    .line 25
    invoke-virtual {v0, v3}, Lorg/chromium/ui/base/WindowAndroid;->showCallbackNonExistentError(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    return v4

    .line 26
    :cond_2
    iget-object v0, p0, LBg0;->N:Lqg0;

    .line 27
    iget-object v0, v0, Lqg0;->h:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lri0;

    .line 28
    invoke-interface {v2, p1, p2, p3}, Lri0;->a(IILandroid/content/Intent;)V

    goto :goto_2

    .line 29
    :cond_3
    invoke-super {p0, p1, p2, p3}, LD2;->onActivityResult(IILandroid/content/Intent;)V

    return v1
.end method

.method public a(Landroid/content/Context;Landroid/content/res/Configuration;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, LOY;->a(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    .line 2
    invoke-static {p1}, Lcd1;->a(Landroid/content/Context;)Lcd1;

    move-result-object p1

    .line 3
    iget-object v0, p1, Lcd1;->c:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 4
    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ge v1, v0, :cond_0

    move v0, v1

    :cond_0
    int-to-float v0, v0

    .line 5
    iget p1, p1, Lcd1;->d:F

    div-float/2addr v0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int p1, v0

    .line 6
    iput p1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/4 p1, 0x1

    return p1
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LBg0;->U:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public b(Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public c()V
    .locals 2

    .line 9
    iget-object v0, p0, LBg0;->N:Lqg0;

    .line 10
    iget-object v0, v0, Lqg0;->c:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxi0;

    .line 11
    invoke-interface {v1}, Lxi0;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-super {p0, v0}, LOY;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x16

    if-ne p1, v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    :cond_1
    const/4 p1, 0x0

    const v0, 0x7f010020

    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    new-instance v0, LMU;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LMU;-><init>(I)V

    throw v0
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, LBg0;->N:Lqg0;

    .line 2
    iget-object v0, v0, Lqg0;->d:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzi0;

    .line 3
    invoke-interface {v1}, Lzi0;->e()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, LBg0;->N:Lqg0;

    .line 2
    iget-object v0, v0, Lqg0;->d:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzi0;

    .line 3
    invoke-interface {v1}, Lzi0;->g()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 0

    .line 1
    invoke-virtual {p0}, LBg0;->V()V

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l()V
    .locals 4

    .line 1
    invoke-virtual {p0}, LBg0;->I()V

    const v0, 0x1020002

    .line 2
    invoke-virtual {p0, v0}, LQ8;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lzg0;

    invoke-direct {v1, p0}, Lzg0;-><init>(LBg0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 3
    iget-object v0, p0, LBg0;->M:Lfh0;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lfh0;->i:Z

    .line 5
    iget-boolean v2, v0, Lfh0;->b:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 6
    iput-boolean v3, v0, Lfh0;->b:Z

    .line 7
    invoke-virtual {v0}, Lfh0;->b()V

    .line 8
    :cond_0
    iget-boolean v2, v0, Lfh0;->c:Z

    if-eqz v2, :cond_2

    .line 9
    iput-boolean v3, v0, Lfh0;->c:Z

    .line 10
    iget-boolean v2, v0, Lfh0;->i:Z

    if-eqz v2, :cond_1

    .line 11
    iget-object v0, v0, Lfh0;->a:LGg0;

    invoke-interface {v0}, LGg0;->a()V

    goto :goto_0

    .line 12
    :cond_1
    iput-boolean v1, v0, Lfh0;->c:Z

    .line 13
    :cond_2
    :goto_0
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->h:Lorg/chromium/base/library_loader/LibraryLoader;

    .line 14
    iget-wide v0, v0, Lorg/chromium/base/library_loader/LibraryLoader;->f:J

    const-string v2, "ChromiumAndroidLinker.BrowserLoadTime"

    invoke-static {v2, v0, v1}, LfV;->c(Ljava/lang/String;J)V

    .line 15
    iget-object v0, p0, LBg0;->N:Lqg0;

    .line 16
    iget-object v0, v0, Lqg0;->b:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwi0;

    .line 17
    check-cast v1, LGJ0;

    .line 18
    iget-object v2, v1, LGJ0;->y:Lqi0;

    check-cast v2, Lqg0;

    invoke-virtual {v2, v1}, Lqg0;->b(Lvi0;)V

    const/4 v2, 0x0

    .line 19
    iput-object v2, v1, LGJ0;->y:Lqi0;

    .line 20
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->l()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v2

    iput-object v2, v1, LGJ0;->A:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    if-nez v2, :cond_3

    goto :goto_1

    .line 21
    :cond_3
    invoke-virtual {v2, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->a(LoG0;)V

    .line 22
    invoke-static {}, LHE0;->b()Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v2

    iput-object v2, v1, LGJ0;->z:Lorg/chromium/chrome/browser/signin/SigninManager;

    .line 23
    iget-object v2, v2, Lorg/chromium/chrome/browser/signin/SigninManager;->f:LWT;

    invoke-virtual {v2, v1}, LWT;->a(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-void
.end method

.method public n()Landroid/content/Intent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public o()LBd1;
    .locals 1

    .line 1
    iget-object v0, p0, LBg0;->R:LBd1;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    iget-object v0, p0, LBg0;->M:Lfh0;

    .line 2
    iget-boolean v1, v0, Lfh0;->i:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lfh0;->a:LGg0;

    invoke-interface {v0, p1, p2, p3}, LGg0;->a(IILandroid/content/Intent;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, v0, Lfh0;->e:Ljava/util/List;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lfh0;->e:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, v0, Lfh0;->e:Ljava/util/List;

    new-instance v1, Leh0;

    invoke-direct {v1, p1, p2, p3}, Leh0;-><init>(IILandroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, LOY;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p1, p0, LBg0;->N:Lqg0;

    .line 3
    iget-object p1, p1, Lqg0;->i:LWT;

    invoke-virtual {p1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsi0;

    .line 4
    check-cast v0, LI00;

    .line 5
    invoke-virtual {v0}, LI00;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 0

    .line 1
    iget-object p1, p0, LBg0;->Q:LDc1;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->onContextMenuClosed()V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v0, 0x0

    const-string v1, "AsyncInitializationActivity.onCreate()"

    .line 1
    invoke-static {v1, v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 5
    invoke-virtual {p0, v2}, LBg0;->b(Landroid/content/Intent;)Z

    move-result v3

    const/4 v4, 0x2

    if-nez v3, :cond_0

    .line 6
    invoke-virtual {p0, v4}, LBg0;->c(I)V

    goto/16 :goto_9

    :cond_0
    const/4 v3, 0x0

    .line 7
    invoke-static {v2, v3}, LEc0;->a(Landroid/content/Intent;Z)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_1

    goto/16 :goto_8

    .line 8
    :cond_1
    invoke-static {v2}, LqZ;->h(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 9
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_0

    :cond_2
    move-object v5, v0

    :goto_0
    if-eqz v5, :cond_3

    .line 10
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    const-string v8, "content"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 12
    invoke-virtual {p0, v7, v5, v6}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 13
    :cond_3
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v7, 0x10000000

    and-int/2addr v5, v7

    if-eqz v5, :cond_e

    .line 14
    invoke-static {v2}, LBP0;->a(Landroid/content/Intent;)LhP0;

    move-result-object v5

    if-nez v5, :cond_4

    move-object v7, v2

    goto :goto_1

    .line 15
    :cond_4
    new-instance v7, Landroid/content/Intent;

    invoke-virtual {v5}, LzP0;->g()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v7, v9, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 16
    invoke-virtual {v5}, LhP0;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x10080000

    .line 17
    invoke-virtual {v7, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 18
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 19
    invoke-virtual {v7, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 20
    :cond_5
    :goto_1
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->b()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    goto :goto_2

    .line 21
    :cond_6
    invoke-static {p0}, Lorg/chromium/ui/base/DeviceFormFactor;->a(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_3

    :cond_7
    new-array v5, v6, [I

    const v8, 0x1010054

    aput v8, v5, v3

    .line 22
    invoke-virtual {p0, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 23
    invoke-virtual {v5, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 24
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    const v5, 0x7f0802f7

    if-ne v8, v5, :cond_8

    const/4 v5, 0x1

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_9

    .line 25
    const-class v5, LLc0;

    goto :goto_5

    .line 26
    :cond_9
    const-class v5, LCc0;

    .line 27
    :goto_5
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v9, "android.intent.action.MAIN"

    invoke-static {v5, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v9, "Extra.ComingFromChromeIcon"

    .line 29
    invoke-virtual {v8, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 30
    invoke-static {v2}, LtZ;->a(Landroid/content/Intent;)Z

    move-result v5

    const-string v9, "Extra.FreChromeLaunchIntentIsCct"

    .line 31
    invoke-virtual {v8, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 32
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 33
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string v5, "Extra.FreChromeLaunchIntentExtras"

    .line 34
    invoke-virtual {v8, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_a
    const/high16 v5, 0x48000000    # 131072.0f

    .line 35
    invoke-static {p0, v3, v7, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    const-string v7, "Extra.FreChromeLaunchIntent"

    .line 36
    invoke-virtual {v8, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 37
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->c()LPO0;

    move-result-object v5

    invoke-virtual {v5, v2}, LPO0;->a(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 38
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->c()LPO0;

    move-result-object v2

    check-cast v2, LRO0;

    if-eqz v2, :cond_c

    .line 39
    sget-object v2, LKO0;->b:LVU;

    invoke-virtual {v2, v3}, LVU;->a(Z)V

    .line 40
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a()LJO0;

    move-result-object v2

    invoke-virtual {v2}, LJO0;->a()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_6

    .line 41
    :cond_b
    sget-object v2, LQO0;->a:LZT0;

    invoke-static {v2}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a(LZT0;)V

    .line 42
    sget-object v2, LZ01;->a:LFW;

    new-instance v3, LNO0;

    invoke-direct {v3, p0}, LNO0;-><init>(Landroid/content/Context;)V

    const-wide/16 v7, 0x7d0

    invoke-static {v2, v3, v7, v8}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    move-object v8, v0

    :goto_6
    if-nez v8, :cond_d

    goto :goto_7

    .line 43
    :cond_c
    throw v0

    .line 44
    :cond_d
    invoke-static {p0, v8}, LCO0;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_7

    .line 45
    :cond_e
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 46
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 47
    invoke-static {p0, v0}, LCO0;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    :goto_7
    const/4 v3, 0x1

    :goto_8
    if-eqz v3, :cond_f

    .line 48
    invoke-virtual {p0, v4}, LBg0;->c(I)V

    goto :goto_9

    .line 49
    :cond_f
    invoke-static {}, LqU;->a()LqU;

    move-result-object v0

    .line 50
    :try_start_0
    invoke-super {p0, p1}, LOY;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-virtual {v0}, LqU;->close()V

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, LBg0;->P:J

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 54
    iput-object p1, p0, LBg0;->S:Landroid/os/Bundle;

    .line 55
    invoke-virtual {p0}, LBg0;->K()LDc1;

    move-result-object p1

    iput-object p1, p0, LBg0;->Q:LDc1;

    if-eqz p1, :cond_10

    .line 56
    iget-object v0, p0, LBg0;->S:Landroid/os/Bundle;

    .line 57
    invoke-virtual {p1, v0}, Lorg/chromium/ui/base/WindowAndroid;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 58
    :cond_10
    invoke-virtual {p0}, LBg0;->J()LBd1;

    move-result-object p1

    iput-object p1, p0, LBg0;->R:LBd1;

    .line 59
    invoke-virtual {p0}, LBg0;->X()Z

    move-result p1

    iput-boolean p1, p0, LBg0;->Z:Z

    .line 60
    invoke-static {p0}, LUg0;->a(Landroid/content/Context;)LUg0;

    move-result-object p1

    invoke-virtual {p1, p0}, LUg0;->a(LCg0;)V

    .line 61
    :goto_9
    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 62
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 63
    :try_start_2
    invoke-virtual {v0}, LqU;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_a

    :catchall_2
    move-exception v0

    .line 64
    sget-object v2, LRB;->a:LLB;

    invoke-virtual {v2, p1, v0}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 65
    :goto_a
    throw v1
.end method

.method public onDestroy()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, LBg0;->U:Z

    .line 2
    iget-object v0, p0, LBg0;->Q:LDc1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->destroy()V

    .line 4
    iput-object v1, p0, LBg0;->Q:LDc1;

    .line 5
    :cond_0
    iget-object v0, p0, LBg0;->R:LBd1;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, LBd1;->a()V

    .line 7
    iput-object v1, p0, LBg0;->R:LBd1;

    .line 8
    :cond_1
    invoke-super {p0}, LOY;->onDestroy()V

    .line 9
    iget-object v0, p0, LBg0;->N:Lqg0;

    .line 10
    iget-object v1, v0, Lqg0;->e:LWT;

    invoke-virtual {v1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti0;

    .line 11
    invoke-interface {v2}, Lti0;->destroy()V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v1, v0, Lqg0;->a:LWT;

    invoke-virtual {v1}, LWT;->clear()V

    .line 13
    iget-object v1, v0, Lqg0;->c:LWT;

    invoke-virtual {v1}, LWT;->clear()V

    .line 14
    iget-object v1, v0, Lqg0;->d:LWT;

    invoke-virtual {v1}, LWT;->clear()V

    .line 15
    iget-object v1, v0, Lqg0;->b:LWT;

    invoke-virtual {v1}, LWT;->clear()V

    .line 16
    iget-object v1, v0, Lqg0;->f:LWT;

    invoke-virtual {v1}, LWT;->clear()V

    .line 17
    iget-object v1, v0, Lqg0;->g:LWT;

    invoke-virtual {v1}, LWT;->clear()V

    .line 18
    iget-object v1, v0, Lqg0;->h:LWT;

    invoke-virtual {v1}, LWT;->clear()V

    .line 19
    iget-object v1, v0, Lqg0;->i:LWT;

    invoke-virtual {v1}, LWT;->clear()V

    .line 20
    iget-object v0, v0, Lqg0;->e:LWT;

    invoke-virtual {v0}, LWT;->clear()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, LD2;->y:LF2;

    .line 2
    iget-object v0, v0, LF2;->a:LG2;

    iget-object v0, v0, LG2;->d:LY2;

    invoke-virtual {v0, p1}, LY2;->a(Z)V

    .line 3
    iget-object v0, p0, LBg0;->O:Lol0;

    .line 4
    iget-object v0, v0, Lol0;->b:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lml0;

    .line 5
    invoke-interface {v1, p1}, Lml0;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, LBg0;->M:Lfh0;

    .line 2
    iget-boolean v1, v0, Lfh0;->i:Z

    if-eqz v1, :cond_1

    .line 3
    iget-object v0, v0, Lfh0;->a:LGg0;

    invoke-interface {v0, p1}, LGg0;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, v0, Lfh0;->d:Ljava/util/List;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lfh0;->d:Ljava/util/List;

    .line 5
    :cond_2
    iget-object v0, v0, Lfh0;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    iget-object v0, p0, LBg0;->M:Lfh0;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lfh0;->c:Z

    .line 3
    iget-boolean v1, v0, Lfh0;->i:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lfh0;->a:LGg0;

    invoke-interface {v0}, LGg0;->c()V

    .line 4
    :cond_0
    invoke-super {p0}, LD2;->onPause()V

    .line 5
    iget-object v0, p0, LBg0;->d0:LAg0;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, LAg0;->a:Z

    :cond_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    iget-object v0, p0, LBg0;->Q:LDc1;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/ui/base/WindowAndroid;->handlePermissionResult(I[Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, LD2;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, LD2;->onResume()V

    .line 2
    iget-boolean v0, p0, LBg0;->Y:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, LBg0;->Y:Z

    .line 4
    iget-object v1, p0, LBg0;->M:Lfh0;

    .line 5
    iget-boolean v2, v1, Lfh0;->i:Z

    if-eqz v2, :cond_0

    .line 6
    iget-object v1, v1, Lfh0;->a:LGg0;

    invoke-interface {v1}, LGg0;->a()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 7
    iput-boolean v2, v1, Lfh0;->c:Z

    .line 8
    :goto_0
    iget-object v1, p0, LBg0;->d0:LAg0;

    if-eqz v1, :cond_1

    .line 9
    iput-boolean v0, v1, LAg0;->a:Z

    .line 10
    invoke-virtual {v1}, LAg0;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, LQ8;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, LBg0;->Q:LDc1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/chromium/ui/base/WindowAndroid;->saveInstanceState(Landroid/os/Bundle;)V

    .line 3
    :cond_0
    iget-object v0, p0, LBg0;->N:Lqg0;

    .line 4
    iget-object v0, v0, Lqg0;->f:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyi0;

    .line 5
    invoke-interface {v1, p1}, Lyi0;->a(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, LQ8;->onStart()V

    .line 2
    iget-object v0, p0, LBg0;->M:Lfh0;

    .line 3
    iget-boolean v1, v0, Lfh0;->i:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lfh0;->b()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Lfh0;->b:Z

    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, LQ8;->onStop()V

    .line 2
    iget-object v0, p0, LBg0;->M:Lfh0;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lfh0;->b:Z

    .line 4
    iget-boolean v1, v0, Lfh0;->i:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, v0, Lfh0;->a:LGg0;

    invoke-interface {v0}, LGg0;->g()V

    :goto_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, LBg0;->V:J

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    iget-object v0, p0, LBg0;->N:Lqg0;

    .line 3
    iget-object v0, v0, Lqg0;->g:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LAi0;

    .line 4
    invoke-interface {v1, p1}, LAi0;->onWindowFocusChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final r()V
    .locals 2

    .line 1
    iget-object v0, p0, LBg0;->N:Lqg0;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, LUg0;->a(Landroid/content/Context;)LUg0;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, LUg0;->a(ZLCg0;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0
.end method

.method public t()V
    .locals 0

    .line 1
    invoke-interface {p0}, LCg0;->l()V

    return-void
.end method

.method public u()V
    .locals 4

    const-string v0, "maybePreconnect"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {v0, v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "android.intent.action.VIEW"

    .line 3
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v1}, LqZ;->h(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 5
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    :try_start_1
    invoke-static {}, Li00;->a()Li00;

    move-result-object v2

    .line 7
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v3

    .line 8
    invoke-virtual {v2, v3, v1}, Li00;->a(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    throw v1
.end method

.method public v()V
    .locals 0

    return-void
.end method

.method public final w()V
    .locals 9

    .line 1
    invoke-virtual {p0}, LBg0;->U()V

    .line 2
    iget-object v0, p0, LBg0;->N:Lqg0;

    .line 3
    iget-object v0, v0, Lqg0;->a:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lui0;

    .line 4
    check-cast v1, LYL0;

    .line 5
    iget-object v2, v1, LYL0;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/ChromeActivity;->o1()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 6
    iget-object v4, v1, LYL0;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 7
    invoke-virtual {v4}, LBg0;->M()Lqi0;

    move-result-object v5

    iget-object v2, v1, LYL0;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/ChromeActivity;->O0()LkK0;

    move-result-object v6

    iget-object v7, v1, LYL0;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 8
    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    .line 9
    new-instance v2, LE00;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, LE00;-><init>(Landroid/content/Context;Lqi0;LO00;LF00;Landroid/view/View;)V

    .line 10
    iput-object v2, v1, LYL0;->x:LA00;

    .line 11
    iget-object v2, v1, LYL0;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/ChromeActivity;->O0()LkK0;

    move-result-object v2

    iget-object v3, v1, LYL0;->x:LA00;

    .line 12
    check-cast v3, LE00;

    .line 13
    iget-object v4, v3, LE00;->e:LI00;

    .line 14
    iget-object v3, v3, LE00;->d:LK00;

    const/4 v5, 0x0

    if-eqz v2, :cond_9

    .line 15
    new-instance v6, LgK0;

    invoke-direct {v6, v2, v4}, LgK0;-><init>(LkK0;LH00;)V

    .line 16
    iput-object v6, v2, LkK0;->E:LjK0;

    .line 17
    iput-object v4, v2, LkK0;->n0:LH00;

    .line 18
    new-instance v6, LXJ0;

    invoke-direct {v6, v2}, LXJ0;-><init>(LkK0;)V

    .line 19
    iget-object v4, v4, LI00;->A:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v4, v2, LkK0;->n0:LH00;

    check-cast v4, LI00;

    if-eqz v4, :cond_8

    .line 21
    new-instance v6, Lz00;

    invoke-direct {v6, v4}, Lz00;-><init>(LI00;)V

    .line 22
    iput-object v6, v2, LkK0;->h0:Ly00;

    .line 23
    iget-boolean v4, v2, LkK0;->m0:Z

    .line 24
    iput-boolean v4, v6, Lz00;->z:Z

    .line 25
    new-instance v4, LWJ0;

    invoke-direct {v4, v2}, LWJ0;-><init>(LkK0;)V

    .line 26
    iput-object v4, v6, Lz00;->x:Ljava/lang/Runnable;

    .line 27
    iget-object v4, v2, LkK0;->A:LfL0;

    iget-object v6, v2, LkK0;->h0:Ly00;

    .line 28
    iget-object v7, v4, LfL0;->a:LQK0;

    .line 29
    iget-object v8, v7, LQK0;->z:Lorg/chromium/chrome/browser/toolbar/MenuButton;

    if-eqz v8, :cond_1

    .line 30
    iput-object v6, v8, Lorg/chromium/chrome/browser/toolbar/MenuButton;->z:Ly00;

    .line 31
    iget-object v7, v8, Lorg/chromium/chrome/browser/toolbar/MenuButton;->w:Landroid/widget/ImageButton;

    .line 32
    invoke-virtual {v7, v6}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 33
    iget-object v8, v8, Lorg/chromium/chrome/browser/toolbar/MenuButton;->z:Ly00;

    check-cast v8, Lz00;

    if-eqz v8, :cond_0

    invoke-virtual {v7, v8}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_1

    .line 34
    :cond_0
    throw v5

    .line 35
    :cond_1
    invoke-virtual {v7}, LQK0;->g()Landroid/widget/ImageButton;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 36
    invoke-virtual {v7, v6}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 37
    move-object v8, v6

    check-cast v8, Lz00;

    if-eqz v8, :cond_2

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_1

    .line 38
    :cond_2
    throw v5

    .line 39
    :cond_3
    :goto_1
    iget-object v4, v4, LfL0;->b:LIK0;

    if-eqz v4, :cond_6

    .line 40
    iget-object v4, v4, LIK0;->w:Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;

    if-eqz v4, :cond_6

    .line 41
    iget-object v7, v4, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->C:Lorg/chromium/chrome/browser/toolbar/MenuButton;

    if-nez v7, :cond_4

    goto :goto_2

    .line 42
    :cond_4
    iget-object v7, v7, Lorg/chromium/chrome/browser/toolbar/MenuButton;->w:Landroid/widget/ImageButton;

    .line 43
    invoke-virtual {v7, v6}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 44
    iget-object v4, v4, Lorg/chromium/chrome/browser/toolbar/top/TabSwitcherModeTTPhone;->C:Lorg/chromium/chrome/browser/toolbar/MenuButton;

    .line 45
    iget-object v4, v4, Lorg/chromium/chrome/browser/toolbar/MenuButton;->w:Landroid/widget/ImageButton;

    .line 46
    check-cast v6, Lz00;

    if-eqz v6, :cond_5

    .line 47
    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_2

    .line 48
    :cond_5
    throw v5

    .line 49
    :cond_6
    :goto_2
    iput-object v3, v2, LkK0;->L:LK00;

    .line 50
    iget-object v2, v1, LYL0;->x:LA00;

    check-cast v2, LE00;

    .line 51
    iget-object v2, v2, LE00;->e:LI00;

    .line 52
    iget-object v3, v2, LI00;->z:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v2, v2, LI00;->z:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_7
    iget-object v2, v1, LYL0;->x:LA00;

    iget-object v3, v1, LYL0;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    check-cast v2, LE00;

    .line 54
    iget-object v2, v2, LE00;->e:LI00;

    .line 55
    iget-object v4, v2, LI00;->z:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v2, v2, LI00;->z:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 56
    :cond_8
    throw v5

    .line 57
    :cond_9
    throw v5

    .line 58
    :cond_a
    iget-object v2, v1, LYL0;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/ChromeActivity;->O0()LkK0;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 59
    iget-object v2, v1, LYL0;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/ChromeActivity;->O0()LkK0;

    move-result-object v2

    .line 60
    iget-object v2, v2, LkK0;->A:LfL0;

    .line 61
    iget-object v2, v2, LfL0;->a:LQK0;

    invoke-virtual {v2}, LQK0;->d()V

    .line 62
    :cond_b
    :goto_3
    iget-object v2, v1, LYL0;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/ChromeActivity;->p1()Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_4

    :cond_c
    const v2, 0x7f0b01d0

    .line 63
    iget-object v3, v1, LYL0;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-static {v3}, Lorg/chromium/ui/base/DeviceFormFactor;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_d

    const v2, 0x7f0b01d1

    .line 64
    :cond_d
    new-instance v3, Lxc0;

    iget-object v4, v1, LYL0;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v4, v2}, LQ8;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iget-object v4, v1, LYL0;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 65
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()LpI0;

    move-result-object v4

    iget-object v5, v1, LYL0;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v5}, LBg0;->Q()LDc1;

    move-result-object v5

    iget-object v6, v1, LYL0;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 66
    invoke-virtual {v6}, Lorg/chromium/chrome/browser/ChromeActivity;->O0()LkK0;

    move-result-object v6

    .line 67
    iget-object v6, v6, LkK0;->U:LKK0;

    .line 68
    invoke-direct {v3, v2, v4, v5, v6}, Lxc0;-><init>(Landroid/view/ViewStub;LpI0;Lorg/chromium/ui/base/WindowAndroid;Landroid/view/ActionMode$Callback;)V

    iput-object v3, v1, LYL0;->z:Lxc0;

    .line 69
    new-instance v2, LXL0;

    invoke-direct {v2, v1}, LXL0;-><init>(LYL0;)V

    iput-object v2, v1, LYL0;->A:Lyc0;

    .line 70
    iget-object v3, v1, LYL0;->z:Lxc0;

    .line 71
    iget-object v3, v3, Lxc0;->f:LWT;

    invoke-virtual {v3, v2}, LWT;->a(Ljava/lang/Object;)Z

    .line 72
    iget-object v2, v1, LYL0;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/ChromeActivity;->O0()LkK0;

    move-result-object v2

    iget-object v3, v1, LYL0;->z:Lxc0;

    .line 73
    iput-object v3, v2, LkK0;->K:Lxc0;

    .line 74
    iget-object v2, v2, LkK0;->P:Lyc0;

    .line 75
    iget-object v3, v3, Lxc0;->f:LWT;

    invoke-virtual {v3, v2}, LWT;->a(Ljava/lang/Object;)Z

    .line 76
    :goto_4
    new-instance v2, LVL0;

    invoke-direct {v2, v1}, LVL0;-><init>(LYL0;)V

    iput-object v2, v1, LYL0;->E:LSO0;

    .line 77
    sget-object v1, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_e
    return-void
.end method

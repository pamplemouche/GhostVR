.class public final LgX0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbd1;
.implements LxU;


# instance fields
.field public A:I

.field public B:F

.field public final w:LWT;

.field public x:Lorg/chromium/ui/base/WindowAndroid;

.field public y:LbX0;

.field public z:Z


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/content_public/browser/WebContents;LdX0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, LWT;

    invoke-direct {p2}, LWT;-><init>()V

    iput-object p2, p0, LgX0;->w:LWT;

    .line 3
    invoke-static {p1}, LbX0;->a(Lorg/chromium/content_public/browser/WebContents;)LbX0;

    move-result-object p2

    iput-object p2, p0, LgX0;->y:LbX0;

    .line 4
    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->t()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p0, p2}, LgX0;->a(Lorg/chromium/ui/base/WindowAndroid;)V

    .line 6
    :cond_0
    check-cast p1, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 7
    iget-object p2, p0, LgX0;->w:LWT;

    invoke-virtual {p2, p1}, LWT;->a(Ljava/lang/Object;)Z

    .line 8
    iget-boolean p2, p0, LgX0;->z:Z

    if-eqz p2, :cond_1

    invoke-interface {p1}, LcX0;->onAttachedToWindow()V

    :cond_1
    return-void
.end method

.method public static a(Lorg/chromium/content_public/browser/WebContents;)LgX0;
    .locals 2

    .line 1
    check-cast p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    const-class v0, LgX0;

    .line 2
    sget-object v1, LfX0;->a:Lt01;

    .line 3
    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->a(Ljava/lang/Class;Lt01;)LxU;

    move-result-object p0

    check-cast p0, LgX0;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 10
    iget-boolean v0, p0, LgX0;->z:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, LgX0;->x:Lorg/chromium/ui/base/WindowAndroid;

    if-nez v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getDisplay()Lcd1;

    move-result-object v0

    .line 12
    iget-object v1, v0, Lcd1;->a:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget v1, v0, Lcd1;->g:I

    .line 14
    invoke-virtual {p0, v1}, LgX0;->onRotationChanged(I)V

    .line 15
    iget v0, v0, Lcd1;->d:F

    .line 16
    invoke-virtual {p0, v0}, LgX0;->onDIPScaleChanged(F)V

    .line 17
    :cond_1
    :goto_0
    iget-boolean v0, p0, LgX0;->z:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, LgX0;->x:Lorg/chromium/ui/base/WindowAndroid;

    if-nez v0, :cond_2

    goto :goto_1

    .line 18
    :cond_2
    iget-object v1, p0, LgX0;->y:LbX0;

    invoke-virtual {v0, v1}, Lorg/chromium/ui/base/WindowAndroid;->addActivityStateObserver(LVc1;)V

    .line 19
    iget-object v0, p0, LgX0;->x:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getActivityState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 20
    iget-object v0, p0, LgX0;->y:LbX0;

    .line 21
    iget-boolean v1, v0, LbX0;->y:Z

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 22
    iput-boolean v1, v0, LbX0;->y:Z

    .line 23
    invoke-virtual {v0}, LbX0;->c()V

    :cond_4
    :goto_1
    return-void
.end method

.method public a(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 2

    .line 4
    iget-object v0, p0, LgX0;->x:Lorg/chromium/ui/base/WindowAndroid;

    if-ne p1, v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, LgX0;->b()V

    .line 6
    iput-object p1, p0, LgX0;->x:Lorg/chromium/ui/base/WindowAndroid;

    .line 7
    invoke-virtual {p0}, LgX0;->a()V

    .line 8
    iget-object v0, p0, LgX0;->w:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LcX0;

    .line 9
    invoke-interface {v1, p1}, LcX0;->a(Lorg/chromium/ui/base/WindowAndroid;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, LgX0;->x:Lorg/chromium/ui/base/WindowAndroid;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getDisplay()Lcd1;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcd1;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :goto_0
    iget-boolean v0, p0, LgX0;->z:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, LgX0;->x:Lorg/chromium/ui/base/WindowAndroid;

    if-nez v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v1, p0, LgX0;->y:LbX0;

    invoke-virtual {v0, v1}, Lorg/chromium/ui/base/WindowAndroid;->removeActivityStateObserver(LVc1;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public onCurrentModeChanged(Landroid/view/Display$Mode;)V
    .locals 0

    return-void
.end method

.method public onDIPScaleChanged(F)V
    .locals 2

    .line 1
    iget v0, p0, LgX0;->B:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, LgX0;->B:F

    .line 3
    iget-object v0, p0, LgX0;->w:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LcX0;

    .line 4
    invoke-interface {v1, p1}, Lbd1;->onDIPScaleChanged(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDisplayModesChanged(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public onRefreshRateChanged(F)V
    .locals 0

    return-void
.end method

.method public onRotationChanged(I)V
    .locals 2

    .line 1
    iget v0, p0, LgX0;->A:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, LgX0;->A:I

    .line 3
    iget-object v0, p0, LgX0;->w:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LcX0;

    .line 4
    invoke-interface {v1, p1}, Lbd1;->onRotationChanged(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

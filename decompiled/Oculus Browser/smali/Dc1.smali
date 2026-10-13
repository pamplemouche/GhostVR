.class public LDc1;
.super LJc1;
.source "PG"

# interfaces
.implements LkT;


# instance fields
.field public y:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, LJc1;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {p1}, LzT;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, LDc1;->y:Z

    .line 4
    invoke-static {p0, p1}, Lorg/chromium/base/ApplicationStatus;->a(LkT;Landroid/app/Activity;)V

    .line 5
    invoke-virtual {p0}, LDc1;->f()LCc1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/WindowAndroid;->setKeyboardDelegate(Lrc1;)V

    .line 6
    invoke-virtual {p0}, LDc1;->e()LBc1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/WindowAndroid;->setAndroidPermissionDelegate(LEc1;)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context is not and does not wrap an Activity"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public e()LBc1;
    .locals 2

    .line 1
    new-instance v0, LBc1;

    invoke-virtual {p0}, LDc1;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-direct {v0, v1}, LBc1;-><init>(Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method

.method public f()LCc1;
    .locals 2

    .line 1
    new-instance v0, LCc1;

    invoke-virtual {p0}, LDc1;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-direct {v0, v1}, LCc1;-><init>(Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method

.method public getActivity()Ljava/lang/ref/WeakReference;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, LzT;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getActivityState()I
    .locals 1

    .line 1
    iget-boolean v0, p0, LDc1;->y:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LDc1;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lorg/chromium/base/ApplicationStatus;->a(Landroid/app/Activity;)I

    move-result v0

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0}, Lorg/chromium/ui/base/WindowAndroid;->getActivityState()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getKeyboardDelegate()LCc1;
    .locals 1

    .line 2
    invoke-super {p0}, Lorg/chromium/ui/base/WindowAndroid;->getKeyboardDelegate()Lrc1;

    move-result-object v0

    check-cast v0, LCc1;

    return-object v0
.end method

.method public getKeyboardDelegate()Lrc1;
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/chromium/ui/base/WindowAndroid;->getKeyboardDelegate()Lrc1;

    move-result-object v0

    check-cast v0, LCc1;

    return-object v0
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->onActivityStopped()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->onActivityStarted()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    if-ne p2, p1, :cond_2

    .line 3
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->onActivityPaused()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    if-ne p2, p1, :cond_3

    .line 4
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->onActivityResumed()V

    :cond_3
    :goto_0
    return-void
.end method

.class public Lcom/oculus/browser/VrWindowAndroid;
.super Lorg/chromium/ui/base/WindowAndroid;
.source "PG"

# interfaces
.implements LkT;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcd1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/chromium/ui/base/WindowAndroid;-><init>(Landroid/content/Context;Lcd1;)V

    .line 2
    invoke-static {p1}, LzT;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p0, p1}, Lorg/chromium/base/ApplicationStatus;->a(LkT;Landroid/app/Activity;)V

    .line 4
    new-instance p1, Lcom/oculus/browser/VrWindowAndroid$ActivityAndroidPermissionDelegate;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/oculus/browser/VrWindowAndroid$ActivityAndroidPermissionDelegate;-><init>(Lcom/oculus/browser/VrWindowAndroid;Lcom/oculus/browser/VrWindowAndroid$1;)V

    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/WindowAndroid;->setAndroidPermissionDelegate(LEc1;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context is not and does not wrap an Activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public cancelIntent(I)V
    .locals 0

    return-void
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

    :cond_1
    :goto_0
    return-void
.end method

.method public showCancelableIntent(Landroid/app/PendingIntent;LWc1;Ljava/lang/Integer;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public showCancelableIntent(Landroid/content/Intent;LWc1;Ljava/lang/Integer;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public showCancelableIntent(Lorg/chromium/base/Callback;LWc1;Ljava/lang/Integer;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

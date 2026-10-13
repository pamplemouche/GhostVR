.class public abstract LJc1;
.super Lorg/chromium/ui/base/WindowAndroid;
.source "PG"


# instance fields
.field public w:I

.field public x:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/chromium/ui/base/WindowAndroid;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, LJc1;->x:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final a(ILWc1;Ljava/lang/Integer;)V
    .locals 1

    .line 1
    iget-object v0, p0, LJc1;->x:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2
    iget-object p2, p0, Lorg/chromium/ui/base/WindowAndroid;->mIntentErrors:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 5
    :goto_0
    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public cancelIntent(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->finishActivity(I)V

    return-void
.end method

.method public final d()I
    .locals 2

    .line 1
    iget v0, p0, LJc1;->w:I

    add-int/lit16 v1, v0, 0x3e8

    add-int/lit8 v0, v0, 0x1

    .line 2
    rem-int/lit8 v0, v0, 0x64

    iput v0, p0, LJc1;->w:I

    return v1
.end method

.method public removeIntentCallback(LWc1;)Z
    .locals 1

    .line 1
    iget-object v0, p0, LJc1;->x:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, LJc1;->x:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mIntentErrors:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public showCancelableIntent(Landroid/app/PendingIntent;LWc1;Ljava/lang/Integer;)I
    .locals 8

    .line 1
    invoke-virtual {p0}, LJc1;->d()I

    move-result v7

    .line 2
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    move-object p1, p0

    check-cast p1, LDc1;

    .line 3
    invoke-virtual {p1}, LDc1;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    const/4 p1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, v7

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    :catch_0
    :goto_0
    if-nez p1, :cond_1

    const/4 p1, -0x1

    return p1

    .line 5
    :cond_1
    invoke-virtual {p0, v7, p2, p3}, LJc1;->a(ILWc1;Ljava/lang/Integer;)V

    return v7
.end method

.method public showCancelableIntent(Landroid/content/Intent;LWc1;Ljava/lang/Integer;)I
    .locals 3

    .line 6
    invoke-virtual {p0}, LJc1;->d()I

    move-result v0

    .line 7
    move-object v1, p0

    check-cast v1, LDc1;

    .line 8
    invoke-virtual {v1}, LDc1;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {v1, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    :catch_0
    :goto_0
    if-nez v2, :cond_1

    const/4 p1, -0x1

    return p1

    .line 10
    :cond_1
    invoke-virtual {p0, v0, p2, p3}, LJc1;->a(ILWc1;Ljava/lang/Integer;)V

    return v0
.end method

.method public showCancelableIntent(Lorg/chromium/base/Callback;LWc1;Ljava/lang/Integer;)I
    .locals 2

    .line 11
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 12
    :cond_0
    invoke-virtual {p0}, LJc1;->d()I

    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p0, v0, p2, p3}, LJc1;->a(ILWc1;Ljava/lang/Integer;)V

    return v0
.end method

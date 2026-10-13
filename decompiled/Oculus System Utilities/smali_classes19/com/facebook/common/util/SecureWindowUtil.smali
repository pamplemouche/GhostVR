.class public Lcom/facebook/common/util/SecureWindowUtil;
.super Ljava/lang/Object;
.source "SecureWindowUtil.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustSecureWindowFlag(ZLandroid/app/Activity;)Z
    .locals 1
    .param p0, "flagSecure"    # Z
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/facebook/common/util/SecureWindowUtil;->adjustSecureWindowFlagInternal(ZLandroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public static adjustSecureWindowFlag(ZLandroid/app/Activity;Z)Z
    .locals 5
    .param p0, "flagSecure"    # Z
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "redrawWindow"    # Z

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/facebook/common/util/SecureWindowUtil;->adjustSecureWindowFlagInternal(ZLandroid/app/Activity;)Z

    move-result v0

    .line 55
    .local v0, "didFlagChange":Z
    if-eqz p2, :cond_0

    if-nez v0, :cond_1

    .line 69
    .end local v0    # "didFlagChange":Z
    :cond_0
    :goto_0
    return v0

    .line 62
    .restart local v0    # "didFlagChange":Z
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 63
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 64
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 65
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 66
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static adjustSecureWindowFlagAndRecreateActivity(ZLandroid/app/Activity;)Z
    .locals 1
    .param p0, "flagSecure"    # Z
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 85
    invoke-static {p0, p1}, Lcom/facebook/common/util/SecureWindowUtil;->adjustSecureWindowFlagInternal(ZLandroid/app/Activity;)Z

    move-result v0

    .line 86
    .local v0, "didFlagChange":Z
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    .line 89
    :cond_0
    return v0
.end method

.method private static adjustSecureWindowFlagInternal(ZLandroid/app/Activity;)Z
    .locals 7
    .param p0, "flagSecure"    # Z
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v6, 0x2000

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 100
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    if-nez v5, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v3

    .line 104
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 105
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 106
    .local v0, "flags":I
    and-int/lit16 v5, v0, 0x2000

    if-eqz v5, :cond_2

    move v1, v4

    .line 107
    .local v1, "isWindowSecure":Z
    :goto_1
    if-eq p0, v1, :cond_0

    .line 112
    if-eqz p0, :cond_3

    .line 113
    invoke-virtual {v2, v6}, Landroid/view/Window;->addFlags(I)V

    :goto_2
    move v3, v4

    .line 118
    goto :goto_0

    .end local v1    # "isWindowSecure":Z
    :cond_2
    move v1, v3

    .line 106
    goto :goto_1

    .line 115
    .restart local v1    # "isWindowSecure":Z
    :cond_3
    invoke-virtual {v2, v6}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_2
.end method

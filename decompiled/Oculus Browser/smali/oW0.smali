.class public LoW0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LcX0;
.implements LxU;


# instance fields
.field public final w:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->h()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, LoW0;->w:Landroid/content/Context;

    .line 3
    invoke-static {p1}, LgX0;->a(Lorg/chromium/content_public/browser/WebContents;)LgX0;

    move-result-object p1

    .line 4
    iget-object v0, p1, LgX0;->w:LWT;

    invoke-virtual {v0, p0}, LWT;->a(Ljava/lang/Object;)Z

    .line 5
    iget-boolean p1, p1, LgX0;->z:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LoW0;->onAttachedToWindow()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0

    return-void
.end method

.method public a(ZZ)V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, LoW0;->w:Landroid/content/Context;

    .line 2
    sget-object v1, LK11;->a:Lorg/chromium/device/gamepad/GamepadList;

    .line 3
    invoke-virtual {v1, v0}, Lorg/chromium/device/gamepad/GamepadList;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onCurrentModeChanged(Landroid/view/Display$Mode;)V
    .locals 0

    return-void
.end method

.method public onDIPScaleChanged(F)V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    sget-object v0, LK11;->a:Lorg/chromium/device/gamepad/GamepadList;

    .line 2
    invoke-virtual {v0}, Lorg/chromium/device/gamepad/GamepadList;->a()V

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
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method

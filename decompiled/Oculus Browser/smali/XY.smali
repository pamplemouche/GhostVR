.class public LXY;
.super LDc1;
.source "PG"


# static fields
.field public static z:LWY;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, LUY;->a:LWY;

    sput-object v0, LXY;->z:LWY;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LDc1;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public e()LBc1;
    .locals 2

    .line 1
    new-instance v0, LVY;

    invoke-virtual {p0}, LDc1;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-direct {v0, p0, v1}, LVY;-><init>(LXY;Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method

.method public f()LCc1;
    .locals 2

    .line 1
    sget-object v0, LXY;->z:LWY;

    invoke-virtual {p0}, LDc1;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    check-cast v0, LUY;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, LQY;

    invoke-direct {v0, v1}, LQY;-><init>(Ljava/lang/ref/WeakReference;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public getReadbackView()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, LDc1;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ChromeActivity;

    .line 2
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->r0()Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->r0()Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->A:Lorg/chromium/chrome/browser/compositor/CompositorView;

    .line 5
    iget-object v0, v0, Lorg/chromium/chrome/browser/compositor/CompositorView;->x:LK20;

    check-cast v0, LP20;

    .line 6
    iget-object v0, v0, LP20;->y:LO20;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v0, LO20;->a:Landroid/view/SurfaceView;

    :goto_0
    return-object v2
.end method

.method public showCallbackNonExistentError(Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, LDc1;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->k0()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v1, v0

    if-eqz v1, :cond_1

    const/16 v3, 0x3c

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p1

    .line 3
    invoke-static/range {v1 .. v9}, Lorg/chromium/chrome/browser/infobar/SimpleConfirmInfoBarBuilder;->a(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/infobar/SimpleConfirmInfoBarBuilder$Listener;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 4
    :cond_1
    invoke-super {p0, p1}, Lorg/chromium/ui/base/WindowAndroid;->showCallbackNonExistentError(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

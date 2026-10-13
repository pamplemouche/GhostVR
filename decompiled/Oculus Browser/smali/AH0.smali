.class public LAH0;
.super Lorg/chromium/ui/base/ViewAndroidDelegate;
.source "PG"


# instance fields
.field public final d:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lorg/chromium/ui/base/ViewAndroidDelegate;-><init>(Landroid/view/ViewGroup;)V

    .line 2
    iput-object p1, p0, LAH0;->d:Lorg/chromium/chrome/browser/tab/Tab;

    return-void
.end method


# virtual methods
.method public getViewportInsetBottom()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBackgroundColorChanged(I)V
    .locals 3

    .line 1
    iget-object v0, p0, LAH0;->d:Lorg/chromium/chrome/browser/tab/Tab;

    .line 2
    iget-object v1, v0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LpH0;

    invoke-interface {v2, v0, p1}, LpH0;->onBackgroundColorChanged(Lorg/chromium/chrome/browser/tab/Tab;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onBottomControlsChanged(II)V
    .locals 0

    .line 1
    iget-object p2, p0, LAH0;->d:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-static {p2}, LgH0;->a(Lorg/chromium/chrome/browser/tab/Tab;)LgH0;

    move-result-object p2

    .line 2
    iput p1, p2, LgH0;->C:I

    .line 3
    invoke-virtual {p2}, LgH0;->d()V

    return-void
.end method

.method public onTopControlsChanged(II)V
    .locals 1

    .line 1
    iget-object v0, p0, LAH0;->d:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-static {v0}, LgH0;->a(Lorg/chromium/chrome/browser/tab/Tab;)LgH0;

    move-result-object v0

    .line 2
    iput p1, v0, LgH0;->B:I

    .line 3
    iput p2, v0, LgH0;->D:I

    .line 4
    invoke-virtual {v0}, LgH0;->d()V

    return-void
.end method

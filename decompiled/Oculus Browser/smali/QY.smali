.class public LQY;
.super LIh0;
.source "PG"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LQY;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LIh0;-><init>(Ljava/lang/ref/WeakReference;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/View;)Z
    .locals 1

    .line 4
    invoke-virtual {p0}, LQY;->c()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    .line 5
    invoke-super {p0, p1, p2}, LIh0;->a(Landroid/content/Context;Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->D0()V

    const/4 p1, 0x0

    throw p1

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public a(Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, LQY;->c()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    invoke-super {p0, p1}, Lrc1;->a(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1

    .line 3
    :cond_1
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->D0()V

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic c()Landroid/app/Activity;
    .locals 1

    .line 1
    invoke-virtual {p0}, LQY;->c()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    return-object v0
.end method

.method public c()Lorg/chromium/chrome/browser/ChromeActivity;
    .locals 1

    .line 2
    invoke-super {p0}, LCc1;->c()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ChromeActivity;

    return-object v0
.end method

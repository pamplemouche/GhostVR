.class public abstract synthetic LoI0;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Lorg/chromium/chrome/browser/tab/Tab;)LpI0;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()LpI0;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_1
    iget-object p0, p0, Lorg/chromium/chrome/browser/tab/Tab;->H:LeI0;

    if-eqz p0, :cond_2

    .line 4
    invoke-interface {p0}, LeI0;->getTabModelSelector()LpI0;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

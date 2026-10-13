.class public abstract LFI0;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(LdI0;)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 2

    .line 3
    invoke-interface {p0}, LdI0;->index()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    invoke-interface {p0, v0}, LdI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p0

    return-object p0
.end method

.method public static a(LdI0;I)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .line 1
    invoke-static {p0, p1}, LFI0;->b(LdI0;I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-interface {p0, p1}, LdI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p0

    return-object p0
.end method

.method public static b(LdI0;I)I
    .locals 3

    .line 1
    invoke-interface {p0}, LdI0;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-interface {p0, v1}, LdI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

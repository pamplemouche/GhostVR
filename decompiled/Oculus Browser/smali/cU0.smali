.class public abstract LcU0;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(ZLjava/lang/String;)LbU0;
    .locals 1

    if-eqz p0, :cond_0

    const-string p0, "LEGACY_OFFLINE_PAGE"

    goto :goto_0

    :cond_0
    const-string p0, "LEGACY_DOWNLOAD"

    .line 1
    :goto_0
    new-instance v0, LbU0;

    invoke-direct {v0, p0, p1}, LbU0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(LbU0;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 2
    iget-object p0, p0, LbU0;->a:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v0, "LEGACY_DOWNLOAD"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(LbU0;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    iget-object p0, p0, LbU0;->a:Ljava/lang/String;

    const-string v0, "LEGACY_OFFLINE_PAGE"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

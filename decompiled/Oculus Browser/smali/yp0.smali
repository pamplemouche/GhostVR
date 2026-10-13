.class public abstract Lyp0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Lxp0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lxp0;

    invoke-direct {v0}, Lxp0;-><init>()V

    sput-object v0, Lyp0;->a:Lxp0;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 5

    .line 6
    invoke-static {}, LcD0;->a()Lorg/chromium/components/search_engines/TemplateUrlService;

    move-result-object v0

    .line 7
    iget-wide v1, v0, Lorg/chromium/components/search_engines/TemplateUrlService;->c:J

    const-string v3, "replace_me"

    .line 8
    invoke-static {v1, v2, v0, v3}, LJ/N;->Mweksmrf(JLjava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {v0}, LFO0;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Landroid/net/Uri;->getPort()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    const-string v2, ":"

    invoke-static {v2}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->getPort()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static a(LPJ0;)Z
    .locals 1

    .line 4
    invoke-interface {p0}, LPJ0;->d()LMm0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {p0}, LPJ0;->e()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LMm0;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {}, Lyp0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, LFO0;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static a(Z)Z
    .locals 1

    .line 1
    sget-object v0, Lyp0;->a:Lxp0;

    invoke-virtual {v0, p0}, Lxp0;->a(Z)Z

    move-result p0

    return p0
.end method

.method public static b()Z
    .locals 1

    .line 1
    sget-object v0, Lyp0;->a:Lxp0;

    invoke-virtual {v0}, Lxp0;->a()Z

    move-result v0

    return v0
.end method

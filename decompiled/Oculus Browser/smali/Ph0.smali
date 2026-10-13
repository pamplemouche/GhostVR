.class public LPh0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements La41;


# instance fields
.field public final w:LOh0;

.field public final x:Landroid/content/Context;

.field public final y:LSh0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LPh0;

    return-void
.end method

.method public constructor <init>(LOh0;Landroid/content/Context;LSh0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LPh0;->w:LOh0;

    .line 3
    iput-object p2, p0, LPh0;->x:Landroid/content/Context;

    .line 4
    iput-object p3, p0, LPh0;->y:LSh0;

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/pm/PackageManager;)Lorg/json/JSONArray;
    .locals 6

    const-string v0, ")."

    const-string v1, "Android package "

    const-string v2, "InstalledAppProvider"

    const/16 v3, 0x80

    .line 21
    invoke-virtual {p1, p0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 22
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v5, "asset_statements"

    .line 23
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 24
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    return-object p0

    .line 25
    :cond_1
    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p1

    const/4 v3, 0x0

    .line 26
    :try_start_0
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 27
    :try_start_1
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v5

    :catch_0
    const-string p1, " has JSON syntax error in asset statements resource (0x"

    .line 28
    invoke-static {v1, p0, p1}, LZi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 29
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    .line 30
    invoke-static {v2, p0, p1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    return-object p0

    :catch_1
    const-string p1, " missing asset statements resource (0x"

    .line 32
    invoke-static {v1, p0, p1}, LZi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 33
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    .line 34
    invoke-static {v2, p0, p1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    return-object p0

    .line 36
    :cond_2
    :goto_0
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/net/URI;Landroid/content/pm/PackageManager;)Z
    .locals 5

    .line 10
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->a()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 11
    :cond_0
    :try_start_0
    invoke-static {p0, p2}, LPh0;->a(Ljava/lang/String;Landroid/content/pm/PackageManager;)Lorg/json/JSONArray;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 p2, 0x0

    .line 12
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p2, v1, :cond_5

    .line 13
    :try_start_1
    invoke-virtual {p0, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v2, 0x0

    :try_start_2
    const-string v3, "target"

    .line 14
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    const-string v3, "namespace"

    .line 15
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v4, "web"

    .line 16
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    :catch_0
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_1

    goto :goto_2

    .line 17
    :cond_1
    :try_start_4
    new-instance v3, Ljava/net/URI;

    const-string v4, "site"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v2, v3

    :catch_1
    :goto_2
    if-eqz v2, :cond_4

    .line 18
    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_3

    .line 19
    :cond_2
    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 20
    invoke-virtual {v2}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_4

    return v3

    :catch_2
    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_3
    :cond_5
    return v0
.end method


# virtual methods
.method public a(Ly71;)V
    .locals 0

    return-void
.end method

.method public a([Lj41;LY31;)V
    .locals 2

    .line 1
    iget-object v0, p0, LPh0;->w:LOh0;

    check-cast v0, LKh0;

    .line 2
    iget-object v0, v0, LKh0;->a:Lorg/chromium/content_public/browser/RenderFrameHost;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/RenderFrameHost;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Lj41;

    .line 3
    check-cast p2, Lf41;

    invoke-virtual {p2, p1}, Lf41;->a(Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, LPh0;->w:LOh0;

    check-cast v0, LKh0;

    .line 5
    iget-object v0, v0, LKh0;->a:Lorg/chromium/content_public/browser/RenderFrameHost;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/RenderFrameHost;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 6
    :cond_1
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 7
    :goto_0
    new-instance v1, LNh0;

    invoke-direct {v1, p0, p1, v0, p2}, LNh0;-><init>(LPh0;[Lj41;Ljava/net/URI;LY31;)V

    sget-object p1, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 8
    invoke-virtual {v1, p1}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    return-void

    :catch_0
    move-exception p1

    .line 9
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public close()V
    .locals 0

    return-void
.end method

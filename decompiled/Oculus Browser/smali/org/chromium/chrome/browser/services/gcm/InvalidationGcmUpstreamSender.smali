.class public Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender;
.super LuD;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LuD;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    invoke-static {}, LHh0;->f()LHh0;

    move-result-object v0

    invoke-virtual {v0}, LHh0;->c()V

    .line 3
    invoke-static {}, LKU0;->d()LKU0;

    move-result-object v0

    invoke-virtual {v0}, LKU0;->b()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "InvalidationGcmUpstream"

    const-string p1, "No signed-in user; cannot send message to data center"

    .line 4
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacade;->get()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object v1

    new-instance v2, LND0;

    invoke-direct {v2, p0, p2, p3, p1}, LND0;-><init>(Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 6
    new-instance p0, LPU0;

    const-string p1, "oauth2:https://www.googleapis.com/auth/chromesync"

    invoke-direct {p0, v1, v0, p1, v2}, LPU0;-><init>(Lorg/chromium/components/signin/AccountManagerFacade;Landroid/accounts/Account;Ljava/lang/String;LUU0;)V

    invoke-static {p0}, LTU0;->a(LRU0;)V

    :goto_0
    return-void

    :cond_1
    const/4 p0, 0x0

    .line 7
    throw p0
.end method

.method public static synthetic a(Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)V
    .locals 6

    if-eqz p0, :cond_3

    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bearer "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "Authorization"

    invoke-virtual {p2, p3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 p0, 0xfa0

    const/4 v1, 0x1

    if-le v0, p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p3, 0x1

    :goto_1
    if-nez p3, :cond_2

    .line 11
    invoke-static {p4, v1}, LKD0;->a(Landroid/content/Context;I)V

    goto :goto_2

    .line 12
    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 13
    :try_start_0
    sget-object p0, LzT;->a:Landroid/content/Context;

    .line 14
    invoke-static {p0}, LEq;->a(Landroid/content/Context;)LEq;

    move-result-object v0

    const-wide/16 v3, 0x1

    move-object v1, p1

    move-object v5, p2

    .line 15
    invoke-virtual/range {v0 .. v5}, LEq;->a(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p0, "InvalidationGcmUpstream"

    const-string p1, "Send message failed"

    .line 16
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 17
    invoke-static {p4, p0}, LKD0;->a(Landroid/content/Context;I)V

    :goto_2
    return-void

    :cond_3
    const/4 p0, 0x0

    .line 18
    throw p0
.end method

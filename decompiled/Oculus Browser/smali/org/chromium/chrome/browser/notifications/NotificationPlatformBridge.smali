.class public Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final e:[I

.field public static f:Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;


# instance fields
.field public final a:J

.field public final b:Lam0;

.field public c:J

.field public d:Ls20;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 1
    sput-object v0, Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;->e:[I

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;->a:J

    .line 3
    sget-object p1, LzT;->a:Landroid/content/Context;

    .line 4
    new-instance p2, Lbm0;

    invoke-direct {p2, p1}, Lbm0;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;->b:Lam0;

    return-void
.end method

.method public static a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    const-string v0, "notification_reply"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0}, Landroid/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "key_text_reply"

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, "p#"

    .line 21
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "#"

    .line 22
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    .line 23
    :try_start_0
    new-instance v2, Ljava/net/URI;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    aget-object p0, p0, v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "NotificationPlatformBridge"

    const-string v2, "Expected to find a valid url in the notification tag extra."

    .line 25
    invoke-static {p0, v2, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method private closeNotification(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    if-nez p3, :cond_0

    .line 1
    sget-object p3, LzT;->a:Landroid/content/Context;

    .line 2
    invoke-static {p3, p2}, LHf1;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 3
    new-instance p4, Lgm0;

    invoke-direct {p4, p0, p1, p3, p2}, Lgm0;-><init>(Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p3, p4}, LYO0;->a(Ljava/lang/String;Lvf1;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p4, p2}, Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static create(J)Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;
    .locals 1

    .line 1
    sget-object v0, Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;->f:Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;-><init>(J)V

    sput-object v0, Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;->f:Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;

    return-object v0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "There must only be a single NotificationPlatformBridge."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;->f:Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;

    return-void
.end method

.method private displayNotification(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[IJZZ[Lorg/chromium/chrome/browser/notifications/ActionInfo;)V
    .locals 21

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    move-object/from16 v6, p4

    .line 2
    invoke-static {v0, v6}, LHf1;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 3
    invoke-static {v0}, LnU;->b(Ljava/lang/Object;)LnU;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, LnU;

    invoke-direct {v1}, LnU;-><init>()V

    .line 5
    new-instance v2, Lem0;

    invoke-direct {v2, v1, v0}, Lem0;-><init>(LnU;Ljava/lang/String;)V

    invoke-static {v0, v2}, LYO0;->a(Ljava/lang/String;Lvf1;)V

    move-object v0, v1

    .line 6
    :goto_0
    new-instance v15, Ldm0;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v20, v0

    move-object v0, v15

    move-wide/from16 v15, p13

    move/from16 v17, p15

    move/from16 v18, p16

    move-object/from16 v19, p17

    invoke-direct/range {v1 .. v19}, Ldm0;-><init>(Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[IJZZ[Lorg/chromium/chrome/browser/notifications/ActionInfo;)V

    move-object/from16 v1, v20

    invoke-virtual {v1, v0}, LnU;->b(Lorg/chromium/base/Callback;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 1

    .line 6
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Lpm0;
    .locals 2

    .line 7
    invoke-virtual {p0, p3, p5, p10}, Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 8
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 9
    const-class p2, Lorg/chromium/chrome/browser/notifications/NotificationService$Receiver;

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p2, "notification_id"

    .line 10
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "notification_type"

    .line 11
    invoke-virtual {v1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "notification_info_origin"

    .line 12
    invoke-virtual {v1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "notification_info_scope"

    .line 13
    invoke-virtual {v1, p2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "notification_info_profile_id"

    .line 14
    invoke-virtual {v1, p2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "notification_info_profile_incognito"

    .line 15
    invoke-virtual {v1, p2, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "notification_info_webapk_package"

    .line 16
    invoke-virtual {v1, p2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "notification_info_action_index"

    .line 17
    invoke-virtual {v1, p2, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x18

    if-lt p2, p3, :cond_0

    const/high16 p2, 0x10000000

    .line 19
    invoke-virtual {v1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    const/4 p2, 0x0

    const/high16 p3, 0x8000000

    .line 20
    invoke-static {p1, p2, v1, p3}, Lpm0;->a(Landroid/content/Context;ILandroid/content/Intent;I)Lpm0;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ls20;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;->d:Ls20;

    if-nez v0, :cond_0

    .line 60
    invoke-static {}, LKY;->c()LR60;

    move-result-object v0

    check-cast v0, LY60;

    invoke-virtual {v0}, LY60;->h()Ls20;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;->d:Ls20;

    .line 61
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;->d:Ls20;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 26
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    .line 27
    sget-object p3, LnP0;->b:LnP0;

    if-nez p3, :cond_0

    .line 28
    new-instance p3, LnP0;

    invoke-direct {p3}, LnP0;-><init>()V

    sput-object p3, LnP0;->b:LnP0;

    .line 29
    :cond_0
    sget-object p3, LnP0;->b:LnP0;

    if-eqz p3, :cond_1

    .line 30
    new-instance v0, LlP0;

    invoke-direct {v0, p3, p1, v1}, LlP0;-><init>(LnP0;Ljava/lang/String;I)V

    .line 31
    iget-object p1, p3, LnP0;->a:LGf1;

    .line 32
    sget-object p3, LzT;->a:Landroid/content/Context;

    .line 33
    invoke-virtual {p1, p3, p2, v0}, LGf1;->a(Landroid/content/Context;Ljava/lang/String;LFf1;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 34
    throw p1

    .line 35
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;->a()Ls20;

    move-result-object p2

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Ls20;->a(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 36
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;->a()Ls20;

    move-result-object p2

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 37
    iget-object p2, p2, Ls20;->a:LSi;

    const-string v0, ""

    if-eqz p3, :cond_7

    .line 38
    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 39
    :cond_3
    invoke-virtual {p3}, Landroid/net/Uri;->getPort()I

    move-result v2

    .line 40
    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http"

    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x50

    if-ne v2, v4, :cond_4

    const/4 v2, -0x1

    :cond_4
    const-string v4, "https"

    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x1bb

    if-ne v2, v3, :cond_5

    const/4 v2, -0x1

    .line 43
    :cond_5
    invoke-virtual {p3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v1, :cond_6

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 45
    :cond_6
    :try_start_0
    invoke-virtual {p3}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 47
    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->opaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 48
    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 49
    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 53
    :catch_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    goto :goto_1

    .line 54
    :cond_7
    :goto_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 55
    :goto_1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    new-instance v2, Lr20;

    invoke-direct {v2, p1, v1}, Lr20;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2, p3, v0, v2}, LSi;->a(Landroid/net/Uri;Ljava/lang/String;LQi;)Z

    .line 57
    :cond_8
    iget-object p2, p0, Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;->b:Lam0;

    check-cast p2, Lbm0;

    .line 58
    iget-object p2, p2, Lbm0;->b:Landroid/app/NotificationManager;

    invoke-virtual {p2, p1, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

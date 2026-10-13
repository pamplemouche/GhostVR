.class public abstract LuD;
.super Landroid/app/IntentService;
.source "PG"


# static fields
.field public static final w:LZB;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "GcmMsgSenderSvc"

    .line 1
    invoke-static {v0}, LgC;->b(Ljava/lang/String;)LgC;

    move-result-object v0

    sput-object v0, LuD;->w:LZB;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "GcmUpstreamService"

    .line 1
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/IntentService;->setIntentRedelivery(Z)V

    return-void
.end method

.method public static b([B)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, LuD;->w:LZB;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    check-cast v0, LgC;

    const-string v2, "Encoding message: %s"

    invoke-virtual {v0, v2, v1}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 2
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a([B)V
    .locals 6

    .line 1
    invoke-static {}, LrD;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "gcm_registration_token"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, LqD;->a:LDE;

    const-string v5, "ANDROID_GCM_UPDATED"

    .line 4
    invoke-static {v0, v5, v3, v4}, LEE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LDE;)LTD;

    move-result-object v0

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    sget-object v3, LuD;->w:LZB;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    check-cast v3, LgC;

    const-string v0, "No GCM registration token; cannot determine our network endpoint id: %s"

    invoke-virtual {v3, v0, v4}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 6
    sget-object v0, LuD;->w:LZB;

    new-array v1, v2, [Ljava/lang/Object;

    check-cast v0, LgC;

    const-string v2, "Buffering message to the data center: no GCM registration id"

    invoke-virtual {v0, v2, v1}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    invoke-static {p1}, LrD;->a([B)V

    return-void

    .line 8
    :cond_2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 9
    invoke-virtual {v0}, LTD;->f()[B

    move-result-object v0

    invoke-static {v0}, LuD;->b([B)Ljava/lang/String;

    move-result-object v0

    const-string v4, "network_endpoint_id"

    .line 10
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {p1}, LuD;->b([B)Ljava/lang/String;

    move-result-object v0

    const-string v4, "client_to_server_message"

    .line 12
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    sget-object v0, LuD;->w:LZB;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, LuD;->b([B)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    check-cast v0, LgC;

    const-string p1, "Encoded message: %s"

    invoke-virtual {v0, p1, v1}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    move-object p1, p0

    check-cast p1, Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender;

    .line 15
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 16
    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 18
    invoke-virtual {v0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 19
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 20
    sget-object v0, LZ01;->a:LFW;

    new-instance v2, LLD0;

    const-string v3, "548642380543@google.com"

    invoke-direct {v2, p1, v3, v1}, LLD0;-><init>(Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender;Ljava/lang/String;Landroid/os/Bundle;)V

    const-wide/16 v3, 0x0

    .line 21
    invoke-static {v0, v2, v3, v4}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
    .locals 0

    invoke-static {}, LbY;->b()Z

    invoke-super {p0, p1}, Landroid/app/IntentService;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/IntentService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/IntentService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/IntentService;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-static {}, LrD;->a()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 2
    sget-object p1, LuD;->w:LZB;

    new-array v0, v2, [Ljava/lang/Object;

    check-cast p1, LgC;

    const-string v1, "Incorrect channel type for using GCM Upstream"

    invoke-virtual {p1, v1, v0}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "ipcinv-outbound-message"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    .line 5
    :try_start_0
    invoke-static {p1}, LxD;->a([B)LxD;

    move-result-object p1
    :try_end_0
    .catch LYE; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    iget-object p1, p1, LxD;->d:LPE;

    .line 7
    iget-object p1, p1, LPE;->w:[B

    .line 8
    invoke-virtual {p0, p1}, LuD;->a([B)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    sget-object v3, LuD;->w:LZB;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object v0, v1, v4

    check-cast v3, LgC;

    const-string p1, "Invalid AndroidNetworkSendRequest from %s: %s"

    invoke-virtual {v3, p1, v1}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v0, "com.google.ipc.invalidation.channel.sender.gcm_regid_change"

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-static {}, LrD;->c()[B

    move-result-object p1

    if-eqz p1, :cond_4

    .line 12
    invoke-virtual {p0, p1}, LuD;->a([B)V

    goto :goto_0

    .line 13
    :cond_3
    sget-object v0, LuD;->w:LZB;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    check-cast v0, LgC;

    const-string p1, "Ignoring intent: %s"

    invoke-virtual {v0, p1, v1}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setTheme(I)V
    .locals 0

    invoke-static {}, LbY;->b()Z

    invoke-super {p0, p1}, Landroid/app/IntentService;->setTheme(I)V

    return-void
.end method

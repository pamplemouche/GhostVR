.class public Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;
.super Landroid/app/IntentService;
.source "PG"


# instance fields
.field public final w:LZB;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "AndroidNetworkService"

    .line 1
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const-string v0, "MsgSenderSvc"

    .line 2
    invoke-static {v0}, LgC;->b(Ljava/lang/String;)LgC;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->w:LZB;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/IntentService;->setIntentRedelivery(Z)V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    .line 39
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 40
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 41
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Z)Ljava/net/HttpURLConnection;
    .locals 2

    .line 27
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    :try_start_0
    const-string v0, "POST"

    .line 28
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    .line 29
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v0, "Authorization"

    if-eqz p3, :cond_0

    .line 30
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bearer "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GoogleLogin auth="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p2, "Content-Type"

    const-string p3, "application/x-protobuffer"

    .line 32
    invoke-virtual {p1, p2, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "("

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "User-Agent"

    .line 35
    invoke-virtual {p1, p2, p0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {}, LrD;->b()Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 p2, 0x0

    const-string p3, "echo-token"

    invoke-interface {p0, p3, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 37
    invoke-virtual {p1, p3, p0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p1

    :catch_0
    move-exception p0

    .line 38
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Cannot set request method to POST"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;LTD;)Ljava/net/URL;
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://clients4.google.com/"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/invalidation/android/request/"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p1}, LTD;->f()[B

    move-result-object p1

    const/16 v1, 0xb

    .line 20
    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    const/16 p1, 0x3f

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "service"

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3d

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    :cond_0
    new-instance p0, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final a([BLjava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.google.ipc.invalidation.AUTH_TOKEN_MSG"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "com.google.ipc.invalidation.AUTH_TOKEN_IS_RETRY"

    .line 3
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result p1

    const/high16 v3, 0x40000000    # 2.0f

    .line 5
    invoke-static {p0, p1, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 6
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.google.ipc.invalidation.AUTH_TOKEN_REQUEST"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.google.ipc.invalidation.AUTH_TOKEN_PENDING_INTENT"

    .line 7
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p2, :cond_1

    const-string p1, "com.google.ipc.invalidaton.AUTH_TOKEN_INVALIDATE"

    .line 8
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    :cond_1
    new-instance p1, LhD;

    .line 10
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, LhD;-><init>(Landroid/content/Context;)V

    .line 11
    iget-object p1, p1, LhD;->a:LgD;

    .line 12
    iget-object p1, p1, LgD;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/IntentService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 15
    :goto_1
    iget-object p2, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->w:LZB;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    check-cast p2, LgC;

    const-string p1, "unable to request auth token: %s"

    invoke-virtual {p2, p1, v0}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
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

.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    return-void
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "ipcinv-outbound-message"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    .line 3
    :try_start_0
    invoke-static {p1}, LxD;->a([B)LxD;

    move-result-object p1
    :try_end_0
    .catch LYE; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    iget-object p1, p1, LxD;->d:LPE;

    .line 5
    iget-object p1, p1, LPE;->w:[B

    .line 6
    invoke-virtual {p0, p1, v5}, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->a([BLjava/lang/String;)V

    goto/16 :goto_8

    :catch_0
    move-exception v0

    .line 7
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->w:LZB;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object v0, v2, v3

    check-cast v1, LgC;

    const-string p1, "Invalid AndroidNetworkSendRequest from %s: %s"

    invoke-virtual {v1, p1, v2}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_1
    const-string v0, "com.google.ipc.invalidation.AUTH_TOKEN"

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "com.google.ipc.invalidation.AUTH_TOKEN_MSG"

    .line 9
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "com.google.ipc.invalidation.AUTH_TOKEN_TYPE"

    .line 11
    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "com.google.ipc.invalidation.AUTH_TOKEN_IS_RETRY"

    .line 12
    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    goto/16 :goto_7

    .line 13
    :cond_2
    invoke-virtual {p1, v7, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 14
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 17
    iget-object v6, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->w:LZB;

    .line 18
    invoke-static {}, LrD;->a()I

    move-result v8

    const-string v9, ""

    if-ne v8, v3, :cond_3

    .line 19
    invoke-static {}, LrD;->b()Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v10, "gcm_registration_token"

    invoke-interface {v8, v10, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "ANDROID_GCM_UPDATED"

    goto :goto_0

    .line 20
    :cond_3
    :try_start_1
    invoke-static {p0}, Lbj;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v8

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v8, v10, v4

    .line 21
    move-object v8, v6

    check-cast v8, LgC;

    const-string v11, "Unable to get GCM registration id: %s"

    invoke-virtual {v8, v11, v10}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v8, v5

    :goto_0
    if-eqz v8, :cond_5

    .line 22
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_1

    .line 23
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    sget-object v10, LqD;->a:LDE;

    .line 24
    invoke-static {v8, v9, v6, v10}, LEE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LDE;)LTD;

    move-result-object v6

    goto :goto_2

    :cond_5
    :goto_1
    new-array v9, v3, [Ljava/lang/Object;

    aput-object v8, v9, v4

    .line 25
    check-cast v6, LgC;

    const-string v8, "No GCM registration id; cannot determine our network endpoint id: %s"

    invoke-virtual {v6, v8, v9}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v6, v5

    :goto_2
    if-nez v6, :cond_6

    .line 26
    iget-object p1, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->w:LZB;

    new-array v0, v4, [Ljava/lang/Object;

    check-cast p1, LgC;

    const-string v2, "Buffering message to the data center: no GCM registration id"

    invoke-virtual {p1, v2, v0}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    invoke-static {v1}, LrD;->a([B)V

    goto/16 :goto_8

    .line 28
    :cond_6
    iget-object v8, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->w:LZB;

    new-array v9, v3, [Ljava/lang/Object;

    array-length v10, v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    check-cast v8, LgC;

    const-string v10, "Delivering outbound message: %s bytes"

    invoke-virtual {v8, v10, v9}, LgC;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_2
    const-string v8, "oauth2:"

    .line 29
    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    move-object p1, v5

    .line 30
    :cond_7
    invoke-static {p1, v6}, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->a(Ljava/lang/String;LTD;)Ljava/net/URL;

    move-result-object p1
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    :try_start_3
    invoke-static {p0, p1, v0, v8}, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->a(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    move-result-object v5

    const-string v6, "Connection"

    const-string v8, "close"

    .line 32
    invoke-virtual {v5, v6, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 34
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 35
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/io/OutputStream;->write([B)V

    .line 36
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 37
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    const/16 v9, 0xc8

    if-eq v8, v9, :cond_9

    const/16 v9, 0xcc

    if-eq v8, v9, :cond_9

    const/16 v9, 0x191

    if-eq v8, v9, :cond_8

    .line 38
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->w:LZB;

    const-string v1, "Unexpected response code %s for HTTP POST to %s; response = %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 39
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    aput-object p1, v7, v3

    aput-object v6, v7, v2
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 40
    check-cast v0, LgC;

    :try_start_4
    invoke-virtual {v0, v1, v7}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_8
    if-nez v7, :cond_9

    .line 41
    invoke-virtual {p0, v1, v0}, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->a([BLjava/lang/String;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_4
    move-exception p1

    move-object v0, p1

    move-object p1, v5

    .line 42
    :goto_3
    :try_start_5
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->w:LZB;

    const-string v6, "RuntimeException creating HTTP connection or sending message (%s): %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object v0, v2, v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    check-cast v1, LgC;

    :try_start_6
    invoke-virtual {v1, v6, v2}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_e

    goto :goto_5

    :catch_5
    move-exception p1

    move-object v0, p1

    move-object p1, v5

    .line 43
    :goto_4
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->w:LZB;

    const-string v6, "IOException sending message (%s): %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object v0, v2, v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    check-cast v1, LgC;

    :try_start_7
    invoke-virtual {v1, v6, v2}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_e

    goto :goto_5

    :catch_6
    move-exception p1

    .line 44
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->w:LZB;

    const-string v1, "Malformed URL: %s"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    check-cast v0, LgC;

    :try_start_8
    invoke-virtual {v0, v1, v2}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v5, :cond_e

    .line 45
    :cond_9
    :goto_5
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_8

    :goto_6
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    throw p1

    .line 46
    :cond_b
    :goto_7
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->w:LZB;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 47
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    aput-object p1, v1, v3

    .line 48
    check-cast v0, LgC;

    const-string p1, "auth-token-response intent missing fields: %s, %s"

    invoke-virtual {v0, p1, v1}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    :cond_c
    const-string v0, "com.google.ipc.invalidation.channel.sender.gcm_regid_change"

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 50
    invoke-static {}, LrD;->c()[B

    move-result-object p1

    if-eqz p1, :cond_e

    .line 51
    invoke-virtual {p0, p1, v5}, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->a([BLjava/lang/String;)V

    goto :goto_8

    .line 52
    :cond_d
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;->w:LZB;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v4

    check-cast v0, LgC;

    const-string p1, "Ignoring intent: %s"

    invoke-virtual {v0, p1, v1}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    :goto_8
    return-void
.end method

.method public setTheme(I)V
    .locals 0

    invoke-static {}, LbY;->b()Z

    invoke-super {p0, p1}, Landroid/app/IntentService;->setTheme(I)V

    return-void
.end method

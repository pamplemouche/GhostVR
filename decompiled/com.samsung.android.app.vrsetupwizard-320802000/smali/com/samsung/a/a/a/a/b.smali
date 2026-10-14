.class public Lcom/samsung/a/a/a/a/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/samsung/a/a/a/a/e/b;


# instance fields
.field private b:Landroid/app/Application;

.field private c:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private d:Z

.field private e:Z

.field private f:Lcom/samsung/a/a/a/c;

.field private g:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/samsung/a/a/a/c;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/a/a/a/a/b;->d:Z

    iput-boolean v0, p0, Lcom/samsung/a/a/a/a/b;->e:Z

    iput-object p1, p0, Lcom/samsung/a/a/a/a/b;->b:Landroid/app/Application;

    iput-object p2, p0, Lcom/samsung/a/a/a/a/b;->f:Lcom/samsung/a/a/a/c;

    invoke-virtual {p2}, Lcom/samsung/a/a/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/a/a/a/a/e/b;->b:Lcom/samsung/a/a/a/a/e/b;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/a/a/a/a/e/b;->a:Lcom/samsung/a/a/a/a/e/b;

    :goto_0
    sput-object v0, Lcom/samsung/a/a/a/a/b;->a:Lcom/samsung/a/a/a/a/e/b;

    invoke-virtual {p2}, Lcom/samsung/a/a/a/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/a/a/a/a/b;->f:Lcom/samsung/a/a/a/c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/a/a/a/c;->a(I)V

    goto :goto_2

    :cond_1
    invoke-direct {p0}, Lcom/samsung/a/a/a/a/b;->c()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/samsung/a/a/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/a/a/a/a/b;->a:Lcom/samsung/a/a/a/a/e/b;

    sget-object v1, Lcom/samsung/a/a/a/a/e/b;->b:Lcom/samsung/a/a/a/a/e/b;

    invoke-virtual {v0, v1}, Lcom/samsung/a/a/a/a/e/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    :goto_1
    invoke-direct {p0}, Lcom/samsung/a/a/a/a/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/a/a/a/a/b;->a(Ljava/lang/String;I)V

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/samsung/a/a/a/a/b;->a:Lcom/samsung/a/a/a/a/e/b;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/e/b;->b()Lcom/samsung/a/a/a/a/g/e;

    move-result-object v0

    sget-object v2, Lcom/samsung/a/a/a/a/g/e;->a:Lcom/samsung/a/a/a/a/g/e;

    if-ne v0, v2, :cond_3

    invoke-direct {p0}, Lcom/samsung/a/a/a/a/b;->b()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    sget-object v0, Lcom/samsung/a/a/a/a/b;->a:Lcom/samsung/a/a/a/a/e/b;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/e/b;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/a/a/a/a/b;->a()V

    :cond_4
    sget-object v0, Lcom/samsung/a/a/a/a/b;->a:Lcom/samsung/a/a/a/a/e/b;

    sget-object v1, Lcom/samsung/a/a/a/a/e/b;->a:Lcom/samsung/a/a/a/a/e/b;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/samsung/a/a/a/a/b;->f:Lcom/samsung/a/a/a/c;

    new-instance v1, Lcom/samsung/a/a/a/a/c;

    invoke-direct {v1, p0, p1}, Lcom/samsung/a/a/a/a/c;-><init>(Lcom/samsung/a/a/a/a/b;Landroid/app/Application;)V

    invoke-virtual {v0, v1}, Lcom/samsung/a/a/a/c;->a(Lcom/samsung/a/a/a/k;)Lcom/samsung/a/a/a/c;

    :cond_5
    invoke-direct {p0}, Lcom/samsung/a/a/a/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lcom/samsung/a/a/a/c;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/samsung/a/a/a/a/b;->a:Lcom/samsung/a/a/a/a/e/b;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/e/b;->b()Lcom/samsung/a/a/a/a/g/e;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/samsung/a/a/a/a/g/d;->a(Landroid/content/Context;Lcom/samsung/a/a/a/a/g/e;Lcom/samsung/a/a/a/c;)Lcom/samsung/a/a/a/a/g/b;

    :cond_6
    invoke-direct {p0}, Lcom/samsung/a/a/a/a/b;->e()V

    :cond_7
    invoke-direct {p0}, Lcom/samsung/a/a/a/a/b;->i()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Tracker start:2.01.007"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/samsung/a/a/a/a/b;->a:Lcom/samsung/a/a/a/a/e/b;

    invoke-virtual {p2}, Lcom/samsung/a/a/a/a/e/b;->b()Lcom/samsung/a/a/a/a/g/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/a/a/a/a/g/e;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Tracker"

    invoke-static {p2, p1}, Lcom/samsung/a/a/a/a/j/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/a/a/a/a/b;)Landroid/app/Application;
    .locals 0

    iget-object p0, p0, Lcom/samsung/a/a/a/a/b;->b:Landroid/app/Application;

    return-object p0
.end method

.method private a()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/a/a/a/a/b;->b:Landroid/app/Application;

    invoke-static {v0}, Lcom/samsung/a/a/a/a/j/d;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/samsung/a/a/a/a/a/c;->c:Lcom/samsung/a/a/a/a/a/c;

    const-string v2, ""

    const-string v3, "dom"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/a/a/a/a/a/c;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/a/a/a/a/a/b;->c:Lcom/samsung/a/a/a/a/a/b;

    const-string v3, "uri"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/a/a/a/a/a/b;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/a/a/a/a/a/b;->d:Lcom/samsung/a/a/a/a/a/b;

    const-string v3, "bat-uri"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/a/a/a/a/a/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/a/a/a/a/b;->b:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/a/a/a/a/e/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/a/a/a/a/b;->b:Landroid/app/Application;

    iget-object v1, p0, Lcom/samsung/a/a/a/a/b;->f:Lcom/samsung/a/a/a/c;

    invoke-static {}, Lcom/samsung/a/a/a/a/d/d;->a()Lcom/samsung/a/a/a/a/d/c;

    move-result-object v2

    new-instance v3, Lcom/samsung/a/a/a/a/b/a;

    iget-object v4, p0, Lcom/samsung/a/a/a/a/b;->b:Landroid/app/Application;

    invoke-direct {v3, v4}, Lcom/samsung/a/a/a/a/b/a;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/samsung/a/a/a/a/d;

    invoke-direct {v4, p0}, Lcom/samsung/a/a/a/a/d;-><init>(Lcom/samsung/a/a/a/a/b;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/a/a/a/a/e/c;->a(Landroid/content/Context;Lcom/samsung/a/a/a/c;Lcom/samsung/a/a/a/a/d/c;Lcom/samsung/a/a/a/a/b/a;Lcom/samsung/a/a/a/a/a;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/a/a/a/a/b;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/a/a/a/a/b;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/a/a/a/a/b;->b:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/a/a/a/a/j/d;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "deviceId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auidType"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/samsung/a/a/a/a/b;->f:Lcom/samsung/a/a/a/c;

    invoke-virtual {v0, p2}, Lcom/samsung/a/a/a/c;->a(I)V

    iget-object p2, p0, Lcom/samsung/a/a/a/a/b;->f:Lcom/samsung/a/a/a/c;

    invoke-virtual {p2, p1}, Lcom/samsung/a/a/a/c;->b(Ljava/lang/String;)Lcom/samsung/a/a/a/c;

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/a/a/a/a/b;->b:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "."

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "CF version < 2.0.9"

    const/4 v4, 0x2

    if-ge p1, v4, :cond_0

    :try_start_1
    invoke-static {v3}, Lcom/samsung/a/a/a/a/j/a;->a(Ljava/lang/String;)V

    return v0

    :cond_0
    if-ne p1, v4, :cond_1

    if-nez v2, :cond_1

    const/16 p1, 0x9

    if-ge v1, p1, :cond_1

    invoke-static {v3}, Lcom/samsung/a/a/a/a/j/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/samsung/a/a/a/a/j/a;->a(Ljava/lang/Class;Ljava/lang/Exception;)V

    return v0
.end method

.method static synthetic b(Lcom/samsung/a/a/a/a/b;)Lcom/samsung/a/a/a/c;
    .locals 0

    iget-object p0, p0, Lcom/samsung/a/a/a/a/b;->f:Lcom/samsung/a/a/a/c;

    return-object p0
.end method

.method private b()Z
    .locals 5

    invoke-static {}, Lcom/samsung/a/a/a/a/e/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/a/a/a/a/b;->a:Lcom/samsung/a/a/a/a/e/b;

    sget-object v1, Lcom/samsung/a/a/a/a/e/b;->a:Lcom/samsung/a/a/a/a/e/b;

    invoke-virtual {v0, v1}, Lcom/samsung/a/a/a/a/e/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/a/a/a/a/b;->f:Lcom/samsung/a/a/a/c;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.android.providers.context"

    invoke-direct {p0, v0}, Lcom/samsung/a/a/a/a/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/a/a/a/a/e;

    invoke-direct {v1, p0}, Lcom/samsung/a/a/a/a/e;-><init>(Lcom/samsung/a/a/a/a/b;)V

    iget-object v2, p0, Lcom/samsung/a/a/a/a/b;->b:Landroid/app/Application;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.samsung.android.providers.context.log.action.GET_DID"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context.log.action.REQUEST_DID"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/a/a/a/a/b;->g:Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/a/a/a/a/b;->g:Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/a/a/a/a/b;->b:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PKGNAME"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/a/a/a/a/b;->g:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/a/a/a/a/b;->b:Landroid/app/Application;

    iget-object v1, p0, Lcom/samsung/a/a/a/a/b;->g:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "request CF id"

    invoke-static {v0}, Lcom/samsung/a/a/a/a/j/a;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic c(Lcom/samsung/a/a/a/a/b;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/a/a/a/a/b;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c()Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/a/a/a/a/b;->b:Landroid/app/Application;

    invoke-static {v0}, Lcom/samsung/a/a/a/a/j/d;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "deviceId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const-string v3, "auidType"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/a/a/a/a/b;->f:Lcom/samsung/a/a/a/c;

    invoke-virtual {v2, v0}, Lcom/samsung/a/a/a/c;->a(I)V

    iget-object v0, p0, Lcom/samsung/a/a/a/a/b;->f:Lcom/samsung/a/a/a/c;

    invoke-virtual {v0, v1}, Lcom/samsung/a/a/a/c;->b(Ljava/lang/String;)Lcom/samsung/a/a/a/c;

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private d()Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x10

    new-array v1, v1, [B

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    :try_start_0
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v1}, Ljava/math/BigInteger;-><init>([B)V

    const-string v6, "0123456789abcdefghijklmjopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v5}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const/16 v5, 0x3e

    int-to-long v9, v5

    rem-long/2addr v7, v9

    long-to-int v5, v7

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/a/a/a/a/j/a;->a(Ljava/lang/Class;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/a/a/a/a/b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "user do not agree setting"

    invoke-static {v0}, Lcom/samsung/a/a/a/a/j/a;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/samsung/a/a/a/a/b;->b:Landroid/app/Application;

    invoke-static {v1}, Lcom/samsung/a/a/a/a/j/d;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-string v4, "status_sent_date"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/a/a/a/a/j/e;->a(ILjava/lang/Long;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "do not send setting < 7days"

    invoke-static {v0}, Lcom/samsung/a/a/a/a/j/a;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "send setting"

    invoke-static {v0}, Lcom/samsung/a/a/a/a/j/a;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/a/a/a/a/d/d;->a()Lcom/samsung/a/a/a/a/d/c;

    move-result-object v0

    new-instance v1, Lcom/samsung/a/a/a/a/h/a;

    iget-object v2, p0, Lcom/samsung/a/a/a/a/b;->b:Landroid/app/Application;

    iget-object v3, p0, Lcom/samsung/a/a/a/a/b;->f:Lcom/samsung/a/a/a/c;

    invoke-direct {v1, v2, v3}, Lcom/samsung/a/a/a/a/h/a;-><init>(Landroid/content/Context;Lcom/samsung/a/a/a/c;)V

    invoke-interface {v0, v1}, Lcom/samsung/a/a/a/a/d/c;->a(Lcom/samsung/a/a/a/a/d/b;)V

    return-void
.end method

.method private f()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/a/a/a/a/b;->f:Lcom/samsung/a/a/a/c;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/c;->h()Lcom/samsung/a/a/a/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/a/a/a/k;->a()Z

    move-result v0

    return v0
.end method

.method private g()Z
    .locals 3

    sget-object v0, Lcom/samsung/a/a/a/a/b;->a:Lcom/samsung/a/a/a/a/e/b;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/e/b;->b()Lcom/samsung/a/a/a/a/g/e;

    move-result-object v0

    sget-object v1, Lcom/samsung/a/a/a/a/g/e;->c:Lcom/samsung/a/a/a/a/g/e;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/samsung/a/a/a/a/b;->f:Lcom/samsung/a/a/a/c;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "did is empty"

    invoke-static {v0}, Lcom/samsung/a/a/a/a/j/a;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
.end method

.method private h()Z
    .locals 7

    sget-object v0, Lcom/samsung/a/a/a/a/b;->a:Lcom/samsung/a/a/a/a/e/b;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/e/b;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/a/a/a/a/b;->b:Landroid/app/Application;

    invoke-static {v0}, Lcom/samsung/a/a/a/a/j/d;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v2, 0x0

    const-string v4, "property_sent_date"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/samsung/a/a/a/a/j/e;->a(ILjava/lang/Long;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "do not send property < 1day"

    :goto_0
    invoke-static {v0}, Lcom/samsung/a/a/a/a/j/a;->b(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/a/a/a/a/b;->b:Landroid/app/Application;

    invoke-static {v0}, Lcom/samsung/a/a/a/a/j/d;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "property disable "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/a/a/a/a/b;->a:Lcom/samsung/a/a/a/a/e/b;

    invoke-virtual {v2}, Lcom/samsung/a/a/a/a/e/b;->b()Lcom/samsung/a/a/a/a/g/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private i()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/a/a/a/a/b;->b:Landroid/app/Application;

    const-string v1, "SATerms"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {}, Lcom/samsung/a/a/a/a/d/d;->a()Lcom/samsung/a/a/a/a/d/c;

    move-result-object v2

    new-instance v3, Lcom/samsung/a/a/a/a/i/a;

    iget-object v4, p0, Lcom/samsung/a/a/a/a/b;->f:Lcom/samsung/a/a/a/c;

    invoke-virtual {v4}, Lcom/samsung/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Lcom/samsung/a/a/a/a/f;

    invoke-direct {v9, p0, v0, v6}, Lcom/samsung/a/a/a/a/f;-><init>(Lcom/samsung/a/a/a/a/b;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/samsung/a/a/a/a/i/a;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/samsung/a/a/a/a/d/a;)V

    invoke-interface {v2, v3}, Lcom/samsung/a/a/a/a/d/c;->a(Lcom/samsung/a/a/a/a/d/b;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;Z)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/a/a/a/a/b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "user do not agree"

    invoke-static {p1}, Lcom/samsung/a/a/a/a/j/a;->b(Ljava/lang/String;)V

    const/4 p1, -0x2

    return p1

    :cond_0
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/a/a/a/a/b;->g()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/samsung/a/a/a/a/b;->g:Landroid/content/Intent;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/samsung/a/a/a/a/b;->b:Landroid/app/Application;

    invoke-virtual {p2, p1}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    const/4 p1, -0x5

    return p1

    :cond_3
    const-string v0, "t"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "pp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/a/a/a/a/b;->h()Z

    move-result v0

    if-nez v0, :cond_4

    const/16 p1, -0x9

    return p1

    :cond_4
    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/samsung/a/a/a/a/b;->b:Landroid/app/Application;

    sget-object v0, Lcom/samsung/a/a/a/a/b;->a:Lcom/samsung/a/a/a/a/e/b;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/e/b;->b()Lcom/samsung/a/a/a/a/g/e;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/a/a/a/a/b;->f:Lcom/samsung/a/a/a/c;

    invoke-static {p2, v0, v1}, Lcom/samsung/a/a/a/a/g/d;->a(Landroid/content/Context;Lcom/samsung/a/a/a/a/g/e;Lcom/samsung/a/a/a/c;)Lcom/samsung/a/a/a/a/g/b;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/a/a/a/a/g/b;->f(Ljava/util/Map;)I

    move-result p1

    return p1

    :cond_5
    iget-object p2, p0, Lcom/samsung/a/a/a/a/b;->b:Landroid/app/Application;

    sget-object v0, Lcom/samsung/a/a/a/a/b;->a:Lcom/samsung/a/a/a/a/e/b;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/e/b;->b()Lcom/samsung/a/a/a/a/g/e;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/a/a/a/a/b;->f:Lcom/samsung/a/a/a/c;

    invoke-static {p2, v0, v1}, Lcom/samsung/a/a/a/a/g/d;->a(Landroid/content/Context;Lcom/samsung/a/a/a/a/g/e;Lcom/samsung/a/a/a/c;)Lcom/samsung/a/a/a/a/g/b;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/a/a/a/a/g/b;->e(Ljava/util/Map;)I

    move-result p1

    return p1

    :cond_6
    :goto_0
    const-string p1, "Failure to send Logs : No data"

    invoke-static {p1}, Lcom/samsung/a/a/a/a/j/a;->b(Ljava/lang/String;)V

    const/4 p1, -0x3

    return p1
.end method

.method public a(Ljava/lang/String;ZZ)V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/a/a/a/a/b;->d:Z

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/a/a/a/a/b;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/a/a/a/a/b;->f:Lcom/samsung/a/a/a/c;

    invoke-virtual {p1}, Lcom/samsung/a/a/a/c;->a()Ljava/lang/String;

    move-result-object p1

    :cond_0
    move-object v4, p1

    new-instance p1, Lcom/samsung/a/a/a/a/c/a;

    iget-object v1, p0, Lcom/samsung/a/a/a/a/b;->b:Landroid/app/Application;

    iget-object v2, p0, Lcom/samsung/a/a/a/a/b;->f:Lcom/samsung/a/a/a/c;

    iget-object v3, p0, Lcom/samsung/a/a/a/a/b;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    move-object v0, p1

    move v5, p3

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/a/a/a/a/c/a;-><init>(Landroid/app/Application;Lcom/samsung/a/a/a/c;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/String;ZZ)V

    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

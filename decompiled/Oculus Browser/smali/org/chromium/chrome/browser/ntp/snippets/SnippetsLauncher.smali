.class public Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static c:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;


# instance fields
.field public a:LAq;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->b:Z

    .line 3
    invoke-static {}, Lja0;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->b:Z

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SnippetsLauncher"

    const-string v2, "Disabling SnippetsLauncher because Play Services is not up to date."

    .line 5
    invoke-static {v1, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    :cond_0
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 7
    invoke-static {v0}, LAq;->a(Landroid/content/Context;)LAq;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->a:LAq;

    return-void
.end method

.method public static create()Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;
    .locals 2

    .line 1
    sget-object v0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->c:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->c:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already instantiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private schedule(JJ)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduling: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "SnippetsLauncher"

    invoke-static {v3, v0, v2}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    cmp-long v4, p1, v2

    if-nez v4, :cond_2

    cmp-long v4, p3, v2

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 3
    :goto_1
    sget-object v3, LyT;->a:Landroid/content/SharedPreferences;

    const-string v4, "ntp_snippets.is_scheduled"

    .line 4
    invoke-static {v3, v4, v2}, LZi;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    :try_start_0
    const-string v2, "FetchSnippetsWifi"

    .line 5
    invoke-virtual {p0, v2, p1, p2, v0}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->a(Ljava/lang/String;JI)V

    const-string p1, "FetchSnippetsFallback"

    .line 6
    invoke-virtual {p0, p1, p3, p4, v1}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->a(Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 7
    :catch_0
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->b:Z

    .line 8
    sget-object p1, LyT;->a:Landroid/content/SharedPreferences;

    .line 9
    invoke-static {p1, v4}, LZi;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return v1
.end method

.method private unschedule()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "SnippetsLauncher"

    const-string v2, "Unscheduling"

    .line 2
    invoke-static {v1, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    .line 3
    invoke-direct {p0, v0, v1, v0, v1}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->schedule(JJ)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;JI)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->a:LAq;

    long-to-double p2, p2

    const-wide v1, 0x3ff199999999999aL    # 1.1

    mul-double v1, v1, p2

    double-to-long v1, v1

    const-wide v3, 0x3fc999999999999aL    # 0.2

    mul-double p2, p2, v3

    double-to-long p2, p2

    .line 2
    new-instance v3, LGq;

    invoke-direct {v3}, LGq;-><init>()V

    const-class v4, Lorg/chromium/chrome/browser/ChromeBackgroundService;

    .line 3
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, LHq;->b:Ljava/lang/String;

    .line 4
    iput-object p1, v3, LHq;->c:Ljava/lang/String;

    .line 5
    iput-wide v1, v3, LGq;->j:J

    .line 6
    iput-wide p2, v3, LGq;->k:J

    .line 7
    iput p4, v3, LHq;->a:I

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, v3, LHq;->e:Z

    .line 9
    iput-boolean p1, v3, LHq;->d:Z

    .line 10
    invoke-virtual {v3}, LGq;->b()V

    new-instance p1, Lcom/google/android/gms/gcm/PeriodicTask;

    const/4 p2, 0x0

    invoke-direct {p1, v3, p2}, Lcom/google/android/gms/gcm/PeriodicTask;-><init>(LGq;LQq;)V

    .line 11
    invoke-virtual {v0, p1}, LAq;->a(Lcom/google/android/gms/gcm/Task;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object p2, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->a:LAq;

    const-class p3, Lorg/chromium/chrome/browser/ChromeBackgroundService;

    invoke-virtual {p2, p1, p3}, LAq;->a(Ljava/lang/String;Ljava/lang/Class;)V

    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->c:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;

    return-void
.end method

.method public isOnUnmeteredConnection()Z
    .locals 2

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

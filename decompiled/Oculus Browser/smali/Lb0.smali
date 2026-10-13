.class public LLb0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:I

.field public final c:LHb0;

.field public final d:J


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/profiles/Profile;ILHb0;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LLb0;->a:Ljava/util/Map;

    .line 3
    iput p2, p0, LLb0;->b:I

    .line 4
    iput-object p3, p0, LLb0;->c:LHb0;

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, LLb0;->d:J

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_4

    .line 6
    new-instance v1, LKb0;

    invoke-direct {v1, p0, v0}, LKb0;-><init>(LLb0;I)V

    .line 7
    iget v2, v1, LKb0;->a:I

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    const/4 v4, 0x3

    if-eq v2, v4, :cond_0

    const-string v2, "Failed to recognize type "

    .line 8
    invoke-static {v2}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, LKb0;->a:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, p3, [Ljava/lang/Object;

    const-string v3, "feedback"

    invoke-static {v3, v1, v2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 9
    :cond_0
    invoke-static {v3, p2, v1}, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker;->a(ZILFb0;)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-static {p3, p2, v1}, Lorg/chromium/chrome/browser/feedback/ConnectivityChecker;->a(ZILFb0;)V

    goto :goto_1

    :cond_2
    int-to-long v2, p2

    .line 11
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    const-string v4, "https://clients4.google.com/generate_204"

    .line 12
    invoke-static {p1, v4, v2, v3, v1}, LJ/N;->MvuVYy8Q(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_1

    :cond_3
    int-to-long v2, p2

    .line 13
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    const-string v4, "http://clients4.google.com/generate_204"

    .line 14
    invoke-static {p1, v4, v2, v3, v1}, LJ/N;->MvuVYy8Q(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static synthetic a(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string p0, "HTTPS connection check (Android network stack)"

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown connection type: "

    invoke-static {v1, p0}, LZi;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "HTTP connection check (Android network stack)"

    goto :goto_0

    :cond_2
    const-string p0, "HTTPS connection check (Chrome network stack)"

    goto :goto_0

    :cond_3
    const-string p0, "HTTP connection check (Chrome network stack)"

    :goto_0
    return-object p0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const-string p0, "ERROR"

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown result value: "

    invoke-static {v1, p0}, LZi;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "TIMEOUT"

    return-object p0

    :cond_2
    const-string p0, "NOT_CONNECTED"

    return-object p0

    :cond_3
    const-string p0, "CONNECTED"

    return-object p0

    :cond_4
    const-string p0, "UNKNOWN"

    return-object p0
.end method


# virtual methods
.method public a()LIb0;
    .locals 7

    .line 2
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 4
    iget-object v3, p0, LLb0;->a:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, LLb0;->a:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, LLb0;->d:J

    sub-long v3, v2, v4

    .line 8
    sget-object v0, Lorg/chromium/net/NetworkChangeNotifier;->f:Lorg/chromium/net/NetworkChangeNotifier;

    .line 9
    invoke-virtual {v0}, Lorg/chromium/net/NetworkChangeNotifier;->getCurrentConnectionType()I

    move-result v5

    .line 10
    new-instance v6, LIb0;

    iget v2, p0, LLb0;->b:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LIb0;-><init>(Ljava/util/Map;IJI)V

    return-object v6
.end method

.class final Lcom/facebook/systrace/TraceConfigJB;
.super Ljava/lang/Object;
.source "TraceConfigJB.java"


# static fields
.field private static volatile sIsTracing:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/facebook/systrace/TraceConfigJB$1;

    invoke-direct {v0}, Lcom/facebook/systrace/TraceConfigJB$1;-><init>()V

    invoke-static {v0}, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/systrace/TraceConfigJB;->sIsTracing:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 8
    invoke-static {}, Lcom/facebook/systrace/TraceConfigJB;->cacheEnabledTags()V

    return-void
.end method

.method private static cacheEnabledTags()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 32
    const-string v4, "debug.atrace.app_cmdlines"

    .line 33
    invoke-static {v4}, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "appCommandLinesProperty":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 38
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/facebook/systrace/TraceConfigJB;->sIsTracing:Ljava/lang/Boolean;

    .line 53
    :goto_0
    return-void

    .line 42
    :cond_0
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "enabledCommandLines":[Ljava/lang/String;
    invoke-static {}, Lcom/facebook/systrace/SystraceEnabledDetector;->getMyCommandLine()Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, "myCommandLine":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_2

    .line 46
    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 47
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/facebook/systrace/TraceConfigJB;->sIsTracing:Ljava/lang/Boolean;

    goto :goto_0

    .line 45
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 52
    :cond_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/facebook/systrace/TraceConfigJB;->sIsTracing:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static isTracing()Z
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/facebook/systrace/TraceConfigJB;->sIsTracing:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 25
    invoke-static {}, Lcom/facebook/systrace/TraceConfigJB;->cacheEnabledTags()V

    .line 28
    :cond_0
    sget-object v0, Lcom/facebook/systrace/TraceConfigJB;->sIsTracing:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

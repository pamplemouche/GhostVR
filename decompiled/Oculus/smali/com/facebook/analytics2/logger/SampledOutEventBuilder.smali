.class public final Lcom/facebook/analytics2/logger/SampledOutEventBuilder;
.super Lcom/facebook/analytics2/logger/EventBuilder;
.source "SampledOutEventBuilder.java"


# static fields
.field private static sAnalytics2Logger:Lcom/facebook/analytics2/logger/Analytics2Logger;

.field private static sSampledOutEventBuilder:Lcom/facebook/analytics2/logger/SampledOutEventBuilder;


# instance fields
.field private mExtras:Lcom/facebook/crudolib/params/ParamsCollectionMap;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;-><init>()V

    return-void
.end method

.method private blogInProdBuild()V
    .locals 2

    .prologue
    .line 146
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->isDebugBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    const-string v0, "SampledOutEventBuilder"

    invoke-direct {p0}, Lcom/facebook/analytics2/logger/SampledOutEventBuilder;->getCurrentStacktrace()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_0
    return-void
.end method

.method private getCurrentStacktrace()Ljava/lang/String;
    .locals 6

    .prologue
    .line 155
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v1, v0

    .line 158
    const-string v5, "SampledOutEvent is logged: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcom/facebook/analytics2/logger/Analytics2Logger;)Lcom/facebook/analytics2/logger/SampledOutEventBuilder;
    .locals 1

    .prologue
    .line 28
    sput-object p0, Lcom/facebook/analytics2/logger/SampledOutEventBuilder;->sAnalytics2Logger:Lcom/facebook/analytics2/logger/Analytics2Logger;

    .line 29
    sget-object v0, Lcom/facebook/analytics2/logger/SampledOutEventBuilder;->sSampledOutEventBuilder:Lcom/facebook/analytics2/logger/SampledOutEventBuilder;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/facebook/analytics2/logger/SampledOutEventBuilder;

    invoke-direct {v0}, Lcom/facebook/analytics2/logger/SampledOutEventBuilder;-><init>()V

    sput-object v0, Lcom/facebook/analytics2/logger/SampledOutEventBuilder;->sSampledOutEventBuilder:Lcom/facebook/analytics2/logger/SampledOutEventBuilder;

    .line 32
    :cond_0
    sget-object v0, Lcom/facebook/analytics2/logger/SampledOutEventBuilder;->sSampledOutEventBuilder:Lcom/facebook/analytics2/logger/SampledOutEventBuilder;

    return-object v0
.end method

.method private throwInDebugBuild()V
    .locals 2

    .prologue
    .line 138
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Event SampledOutEventName is not sampled. You can only manipulate sampled event."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    return-void
.end method


# virtual methods
.method public addExtra(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/facebook/analytics2/logger/EventBuilder;
    .locals 0
    .param p2    # Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/SampledOutEventBuilder;->throwInDebugBuild()V

    .line 96
    return-object p0
.end method

.method public addExtra(Ljava/lang/String;Ljava/lang/Number;)Lcom/facebook/analytics2/logger/EventBuilder;
    .locals 0
    .param p2    # Ljava/lang/Number;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/SampledOutEventBuilder;->throwInDebugBuild()V

    .line 90
    return-object p0
.end method

.method public addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics2/logger/EventBuilder;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/SampledOutEventBuilder;->throwInDebugBuild()V

    .line 84
    return-object p0
.end method

.method public getExtras()Lcom/facebook/crudolib/params/ParamsCollectionMap;
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/SampledOutEventBuilder;->throwInDebugBuild()V

    .line 118
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SampledOutEventBuilder;->mExtras:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    if-nez v0, :cond_0

    .line 119
    sget-object v0, Lcom/facebook/analytics2/logger/SampledOutEventBuilder;->sAnalytics2Logger:Lcom/facebook/analytics2/logger/Analytics2Logger;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    invoke-virtual {v0}, Lcom/facebook/crudolib/params/ParamsCollectionPool;->acquireMap()Lcom/facebook/crudolib/params/ParamsCollectionMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/SampledOutEventBuilder;->mExtras:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SampledOutEventBuilder;->mExtras:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    return-object v0
.end method

.method public isSampled()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public logAndRelease()V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/SampledOutEventBuilder;->throwInDebugBuild()V

    .line 133
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/SampledOutEventBuilder;->blogInProdBuild()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/SampledOutEventBuilder;->mExtras:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    .line 135
    return-void
.end method

.method public overrideLoggedWallTimeMillis(J)Lcom/facebook/analytics2/logger/EventBuilder;
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/SampledOutEventBuilder;->throwInDebugBuild()V

    .line 72
    return-object p0
.end method

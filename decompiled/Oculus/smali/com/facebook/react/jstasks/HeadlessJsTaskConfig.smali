.class public Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;
.super Ljava/lang/Object;
.source "HeadlessJsTaskConfig.java"


# instance fields
.field private final mAllowedInForeground:Z

.field private final mData:Lcom/facebook/react/bridge/WritableMap;

.field private final mRetryPolicy:Lcom/facebook/react/jstasks/HeadlessJsTaskRetryPolicy;

.field private final mTaskKey:Ljava/lang/String;

.field private final mTimeout:J


# direct methods
.method public constructor <init>(Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iget-object v0, p1, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->mTaskKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->mTaskKey:Ljava/lang/String;

    .line 88
    iget-object v0, p1, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->mData:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v0}, Lcom/facebook/react/bridge/WritableMap;->copy()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->mData:Lcom/facebook/react/bridge/WritableMap;

    .line 89
    iget-wide v0, p1, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->mTimeout:J

    iput-wide v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->mTimeout:J

    .line 90
    iget-boolean v0, p1, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->mAllowedInForeground:Z

    iput-boolean v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->mAllowedInForeground:Z

    .line 92
    iget-object v0, p1, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->mRetryPolicy:Lcom/facebook/react/jstasks/HeadlessJsTaskRetryPolicy;

    .line 93
    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0}, Lcom/facebook/react/jstasks/HeadlessJsTaskRetryPolicy;->copy()Lcom/facebook/react/jstasks/HeadlessJsTaskRetryPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->mRetryPolicy:Lcom/facebook/react/jstasks/HeadlessJsTaskRetryPolicy;

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->mRetryPolicy:Lcom/facebook/react/jstasks/HeadlessJsTaskRetryPolicy;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;JZLcom/facebook/react/jstasks/HeadlessJsTaskRetryPolicy;)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->mTaskKey:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->mData:Lcom/facebook/react/bridge/WritableMap;

    .line 81
    iput-wide p3, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->mTimeout:J

    .line 82
    iput-boolean p5, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->mAllowedInForeground:Z

    .line 83
    iput-object p6, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->mRetryPolicy:Lcom/facebook/react/jstasks/HeadlessJsTaskRetryPolicy;

    .line 84
    return-void
.end method


# virtual methods
.method getData()Lcom/facebook/react/bridge/WritableMap;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->mData:Lcom/facebook/react/bridge/WritableMap;

    return-object v0
.end method

.method getRetryPolicy()Lcom/facebook/react/jstasks/HeadlessJsTaskRetryPolicy;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->mRetryPolicy:Lcom/facebook/react/jstasks/HeadlessJsTaskRetryPolicy;

    return-object v0
.end method

.method getTaskKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->mTaskKey:Ljava/lang/String;

    return-object v0
.end method

.method getTimeout()J
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->mTimeout:J

    return-wide v0
.end method

.method isAllowedInForeground()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;->mAllowedInForeground:Z

    return v0
.end method

.class public Lcom/facebook/analytics2/logger/Analytics2EventConfig;
.super Ljava/lang/Object;
.source "Analytics2EventConfig.java"


# instance fields
.field public final deliverImmediately:Z

.field public final eventLogType:Lcom/facebook/analytics2/logger/EventLogType;

.field public final eventName:Ljava/lang/String;

.field public final isCoreEvent:Z

.field public final moduleName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/analytics2/logger/EventLogType;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/facebook/analytics2/logger/Analytics2EventConfig;->moduleName:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/facebook/analytics2/logger/Analytics2EventConfig;->eventName:Ljava/lang/String;

    .line 84
    iput-boolean p3, p0, Lcom/facebook/analytics2/logger/Analytics2EventConfig;->isCoreEvent:Z

    .line 85
    iput-object p4, p0, Lcom/facebook/analytics2/logger/Analytics2EventConfig;->eventLogType:Lcom/facebook/analytics2/logger/EventLogType;

    .line 86
    iput-boolean p5, p0, Lcom/facebook/analytics2/logger/Analytics2EventConfig;->deliverImmediately:Z

    .line 87
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/analytics2/logger/EventLogType;Z)Lcom/facebook/analytics2/logger/Analytics2EventConfig;
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 53
    new-instance v0, Lcom/facebook/analytics2/logger/Analytics2EventConfig;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/analytics2/logger/Analytics2EventConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/analytics2/logger/EventLogType;Z)V

    return-object v0
.end method

.method public static createSimple(Ljava/lang/String;Ljava/lang/String;Z)Lcom/facebook/analytics2/logger/Analytics2EventConfig;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 64
    const/4 v0, 0x0

    sget-object v1, Lcom/facebook/analytics2/logger/EventLogType;->CLIENT_EVENT:Lcom/facebook/analytics2/logger/EventLogType;

    invoke-static {p0, p1, v0, v1, p2}, Lcom/facebook/analytics2/logger/Analytics2EventConfig;->create(Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/analytics2/logger/EventLogType;Z)Lcom/facebook/analytics2/logger/Analytics2EventConfig;

    move-result-object v0

    return-object v0
.end method

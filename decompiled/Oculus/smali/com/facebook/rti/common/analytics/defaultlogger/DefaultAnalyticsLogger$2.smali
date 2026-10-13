.class final Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$2;
.super Ljava/lang/Object;
.source "DefaultAnalyticsLogger.java"

# interfaces
.implements Lcom/facebook/rti/common/util/NonInjectProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->newDefaultAnalyticsLogger(Landroid/content/Context;Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSamplePolicy;Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/facebook/rti/common/util/NonInjectProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/rti/common/util/NonInjectProvider",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$deviceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$2;->val$deviceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$2;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$2;->val$deviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "unset"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$2;->val$deviceId:Ljava/lang/String;

    goto :goto_0
.end method

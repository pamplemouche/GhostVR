.class Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper$2;
.super Ljava/lang/Object;
.source "PerfLogsHelper.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper;->createStatsLoggerLazy()Ljavax/inject/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/facebook/quicklog/StatsLogger;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper;


# direct methods
.method constructor <init>(Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper$2;->this$0:Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/facebook/quicklog/StatsLogger;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper$NullStatsLogger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper$NullStatsLogger;-><init>(Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper$1;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper$2;->get()Lcom/facebook/quicklog/StatsLogger;

    move-result-object v0

    return-object v0
.end method

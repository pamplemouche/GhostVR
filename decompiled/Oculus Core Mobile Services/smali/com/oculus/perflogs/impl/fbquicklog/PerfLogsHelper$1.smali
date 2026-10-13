.class Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper$1;
.super Ljava/lang/Object;
.source "PerfLogsHelper.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper;->createHoneyLoggerLazy()Ljavax/inject/Provider;
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
        "Lcom/facebook/quicklog/HoneyClientLogger;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper;


# direct methods
.method constructor <init>(Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper$1;->this$0:Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/facebook/quicklog/HoneyClientLogger;
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x0

    sget v1, Lcom/oculus/perflogs/impl/fbquicklog/FbQuicklogPerformanceLoggerModule$UL_id;->$ul_$xXXcom_oculus_perflogs_impl_fbquicklog_HoneyClientLoggerImpl$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper$1;->this$0:Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper;

    invoke-static {v2}, Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper;->access$000(Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/perflogs/impl/fbquicklog/HoneyClientLoggerImpl;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper$1;->get()Lcom/facebook/quicklog/HoneyClientLogger;

    move-result-object v0

    return-object v0
.end method

.class Lcom/oculus/vrshell/home/HomeApplication$1;
.super Ljava/lang/Object;
.source "HomeApplication.java"

# interfaces
.implements Lcom/oculus/logging/legacy/InterceptingAnalyticsLogger$LogEventInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/home/HomeApplication;->initAnalytics(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/home/HomeApplication;

.field final synthetic val$processName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/home/HomeApplication;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/vrshell/home/HomeApplication;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/oculus/vrshell/home/HomeApplication$1;->this$0:Lcom/oculus/vrshell/home/HomeApplication;

    iput-object p2, p0, Lcom/oculus/vrshell/home/HomeApplication$1;->val$processName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Llibraries/marauder/analytics/IAnalyticsEvent;)V
    .locals 2
    .param p1, "event"    # Llibraries/marauder/analytics/IAnalyticsEvent;

    .prologue
    .line 154
    const-string v0, "build_product"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Llibraries/marauder/analytics/IAnalyticsEvent;->addExtra(Ljava/lang/String;Ljava/lang/String;)Llibraries/marauder/analytics/IAnalyticsEvent;

    .line 155
    const-string v0, "build_manufacturer"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Llibraries/marauder/analytics/IAnalyticsEvent;->addExtra(Ljava/lang/String;Ljava/lang/String;)Llibraries/marauder/analytics/IAnalyticsEvent;

    .line 156
    const-string v0, "build_release"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Llibraries/marauder/analytics/IAnalyticsEvent;->addExtra(Ljava/lang/String;Ljava/lang/String;)Llibraries/marauder/analytics/IAnalyticsEvent;

    .line 157
    const-string v0, "process"

    iget-object v1, p0, Lcom/oculus/vrshell/home/HomeApplication$1;->val$processName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Llibraries/marauder/analytics/IAnalyticsEvent;->addExtra(Ljava/lang/String;Ljava/lang/String;)Llibraries/marauder/analytics/IAnalyticsEvent;

    .line 158
    return-void
.end method

.class Lcom/oculus/vrshell/ShellApplication$10;
.super Ljava/lang/Object;
.source "ShellApplication.java"

# interfaces
.implements Lcom/oculus/analytics/AnalyticsLoggingInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/ShellApplication;->initializeAnalytics()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/ShellApplication;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/ShellApplication;)V
    .locals 0

    .line 1280
    iput-object p1, p0, Lcom/oculus/vrshell/ShellApplication$10;->this$0:Lcom/oculus/vrshell/ShellApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLog(Lcom/oculus/analytics/AnalyticsEvent;)V
    .locals 2

    .line 1283
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "build_product"

    invoke-virtual {p1, v1, v0}, Lcom/oculus/analytics/AnalyticsEvent;->addExtraString(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/analytics/AnalyticsEvent;

    .line 1284
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v1, "build_version"

    invoke-virtual {p1, v1, v0}, Lcom/oculus/analytics/AnalyticsEvent;->addExtraString(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/analytics/AnalyticsEvent;

    .line 1285
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "build_type"

    invoke-virtual {p1, v1, v0}, Lcom/oculus/analytics/AnalyticsEvent;->addExtraString(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/analytics/AnalyticsEvent;

    .line 1286
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "build_manufacturer"

    invoke-virtual {p1, v1, v0}, Lcom/oculus/analytics/AnalyticsEvent;->addExtraString(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/analytics/AnalyticsEvent;

    return-void
.end method

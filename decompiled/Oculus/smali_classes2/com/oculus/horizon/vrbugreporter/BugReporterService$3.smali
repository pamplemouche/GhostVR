.class Lcom/oculus/horizon/vrbugreporter/BugReporterService$3;
.super Lcom/oculus/aidl/IBugReporterService$Stub;
.source "BugReporterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/vrbugreporter/BugReporterService;->onBindFromStandaloneOS()Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/vrbugreporter/BugReporterService;

.field final synthetic val$report:Lcom/oculus/horizon/vrbugreporter/BugReport;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/vrbugreporter/BugReporterService;Lcom/oculus/horizon/vrbugreporter/BugReport;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService$3;->this$0:Lcom/oculus/horizon/vrbugreporter/BugReporterService;

    iput-object p2, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService$3;->val$report:Lcom/oculus/horizon/vrbugreporter/BugReport;

    invoke-direct {p0}, Lcom/oculus/aidl/IBugReporterService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getReportId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService$3;->val$report:Lcom/oculus/horizon/vrbugreporter/BugReport;

    invoke-virtual {v0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public openScreenshotFile()Landroid/os/ParcelFileDescriptor;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReporterService$3;->val$report:Lcom/oculus/horizon/vrbugreporter/BugReport;

    .line 322
    invoke-virtual {v0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getScreenshotFile()Ljava/io/File;

    move-result-object v0

    const/high16 v1, 0x28000000

    .line 321
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 327
    :goto_0
    return-object v0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    invoke-static {}, Lcom/oculus/horizon/vrbugreporter/BugReporterService;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "could not open screenshot file: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    const/4 v0, 0x0

    goto :goto_0
.end method

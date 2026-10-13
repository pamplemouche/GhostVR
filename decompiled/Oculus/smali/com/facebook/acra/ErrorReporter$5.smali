.class Lcom/facebook/acra/ErrorReporter$5;
.super Ljava/lang/Object;
.source "ErrorReporter.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/acra/ErrorReporter;->removeCrashFiles(Lcom/facebook/acra/ErrorReporter$CrashReportType;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/acra/ErrorReporter;

.field final synthetic val$reportType:Lcom/facebook/acra/ErrorReporter$CrashReportType;


# direct methods
.method constructor <init>(Lcom/facebook/acra/ErrorReporter;Lcom/facebook/acra/ErrorReporter$CrashReportType;)V
    .locals 0

    .prologue
    .line 3843
    iput-object p1, p0, Lcom/facebook/acra/ErrorReporter$5;->this$0:Lcom/facebook/acra/ErrorReporter;

    iput-object p2, p0, Lcom/facebook/acra/ErrorReporter$5;->val$reportType:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 3846
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter$5;->val$reportType:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    invoke-static {v1}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->access$2000(Lcom/facebook/acra/ErrorReporter$CrashReportType;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 3847
    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3848
    const/4 v0, 0x1

    .line 3852
    :cond_0
    return v0

    .line 3846
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

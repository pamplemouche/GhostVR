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
    .param p1, "this$0"    # Lcom/facebook/acra/ErrorReporter;

    .prologue
    .line 3843
    iput-object p1, p0, Lcom/facebook/acra/ErrorReporter$5;->this$0:Lcom/facebook/acra/ErrorReporter;

    iput-object p2, p0, Lcom/facebook/acra/ErrorReporter$5;->val$reportType:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 3846
    iget-object v2, p0, Lcom/facebook/acra/ErrorReporter$5;->val$reportType:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    invoke-static {v2}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->access$2000(Lcom/facebook/acra/ErrorReporter$CrashReportType;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 3847
    .local v0, "extension":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3848
    const/4 v1, 0x1

    .line 3852
    .end local v0    # "extension":Ljava/lang/String;
    :cond_0
    return v1

    .line 3846
    .restart local v0    # "extension":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

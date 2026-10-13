.class Lcom/facebook/acra/ErrorReporter$3;
.super Ljava/lang/Object;
.source "ErrorReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/acra/ErrorReporter;->startUploadIfReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/acra/ErrorReporter;

.field final synthetic val$traceFiles:[Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/facebook/acra/ErrorReporter;[Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/acra/ErrorReporter;

    .prologue
    .line 3489
    iput-object p1, p0, Lcom/facebook/acra/ErrorReporter$3;->this$0:Lcom/facebook/acra/ErrorReporter;

    iput-object p2, p0, Lcom/facebook/acra/ErrorReporter$3;->val$traceFiles:[Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3492
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter$3;->this$0:Lcom/facebook/acra/ErrorReporter;

    invoke-static {v0}, Lcom/facebook/acra/ErrorReporter;->access$1900(Lcom/facebook/acra/ErrorReporter;)Lcom/facebook/acra/BatchUploader;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter$3;->val$traceFiles:[Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/facebook/acra/BatchUploader;->uploadReports([Ljava/io/File;)V

    .line 3493
    return-void
.end method

.class Lcom/facebook/common/errorreporting/FbErrorReporterImpl$6;
.super Ljava/lang/Object;
.source "FbErrorReporterImpl.java"

# interfaces
.implements Lcom/facebook/acra/CustomReportDataSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->putLazyCustomData(Ljava/lang/String;Lcom/facebook/common/errorreporting/FbCustomReportDataSupplier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

.field final synthetic val$valueSupplier:Lcom/facebook/common/errorreporting/FbCustomReportDataSupplier;


# direct methods
.method constructor <init>(Lcom/facebook/common/errorreporting/FbErrorReporterImpl;Lcom/facebook/common/errorreporting/FbCustomReportDataSupplier;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

    .prologue
    .line 500
    iput-object p1, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$6;->this$0:Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

    iput-object p2, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$6;->val$valueSupplier:Lcom/facebook/common/errorreporting/FbCustomReportDataSupplier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCustomData(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 503
    iget-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$6;->val$valueSupplier:Lcom/facebook/common/errorreporting/FbCustomReportDataSupplier;

    invoke-interface {v0, p1}, Lcom/facebook/common/errorreporting/FbCustomReportDataSupplier;->getCustomData(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

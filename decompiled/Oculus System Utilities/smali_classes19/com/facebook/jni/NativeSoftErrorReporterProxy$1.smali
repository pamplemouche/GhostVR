.class final Lcom/facebook/jni/NativeSoftErrorReporterProxy$1;
.super Ljava/lang/Object;
.source "NativeSoftErrorReporterProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/jni/NativeSoftErrorReporterProxy;->flushSoftErrorCacheAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

.field final synthetic val$softErrorsCopy:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/facebook/common/errorreporting/FbErrorReporter;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/facebook/jni/NativeSoftErrorReporterProxy$1;->val$softErrorsCopy:Ljava/util/List;

    iput-object p2, p0, Lcom/facebook/jni/NativeSoftErrorReporterProxy$1;->val$fbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 131
    invoke-static {}, Lcom/facebook/jni/NativeSoftErrorReporterProxy;->access$000()Lcom/facebook/common/util/TriState;

    move-result-object v0

    .line 132
    .local v0, "reportNativeSoftErrors":Lcom/facebook/common/util/TriState;
    sget-object v2, Lcom/facebook/common/util/TriState;->YES:Lcom/facebook/common/util/TriState;

    if-ne v0, v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/facebook/jni/NativeSoftErrorReporterProxy$1;->val$softErrorsCopy:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/common/errorreporting/SoftError;

    .line 134
    .local v1, "softError":Lcom/facebook/common/errorreporting/SoftError;
    iget-object v3, p0, Lcom/facebook/jni/NativeSoftErrorReporterProxy$1;->val$fbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    invoke-interface {v3, v1}, Lcom/facebook/common/errorreporting/FbErrorReporter;->softReport(Lcom/facebook/common/errorreporting/SoftError;)V

    goto :goto_0

    .line 137
    .end local v1    # "softError":Lcom/facebook/common/errorreporting/SoftError;
    :cond_0
    return-void
.end method

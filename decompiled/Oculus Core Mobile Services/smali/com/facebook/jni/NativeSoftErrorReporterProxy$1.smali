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
    .locals 3

    .prologue
    .line 131
    invoke-static {}, Lcom/facebook/jni/NativeSoftErrorReporterProxy;->access$000()Lcom/facebook/common/util/TriState;

    move-result-object v0

    .line 132
    sget-object v1, Lcom/facebook/common/util/TriState;->YES:Lcom/facebook/common/util/TriState;

    if-ne v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/facebook/jni/NativeSoftErrorReporterProxy$1;->val$softErrorsCopy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/errorreporting/SoftError;

    .line 134
    iget-object v2, p0, Lcom/facebook/jni/NativeSoftErrorReporterProxy$1;->val$fbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    invoke-interface {v2, v0}, Lcom/facebook/common/errorreporting/FbErrorReporter;->softReport(Lcom/facebook/common/errorreporting/SoftError;)V

    goto :goto_0

    .line 137
    :cond_0
    return-void
.end method

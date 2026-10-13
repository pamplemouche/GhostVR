.class Lcom/facebook/quicklog/QuickPerformanceLoggerImpl$5;
.super Ljava/lang/Object;
.source "QuickPerformanceLoggerImpl.java"

# interfaces
.implements Lcom/facebook/quicklog/IntermediatePoints$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->logPle(Lcom/facebook/quicklog/PerformanceLoggingEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;

.field final synthetic val$moreDetails:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;Ljava/lang/StringBuilder;)V
    .locals 0

    .prologue
    .line 2428
    iput-object p1, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl$5;->this$0:Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;

    iput-object p2, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl$5;->val$moreDetails:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(JILjava/lang/String;Lcom/facebook/quicklog/PointData;Landroid/util/SparseArray;)V
    .locals 3
    .param p3    # I
        .annotation build Lcom/facebook/quicklog/EventLevel;
        .end annotation
    .end param
    .param p5    # Lcom/facebook/quicklog/PointData;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "Lcom/facebook/quicklog/PointData;",
            "Landroid/util/SparseArray",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2436
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl$5;->val$moreDetails:Ljava/lang/StringBuilder;

    const-string v1, "<p:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2437
    if-eqz p5, :cond_0

    .line 2438
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl$5;->val$moreDetails:Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2440
    :cond_0
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl$5;->val$moreDetails:Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[ms]>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2441
    return-void
.end method

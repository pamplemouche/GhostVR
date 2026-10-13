.class Lcom/facebook/quicklog/QuickPerformanceLoggerImpl$2;
.super Ljava/lang/Object;
.source "QuickPerformanceLoggerImpl.java"

# interfaces
.implements Lcom/facebook/quicklog/MarkersManager$MarkersRemoveHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;


# direct methods
.method constructor <init>(Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl$2;->this$0:Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMarkerDropped(II)V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl$2;->this$0:Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;

    const-string v1, "markerDropped"

    invoke-static {v0, v1, p1}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->access$000(Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;Ljava/lang/String;I)V

    .line 350
    return-void
.end method

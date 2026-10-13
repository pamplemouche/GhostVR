.class Lcom/facebook/quicklog/QuickPerformanceLoggerImpl$3;
.super Ljava/lang/Object;
.source "QuickPerformanceLoggerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->send(Lcom/facebook/quicklog/PerformanceLoggingEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;

.field final synthetic val$ple:Lcom/facebook/quicklog/PerformanceLoggingEvent;


# direct methods
.method constructor <init>(Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;Lcom/facebook/quicklog/PerformanceLoggingEvent;)V
    .locals 0

    .prologue
    .line 2366
    iput-object p1, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl$3;->this$0:Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;

    iput-object p2, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl$3;->val$ple:Lcom/facebook/quicklog/PerformanceLoggingEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2369
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl$3;->this$0:Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;

    iget-object v1, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl$3;->val$ple:Lcom/facebook/quicklog/PerformanceLoggingEvent;

    invoke-static {v0, v1}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->access$100(Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;Lcom/facebook/quicklog/PerformanceLoggingEvent;)V

    .line 2371
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl$3;->this$0:Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;

    iget-object v1, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl$3;->val$ple:Lcom/facebook/quicklog/PerformanceLoggingEvent;

    invoke-static {v0, v1}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->access$200(Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;Lcom/facebook/quicklog/PerformanceLoggingEvent;)V

    .line 2372
    return-void
.end method

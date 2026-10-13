.class Lcom/facebook/quicklog/QuickPerformanceLoggerImpl$1;
.super Lcom/facebook/quicklog/RecyclingPool;
.source "QuickPerformanceLoggerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;-><init>(Ljavax/inject/Provider;Lcom/facebook/quicklog/QPLConfiguration;Ljavax/inject/Provider;Lcom/facebook/common/time/MonotonicClock;Lcom/facebook/common/time/Clock;Lcom/facebook/quicklog/DebugAndTestConfig;Lcom/facebook/quicklog/AppStates;Lcom/facebook/quicklog/BackgroundExecution;[Lcom/facebook/quicklog/QuickEventListener;[Lcom/facebook/quicklog/PerformanceLoggingEventVisitor;[Lcom/facebook/quicklog/DataProvider;[Lcom/facebook/quicklog/EventDecorator;Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;Lcom/facebook/quicklog/QuicklogNameProvider;Lcom/facebook/quicklog/HealthMonitor;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/quicklog/RecyclingPool",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;


# direct methods
.method constructor <init>(Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl$1;->this$0:Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;

    invoke-direct {p0}, Lcom/facebook/quicklog/RecyclingPool;-><init>()V

    return-void
.end method

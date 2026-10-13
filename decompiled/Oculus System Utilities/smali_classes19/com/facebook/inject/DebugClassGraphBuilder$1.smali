.class final Lcom/facebook/inject/DebugClassGraphBuilder$1;
.super Ljava/lang/Object;
.source "DebugClassGraphBuilder.java"

# interfaces
.implements Lcom/facebook/common/instrumentation/InstrumentationHelper$InstrumentationLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/inject/DebugClassGraphBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {}, Lcom/facebook/inject/DebugClassGraphBuilder;->access$000()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 57
    invoke-static {}, Lcom/facebook/inject/DebugClassGraphBuilder;->access$000()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    return-void
.end method

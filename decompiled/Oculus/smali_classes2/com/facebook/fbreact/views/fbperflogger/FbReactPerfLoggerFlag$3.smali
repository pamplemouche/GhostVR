.class Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag$3;
.super Ljava/lang/Object;
.source "FbReactPerfLoggerFlag.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->onDrawCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;

.field final synthetic val$firstRender:Z


# direct methods
.method constructor <init>(Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;Z)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag$3;->this$0:Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;

    iput-boolean p2, p0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag$3;->val$firstRender:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x2000

    .line 122
    const-string v0, "FbReactPerfLoggerFlag.onFrameCallback"

    invoke-static {v4, v5, v0}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag$3;->this$0:Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;

    invoke-static {v0}, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->access$300(Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;)Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag$AfterDrawListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag$3;->this$0:Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;

    invoke-static {v1}, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->access$100(Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;)I

    move-result v1

    iget-boolean v2, p0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag$3;->val$firstRender:Z

    iget-object v3, p0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag$3;->this$0:Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;

    invoke-static {v3}, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->access$200(Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag$AfterDrawListener;->onAfterDraw(IZLcom/facebook/react/bridge/ReadableMap;)V

    .line 125
    invoke-static {v4, v5}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 126
    return-void
.end method

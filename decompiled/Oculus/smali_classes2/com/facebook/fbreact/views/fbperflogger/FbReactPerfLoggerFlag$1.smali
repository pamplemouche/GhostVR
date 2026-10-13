.class Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag$1;
.super Ljava/lang/Object;
.source "FbReactPerfLoggerFlag.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->getOnDrawListener()Landroid/view/ViewTreeObserver$OnDrawListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;


# direct methods
.method constructor <init>(Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag$1;->this$0:Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag$1;->this$0:Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;

    invoke-static {v0}, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->access$000(Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;)V

    .line 94
    return-void
.end method

.class Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag$2;
.super Ljava/lang/Object;
.source "FbReactPerfLoggerFlag.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->getOnPreDrawListener()Landroid/view/ViewTreeObserver$OnPreDrawListener;
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
    .line 103
    iput-object p1, p0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag$2;->this$0:Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag$2;->this$0:Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;

    invoke-static {v0}, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->access$000(Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;)V

    .line 107
    const/4 v0, 0x1

    return v0
.end method

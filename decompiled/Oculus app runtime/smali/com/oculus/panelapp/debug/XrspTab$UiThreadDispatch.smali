.class Lcom/oculus/panelapp/debug/XrspTab$UiThreadDispatch;
.super Ljava/util/TimerTask;
.source "XrspTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/debug/XrspTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiThreadDispatch"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/debug/XrspTab;


# direct methods
.method private constructor <init>(Lcom/oculus/panelapp/debug/XrspTab;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/oculus/panelapp/debug/XrspTab$UiThreadDispatch;->this$0:Lcom/oculus/panelapp/debug/XrspTab;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/panelapp/debug/XrspTab;Lcom/oculus/panelapp/debug/XrspTab$1;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/debug/XrspTab$UiThreadDispatch;-><init>(Lcom/oculus/panelapp/debug/XrspTab;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/oculus/panelapp/debug/XrspTab$UiThreadDispatch;->this$0:Lcom/oculus/panelapp/debug/XrspTab;

    invoke-static {v0}, Lcom/oculus/panelapp/debug/XrspTab;->access$200(Lcom/oculus/panelapp/debug/XrspTab;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/debug/XrspTab$UiThreadDispatch;->this$0:Lcom/oculus/panelapp/debug/XrspTab;

    invoke-static {v1}, Lcom/oculus/panelapp/debug/XrspTab;->access$100(Lcom/oculus/panelapp/debug/XrspTab;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.class Lcom/oculus/panelapp/debug/TrackingTab$UiThreadDispatch;
.super Ljava/util/TimerTask;
.source "TrackingTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/debug/TrackingTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiThreadDispatch"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/debug/TrackingTab;


# direct methods
.method private constructor <init>(Lcom/oculus/panelapp/debug/TrackingTab;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/oculus/panelapp/debug/TrackingTab$UiThreadDispatch;->this$0:Lcom/oculus/panelapp/debug/TrackingTab;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/panelapp/debug/TrackingTab;Lcom/oculus/panelapp/debug/TrackingTab$1;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/debug/TrackingTab$UiThreadDispatch;-><init>(Lcom/oculus/panelapp/debug/TrackingTab;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/oculus/panelapp/debug/TrackingTab$UiThreadDispatch;->this$0:Lcom/oculus/panelapp/debug/TrackingTab;

    invoke-static {v0}, Lcom/oculus/panelapp/debug/TrackingTab;->access$200(Lcom/oculus/panelapp/debug/TrackingTab;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/debug/TrackingTab$UiThreadDispatch;->this$0:Lcom/oculus/panelapp/debug/TrackingTab;

    invoke-static {v1}, Lcom/oculus/panelapp/debug/TrackingTab;->access$100(Lcom/oculus/panelapp/debug/TrackingTab;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

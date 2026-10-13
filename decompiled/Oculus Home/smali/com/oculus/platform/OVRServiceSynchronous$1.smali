.class Lcom/oculus/platform/OVRServiceSynchronous$1;
.super Ljava/lang/Object;
.source "OVRServiceSynchronous.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/platform/OVRServiceSynchronous;->connectInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/platform/OVRServiceSynchronous;


# direct methods
.method constructor <init>(Lcom/oculus/platform/OVRServiceSynchronous;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/platform/OVRServiceSynchronous;

    .prologue
    .line 92
    .local p0, "this":Lcom/oculus/platform/OVRServiceSynchronous$1;, "Lcom/oculus/platform/OVRServiceSynchronous$1;"
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceSynchronous$1;->this$0:Lcom/oculus/platform/OVRServiceSynchronous;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 95
    .local p0, "this":Lcom/oculus/platform/OVRServiceSynchronous$1;, "Lcom/oculus/platform/OVRServiceSynchronous$1;"
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceSynchronous$1;->this$0:Lcom/oculus/platform/OVRServiceSynchronous;

    invoke-static {v0}, Lcom/oculus/platform/OVRServiceSynchronous;->access$000(Lcom/oculus/platform/OVRServiceSynchronous;)Z

    .line 96
    return-void
.end method

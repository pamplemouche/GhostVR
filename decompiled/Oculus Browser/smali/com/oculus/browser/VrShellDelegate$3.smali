.class public Lcom/oculus/browser/VrShellDelegate$3;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/oculus/browser/VrShellDelegate;


# direct methods
.method public constructor <init>(Lcom/oculus/browser/VrShellDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/VrShellDelegate$3;->this$0:Lcom/oculus/browser/VrShellDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate$3;->this$0:Lcom/oculus/browser/VrShellDelegate;

    invoke-virtual {v0}, Lcom/oculus/browser/VrShellDelegate;->isInVR()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/oculus/vrapi/SystemProps;->getHmtMounted()Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/oculus/browser/VrShellDelegate$3;->this$0:Lcom/oculus/browser/VrShellDelegate;

    iget-boolean v2, v1, Lcom/oculus/browser/VrShellDelegate;->mMountState:Z

    if-eq v2, v0, :cond_1

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v1}, Lcom/oculus/browser/VrShellDelegate;->access$600(Lcom/oculus/browser/VrShellDelegate;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v1}, Lcom/oculus/browser/VrShellDelegate;->access$700(Lcom/oculus/browser/VrShellDelegate;)V

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/oculus/browser/VrShellDelegate$3;->this$0:Lcom/oculus/browser/VrShellDelegate;

    iput-boolean v0, v1, Lcom/oculus/browser/VrShellDelegate;->mMountState:Z

    :cond_1
    const-wide/16 v0, 0x1f4

    .line 7
    invoke-static {p0, v0, v1}, Lorg/chromium/base/ThreadUtils;->a(Ljava/lang/Runnable;J)V

    :cond_2
    return-void
.end method

.class public Lcom/oculus/browser/VrShellDelegate$2;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/oculus/browser/VrShellDelegate;

.field public final synthetic val$requestedWebVR:Z


# direct methods
.method public constructor <init>(Lcom/oculus/browser/VrShellDelegate;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/VrShellDelegate$2;->this$0:Lcom/oculus/browser/VrShellDelegate;

    iput-boolean p2, p0, Lcom/oculus/browser/VrShellDelegate$2;->val$requestedWebVR:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate$2;->this$0:Lcom/oculus/browser/VrShellDelegate;

    invoke-static {v0}, Lcom/oculus/browser/VrShellDelegate;->access$400(Lcom/oculus/browser/VrShellDelegate;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate$2;->this$0:Lcom/oculus/browser/VrShellDelegate;

    iget-boolean v1, p0, Lcom/oculus/browser/VrShellDelegate$2;->val$requestedWebVR:Z

    invoke-static {v0, v1}, Lcom/oculus/browser/VrShellDelegate;->access$500(Lcom/oculus/browser/VrShellDelegate;Z)V

    :cond_0
    return-void
.end method

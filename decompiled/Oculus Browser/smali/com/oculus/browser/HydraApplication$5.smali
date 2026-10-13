.class public Lcom/oculus/browser/HydraApplication$5;
.super Ljava/util/TimerTask;
.source "PG"


# instance fields
.field public final synthetic this$0:Lcom/oculus/browser/HydraApplication;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/oculus/browser/HydraApplication;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/HydraApplication$5;->this$0:Lcom/oculus/browser/HydraApplication;

    iput-object p2, p0, Lcom/oculus/browser/HydraApplication$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/oculus/browser/OVRServiceManager;->getInstance()Lcom/oculus/browser/OVRServiceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/browser/HydraApplication$5;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oculus/browser/OVRServiceManager;->requestUserCredentials(Landroid/content/Context;)V

    return-void
.end method

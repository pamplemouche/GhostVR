.class Lcom/oculus/horizon/fbconnect/FBConnectInit$1;
.super Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;
.source "FBConnectInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/fbconnect/FBConnectInit;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/fbconnect/FBConnectInit;


# direct methods
.method varargs constructor <init>(Lcom/oculus/horizon/fbconnect/FBConnectInit;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/oculus/horizon/fbconnect/FBConnectInit$1;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectInit;

    invoke-direct {p0, p2}, Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/secure/receiver/BroadcastReceiverLike;)V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oculus/horizon/fbconnect/FBConnectInit$1;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectInit;

    invoke-static {v0}, Lcom/oculus/horizon/fbconnect/FBConnectInit;->access$000(Lcom/oculus/horizon/fbconnect/FBConnectInit;)Lcom/oculus/auth/credentials/CredentialsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/auth/credentials/CredentialsManager;->getCredentials()Lcom/oculus/auth/credentials/Credentials;

    move-result-object v0

    if-nez v0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-static {}, Lcom/oculus/horizon/fbconnect/FBConnectInit;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Updating linked FB account on %s"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/oculus/horizon/fbconnect/FBConnectInit$1;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectInit;

    invoke-static {v0}, Lcom/oculus/horizon/fbconnect/FBConnectInit;->access$200(Lcom/oculus/horizon/fbconnect/FBConnectInit;)Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    move-result-object v0

    invoke-static {}, Lcom/oculus/horizon/fbconnect/FBConnectInit;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->updateFBConnectAccountAsync(Ljava/lang/String;)Lbolts/Task;

    goto :goto_0
.end method

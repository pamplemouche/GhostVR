.class Lcom/oculus/horizon/fbconnectui/FBConnectFragment$4;
.super Ljava/lang/Object;
.source "FBConnectFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->createOnSSOConnectClickListener(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

.field final synthetic val$facebookAccessToken:Ljava/lang/String;

.field final synthetic val$facebookId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$4;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

    iput-object p2, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$4;->val$facebookId:Ljava/lang/String;

    iput-object p3, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$4;->val$facebookAccessToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 392
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$4;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

    const-string v1, "sso_connect_attempt"

    invoke-static {v0, v1}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->access$400(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$4;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

    invoke-static {v0}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->access$800(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;)Lcom/oculus/horizon/widget/ProgressButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 395
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$4;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

    invoke-static {v0}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->access$200(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;)Lcom/oculus/horizon/fbconnect/FBConnectMethods;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$4;->val$facebookId:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$4;->val$facebookAccessToken:Ljava/lang/String;

    sget-object v3, Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;->AUTO_FRIEND:Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;

    new-instance v4, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$4$1;

    iget-object v5, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$4;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

    invoke-direct {v4, p0, v5}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$4$1;-><init>(Lcom/oculus/horizon/fbconnectui/FBConnectFragment$4;Lcom/oculus/horizon/base/OculusBaseFragment;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oculus/horizon/fbconnect/FBConnectMethods;->proxyInstall(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;Lretrofit/Callback;)V

    .line 412
    return-void
.end method

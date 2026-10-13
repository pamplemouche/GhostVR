.class Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$6;
.super Ljava/lang/Object;
.source "Nux360FBLoginIntroFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->createOnSSOConnectClickListener(Lcom/oculus/horizon/fbconnect/FacebookData;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

.field final synthetic val$facebookData:Lcom/oculus/horizon/fbconnect/FacebookData;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;Lcom/oculus/horizon/fbconnect/FacebookData;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$6;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    iput-object p2, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$6;->val$facebookData:Lcom/oculus/horizon/fbconnect/FacebookData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 299
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$6;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->showLoading()V

    .line 300
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$6;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$6;->val$facebookData:Lcom/oculus/horizon/fbconnect/FacebookData;

    invoke-virtual {v1}, Lcom/oculus/horizon/fbconnect/FacebookData;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$6;->val$facebookData:Lcom/oculus/horizon/fbconnect/FacebookData;

    invoke-virtual {v2}, Lcom/oculus/horizon/fbconnect/FacebookData;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->access$400(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$6;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    const-string v1, "auth_attempt"

    invoke-static {v0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->access$1200(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;Ljava/lang/String;)V

    .line 302
    return-void
.end method

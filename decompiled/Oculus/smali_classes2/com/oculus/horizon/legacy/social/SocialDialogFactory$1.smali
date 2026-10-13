.class Lcom/oculus/horizon/legacy/social/SocialDialogFactory$1;
.super Ljava/lang/Object;
.source "SocialDialogFactory.java"

# interfaces
.implements Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/SocialDialogFactory;->newUnfriendDialog(Landroid/content/Context;Lcom/oculus/horizon/api/common/user/User;Lcom/oculus/horizon/logging/TrackingViews$View;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/SocialDialogFactory;

.field final synthetic val$sourceView:Lcom/oculus/horizon/logging/TrackingViews$View;

.field final synthetic val$user:Lcom/oculus/horizon/api/common/user/User;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/SocialDialogFactory;Lcom/oculus/horizon/logging/TrackingViews$View;Lcom/oculus/horizon/api/common/user/User;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/SocialDialogFactory$1;->this$0:Lcom/oculus/horizon/legacy/social/SocialDialogFactory;

    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/SocialDialogFactory$1;->val$sourceView:Lcom/oculus/horizon/logging/TrackingViews$View;

    iput-object p3, p0, Lcom/oculus/horizon/legacy/social/SocialDialogFactory$1;->val$user:Lcom/oculus/horizon/api/common/user/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)Z
    .locals 3

    .prologue
    .line 43
    packed-switch p2, :pswitch_data_0

    .line 49
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 45
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialDialogFactory$1;->this$0:Lcom/oculus/horizon/legacy/social/SocialDialogFactory;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialDialogFactory;->access$000(Lcom/oculus/horizon/legacy/social/SocialDialogFactory;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/SocialDialogFactory$1;->val$sourceView:Lcom/oculus/horizon/logging/TrackingViews$View;

    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/SocialDialogFactory$1;->val$user:Lcom/oculus/horizon/api/common/user/User;

    iget-boolean v2, v2, Lcom/oculus/horizon/api/common/user/User;->is_facebook_friend:Z

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/logging/OculusLogger;->reportUnfriended(Lcom/oculus/horizon/logging/TrackingViews$View;Z)V

    .line 46
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialDialogFactory$1;->this$0:Lcom/oculus/horizon/legacy/social/SocialDialogFactory;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialDialogFactory;->access$100(Lcom/oculus/horizon/legacy/social/SocialDialogFactory;)Lcom/oculus/horizon/legacy/social/SocialManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/SocialDialogFactory$1;->val$user:Lcom/oculus/horizon/api/common/user/User;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/legacy/social/SocialManager;->doUnfriend(Lcom/oculus/horizon/api/common/user/User;)V

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

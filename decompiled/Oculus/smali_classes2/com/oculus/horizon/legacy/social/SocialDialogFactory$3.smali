.class Lcom/oculus/horizon/legacy/social/SocialDialogFactory$3;
.super Ljava/lang/Object;
.source "SocialDialogFactory.java"

# interfaces
.implements Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/SocialDialogFactory;->newUnblockDialog(Landroid/content/Context;Lcom/oculus/horizon/legacy/social/SocialManager;Lcom/oculus/horizon/social/api/BlockedUser;Lcom/oculus/horizon/logging/TrackingViews$View;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/SocialDialogFactory;

.field final synthetic val$socialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

.field final synthetic val$sourceView:Lcom/oculus/horizon/logging/TrackingViews$View;

.field final synthetic val$user:Lcom/oculus/horizon/social/api/BlockedUser;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/SocialDialogFactory;Lcom/oculus/horizon/logging/TrackingViews$View;Lcom/oculus/horizon/legacy/social/SocialManager;Lcom/oculus/horizon/social/api/BlockedUser;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/SocialDialogFactory$3;->this$0:Lcom/oculus/horizon/legacy/social/SocialDialogFactory;

    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/SocialDialogFactory$3;->val$sourceView:Lcom/oculus/horizon/logging/TrackingViews$View;

    iput-object p3, p0, Lcom/oculus/horizon/legacy/social/SocialDialogFactory$3;->val$socialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    iput-object p4, p0, Lcom/oculus/horizon/legacy/social/SocialDialogFactory$3;->val$user:Lcom/oculus/horizon/social/api/BlockedUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)Z
    .locals 2

    .prologue
    .line 110
    packed-switch p2, :pswitch_data_0

    .line 117
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 112
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialDialogFactory$3;->this$0:Lcom/oculus/horizon/legacy/social/SocialDialogFactory;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialDialogFactory;->access$000(Lcom/oculus/horizon/legacy/social/SocialDialogFactory;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/SocialDialogFactory$3;->val$sourceView:Lcom/oculus/horizon/logging/TrackingViews$View;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportUnblocked(Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 113
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialDialogFactory$3;->this$0:Lcom/oculus/horizon/legacy/social/SocialDialogFactory;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialDialogFactory;->access$000(Lcom/oculus/horizon/legacy/social/SocialDialogFactory;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/logging/OculusLogger;->reportPrivacyScreenBlockedUsersUserUnblocked()V

    .line 114
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialDialogFactory$3;->val$socialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/SocialDialogFactory$3;->val$user:Lcom/oculus/horizon/social/api/BlockedUser;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/legacy/social/SocialManager;->doUnblock(Lcom/oculus/horizon/social/api/BlockedUser;)V

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

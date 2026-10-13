.class Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$6;
.super Ljava/lang/Object;
.source "SocialReceiveInviteDialog.java"

# interfaces
.implements Lcom/oculus/vrshell/panels/ImageLoader$ImageCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->updateDialogWithPartyInfo(Lcom/oculus/panelapp/anytimeui/PartyInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

.field final synthetic val$activityImage:Landroid/widget/ImageView;

.field final synthetic val$partyInfo:Lcom/oculus/panelapp/anytimeui/PartyInfo;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;Landroid/widget/ImageView;Lcom/oculus/panelapp/anytimeui/PartyInfo;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$6;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$6;->val$activityImage:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$6;->val$partyInfo:Lcom/oculus/panelapp/anytimeui/PartyInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .line 320
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$300()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not load image: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$6;->val$partyInfo:Lcom/oculus/panelapp/anytimeui/PartyInfo;

    iget-object v1, v1, Lcom/oculus/panelapp/anytimeui/PartyInfo;->inviteActivityImageUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 303
    invoke-static {}, Lcom/oculus/vrshell/panels/UiThreadExecutor;->getInstance()Lcom/oculus/vrshell/panels/UiThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$6$1;

    invoke-direct {v1, p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$6$1;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$6;Landroid/graphics/Bitmap;)V

    .line 304
    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/UiThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

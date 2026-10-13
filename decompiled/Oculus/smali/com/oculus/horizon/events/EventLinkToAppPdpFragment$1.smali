.class Lcom/oculus/horizon/events/EventLinkToAppPdpFragment$1;
.super Ljava/lang/Object;
.source "EventLinkToAppPdpFragment.java"

# interfaces
.implements Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment$1;->this$0:Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 53
    packed-switch p2, :pswitch_data_0

    .line 66
    :goto_0
    return v0

    .line 55
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment$1;->this$0:Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;

    invoke-static {v0}, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;->access$100(Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment$1;->this$0:Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;

    invoke-static {v1}, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;->access$000(Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;)Lcom/oculus/horizon/logging/OculusLogger$EventLinkToPdpModal$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportEventLinkToPdpModalConfirm(Lcom/oculus/horizon/logging/OculusLogger$EventLinkToPdpModal$Data;)V

    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    const-string v1, "arg_referrer_event_id"

    iget-object v2, p0, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment$1;->this$0:Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;

    invoke-static {v2}, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;->access$000(Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;)Lcom/oculus/horizon/logging/OculusLogger$EventLinkToPdpModal$Data;

    move-result-object v2

    iget-object v2, v2, Lcom/oculus/horizon/logging/OculusLogger$EventLinkToPdpModal$Data;->mEventId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment$1;->this$0:Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;

    invoke-static {v1}, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;->access$300(Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;)Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment$1;->this$0:Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;

    invoke-static {v2}, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;->access$200(Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;->newApplicationPdpFragment(Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 59
    new-instance v1, Lcom/oculus/horizon/navigation/FragmentNavigator;

    iget-object v2, p0, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment$1;->this$0:Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;

    invoke-virtual {v2}, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    .line 60
    iget-object v0, p0, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment$1;->this$0:Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;->dismiss()V

    .line 61
    const/4 v0, 0x1

    goto :goto_0

    .line 63
    :pswitch_1
    iget-object v1, p0, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment$1;->this$0:Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;

    invoke-static {v1}, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;->access$100(Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment$1;->this$0:Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;

    invoke-static {v2}, Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;->access$000(Lcom/oculus/horizon/events/EventLinkToAppPdpFragment;)Lcom/oculus/horizon/logging/OculusLogger$EventLinkToPdpModal$Data;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/logging/OculusLogger;->reportEventLinkToPdpModalCancel(Lcom/oculus/horizon/logging/OculusLogger$EventLinkToPdpModal$Data;)V

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

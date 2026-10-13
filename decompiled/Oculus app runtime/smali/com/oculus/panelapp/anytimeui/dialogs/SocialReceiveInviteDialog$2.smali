.class Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$2;
.super Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchInvitableFriendsCallback;
.source "SocialReceiveInviteDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->updateSubtitleBasedOnFriendCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchInvitableFriendsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 3

    .line 138
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error fetching friend list"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$500(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    move-result-object v0

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->social_fb_link_upsell_point_1_non_empty_friend_count_icon:I

    .line 140
    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 141
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$500(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    move-result-object v0

    sget v2, Lcom/oculus/panelapp/anytimeui/R$id;->social_fb_link_upsell_point_1_non_empty_friend_count_text:I

    .line 143
    invoke-virtual {v0, v2}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 144
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$500(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setVisibility(I)V

    return-void
.end method

.method public onSuccess(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oculus/panelapp/anytimeui/FriendListRowData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 111
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/16 p2, 0x8

    if-nez p1, :cond_0

    .line 112
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    .line 113
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$400(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    move-result-object p1

    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->system_dialog_standard_layout_title:I

    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    check-cast p1, Landroid/widget/TextView;

    .line 114
    sget v0, Lcom/oculus/panelapp/anytimeui/R$string;->social_party_fb_link_dialog_title_with_non_empty_friend_count:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 115
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    .line 116
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$500(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    move-result-object p1

    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->social_fb_link_upsell_dialog_subtitle:I

    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 117
    sget v0, Lcom/oculus/panelapp/anytimeui/R$string;->social_fb_link_upsell_dialog_subtitle_with_non_empty_friend_count:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 119
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$500(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    move-result-object p1

    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->social_fb_link_upsell_point_3_icon:I

    .line 120
    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 121
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$500(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    move-result-object p1

    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->social_fb_link_upsell_point_3_text:I

    .line 123
    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 124
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$500(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    move-result-object p1

    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->social_fb_link_upsell_point_1_non_empty_friend_count_icon:I

    .line 127
    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 128
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 129
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$500(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    move-result-object p1

    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->social_fb_link_upsell_point_1_non_empty_friend_count_text:I

    .line 130
    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 131
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 133
    :goto_0
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$500(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setVisibility(I)V

    return-void
.end method

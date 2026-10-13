.class Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$4;
.super Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchInvitableFriendsCallback;
.source "SocialSendInviteDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->initializeFBUpsellContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$4;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchInvitableFriendsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 3

    .line 177
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error fetching friend list"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$4;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$700(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    move-result-object v0

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->social_fb_link_upsell_point_1_non_empty_friend_count_icon:I

    .line 179
    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 180
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$4;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$700(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    move-result-object v0

    sget v2, Lcom/oculus/panelapp/anytimeui/R$id;->social_fb_link_upsell_point_1_non_empty_friend_count_text:I

    .line 182
    invoke-virtual {v0, v2}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 183
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$4;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$700(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

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

    .line 150
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/16 p2, 0x8

    if-nez p1, :cond_0

    .line 151
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$4;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    .line 152
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$700(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    move-result-object p1

    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->system_dialog_standard_layout_title:I

    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    check-cast p1, Landroid/widget/TextView;

    .line 153
    sget v0, Lcom/oculus/panelapp/anytimeui/R$string;->social_party_fb_link_dialog_title_with_non_empty_friend_count:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 154
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$4;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    .line 155
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$700(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    move-result-object p1

    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->social_fb_link_upsell_dialog_subtitle:I

    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 156
    sget v0, Lcom/oculus/panelapp/anytimeui/R$string;->social_fb_link_upsell_dialog_subtitle_with_non_empty_friend_count:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 158
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$4;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$700(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    move-result-object p1

    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->social_fb_link_upsell_point_3_icon:I

    .line 159
    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 160
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$4;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$700(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    move-result-object p1

    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->social_fb_link_upsell_point_3_text:I

    .line 162
    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 163
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$4;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$700(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    move-result-object p1

    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->social_fb_link_upsell_point_1_non_empty_friend_count_icon:I

    .line 166
    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 167
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$4;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$700(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    move-result-object p1

    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->social_fb_link_upsell_point_1_non_empty_friend_count_text:I

    .line 169
    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 170
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 172
    :goto_0
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$4;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$700(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setVisibility(I)V

    return-void
.end method

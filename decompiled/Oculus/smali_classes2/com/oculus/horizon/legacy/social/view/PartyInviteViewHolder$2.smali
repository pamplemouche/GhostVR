.class Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder$2;
.super Ljava/lang/Object;
.source "PartyInviteViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;-><init>(Landroid/view/ViewGroup;Landroid/content/res/Resources;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;Lcom/oculus/horizon/legacy/social/SocialManager;Lcom/oculus/horizon/style/StyleManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;->access$000(Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;Z)V

    .line 70
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;->access$200(Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;)Lcom/oculus/horizon/legacy/social/SocialManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;

    invoke-static {v1}, Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;->access$100(Lcom/oculus/horizon/legacy/social/view/PartyInviteViewHolder;)Lcom/oculus/horizon/api/common/PartyInvite;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/legacy/social/SocialManager;->doRejectPartyInvite(Lcom/oculus/horizon/api/common/PartyInvite;)V

    .line 71
    return-void
.end method

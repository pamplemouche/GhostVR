.class Lcom/oculus/horizon/legacy/social/view/FindFacebookFriendsViewHolder$1;
.super Ljava/lang/Object;
.source "FindFacebookFriendsViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/view/FindFacebookFriendsViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;Lcom/oculus/horizon/logging/OculusLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/view/FindFacebookFriendsViewHolder;

.field final synthetic val$socialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/view/FindFacebookFriendsViewHolder;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/view/FindFacebookFriendsViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/FindFacebookFriendsViewHolder;

    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/view/FindFacebookFriendsViewHolder$1;->val$socialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FindFacebookFriendsViewHolder$1;->val$socialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->doOpenFacebookFriends()V

    .line 31
    return-void
.end method

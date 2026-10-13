.class Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$6;
.super Ljava/lang/Object;
.source "SocialSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$6;->this$0:Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$6;->this$0:Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->getAdapter()Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->doOpenFacebookFriends()V

    .line 176
    return-void
.end method

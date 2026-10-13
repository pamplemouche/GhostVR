.class Lcom/oculus/horizon/events/SubscribedEventsFragment$1;
.super Ljava/lang/Object;
.source "SubscribedEventsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/events/SubscribedEventsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/events/SubscribedEventsFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/events/SubscribedEventsFragment;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/oculus/horizon/events/SubscribedEventsFragment$1;->this$0:Lcom/oculus/horizon/events/SubscribedEventsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/oculus/horizon/navigation/FragmentNavigator;

    iget-object v1, p0, Lcom/oculus/horizon/events/SubscribedEventsFragment$1;->this$0:Lcom/oculus/horizon/events/SubscribedEventsFragment;

    invoke-virtual {v1}, Lcom/oculus/horizon/events/SubscribedEventsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    new-instance v1, Lcom/oculus/horizon/events/EventsFragment;

    invoke-direct {v1}, Lcom/oculus/horizon/events/EventsFragment;-><init>()V

    .line 64
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    .line 66
    return-void
.end method

.class Lcom/oculus/horizon/events/EventsListFragment$1;
.super Ljava/lang/Object;
.source "EventsListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/events/EventsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/events/EventsListFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/events/EventsListFragment;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/oculus/horizon/events/EventsListFragment$1;->this$0:Lcom/oculus/horizon/events/EventsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oculus/horizon/events/EventsListFragment$1;->this$0:Lcom/oculus/horizon/events/EventsListFragment;

    iget-object v0, v0, Lcom/oculus/horizon/events/EventsListFragment;->mAdapter:Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;

    invoke-virtual {v0}, Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;->refreshEvents()V

    .line 36
    iget-object v0, p0, Lcom/oculus/horizon/events/EventsListFragment$1;->this$0:Lcom/oculus/horizon/events/EventsListFragment;

    invoke-static {v0}, Lcom/oculus/horizon/events/EventsListFragment;->access$100(Lcom/oculus/horizon/events/EventsListFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/events/EventsListFragment$1;->this$0:Lcom/oculus/horizon/events/EventsListFragment;

    invoke-static {v1}, Lcom/oculus/horizon/events/EventsListFragment;->access$000(Lcom/oculus/horizon/events/EventsListFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37
    return-void
.end method

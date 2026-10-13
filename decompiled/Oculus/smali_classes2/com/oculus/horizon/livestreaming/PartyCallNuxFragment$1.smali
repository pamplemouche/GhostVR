.class Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment$1;
.super Ljava/lang/Object;
.source "PartyCallNuxFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment$1;->this$0:Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment$1;->this$0:Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->access$000(Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;)Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->markNUXSeen()V

    .line 87
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment$1;->this$0:Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;

    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment$1;->this$0:Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;

    invoke-static {v1}, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->access$100(Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/livestreaming/PartyCallNuxFragment;->startActivity(Landroid/content/Intent;)V

    .line 88
    return-void
.end method

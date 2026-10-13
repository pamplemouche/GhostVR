.class final Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "GatekeeperSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GatekeeperViewHolder"
.end annotation


# instance fields
.field public final rowView:Lcom/oculus/horizon/widget/CustomSetting;

.field final synthetic this$0:Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;Lcom/oculus/horizon/widget/CustomSetting;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperViewHolder;->this$0:Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;

    .line 279
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 281
    iput-object p2, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperViewHolder;->rowView:Lcom/oculus/horizon/widget/CustomSetting;

    .line 282
    return-void
.end method

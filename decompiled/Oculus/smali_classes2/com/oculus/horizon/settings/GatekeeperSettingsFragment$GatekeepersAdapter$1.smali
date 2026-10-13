.class Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter$1;
.super Ljava/lang/Object;
.source "GatekeeperSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;->onBindViewHolder(Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;

.field final synthetic val$gkRow:Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter$1;->this$1:Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;

    iput-object p2, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter$1;->val$gkRow:Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter$1;->this$1:Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;

    iget-object v1, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter$1;->val$gkRow:Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;

    invoke-static {v0, v1}, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;->access$300(Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;)V

    .line 223
    return-void
.end method

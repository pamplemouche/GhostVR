.class Lcom/oculus/horizon/settings/InternalSettingsFragment$1;
.super Ljava/lang/Object;
.source "InternalSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/InternalSettingsFragment;->setupSettingsItems(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/InternalSettingsFragment;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    const-class v1, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->startFragment(Ljava/lang/Class;)V

    .line 106
    return-void
.end method

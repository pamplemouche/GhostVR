.class Lcom/oculus/horizon/settings/InternalSettingsFragment$14;
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

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/InternalSettingsFragment;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$14;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    iput-object p2, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$14;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 336
    iget-object v0, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$14;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$14;->val$context:Landroid/content/Context;

    const-class v3, Lcom/oculus/horizon/settings/SaveInternalDataActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 337
    return-void
.end method

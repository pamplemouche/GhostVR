.class Lcom/oculus/horizon/settings/InternalSettingsFragment$11;
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
    .line 305
    iput-object p1, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$11;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    iput-object p2, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$11;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 308
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$11;->val$context:Landroid/content/Context;

    const-class v2, Lcom/oculus/horizon/fbconnectui/FBConnectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 309
    iget-object v1, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$11;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 310
    return-void
.end method

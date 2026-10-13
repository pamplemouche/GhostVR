.class Lcom/oculus/horizon/settings/HSWSettingsFragment$2;
.super Ljava/lang/Object;
.source "HSWSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/HSWSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/HSWSettingsFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/HSWSettingsFragment;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/oculus/horizon/settings/HSWSettingsFragment$2;->this$0:Lcom/oculus/horizon/settings/HSWSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/oculus/horizon/settings/HSWSettingsFragment$2;->this$0:Lcom/oculus/horizon/settings/HSWSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/HSWSettingsFragment;->access$300(Lcom/oculus/horizon/settings/HSWSettingsFragment;)V

    .line 110
    return-void
.end method

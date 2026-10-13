.class Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity$1;
.super Ljava/lang/Object;
.source "ConfirmPasswordSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity$1;->this$0:Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity$1;->this$0:Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;

    invoke-virtual {v0}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->onSaveInput()V

    .line 76
    return-void
.end method

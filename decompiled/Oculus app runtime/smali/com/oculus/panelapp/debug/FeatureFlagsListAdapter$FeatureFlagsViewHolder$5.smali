.class Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$5;
.super Ljava/lang/Object;
.source "FeatureFlagsListAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->bindEditText(Lcom/oculus/panelapp/debug/SettingsIPC$Setting;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$5;->this$1:Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 238
    iget-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$5;->this$1:Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;

    invoke-static {p1}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->access$800(Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

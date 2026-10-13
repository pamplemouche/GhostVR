.class Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$3;
.super Ljava/lang/Object;
.source "FeatureFlagsListAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->bindBoolean(Lcom/oculus/panelapp/debug/SettingsIPC$Setting;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;

.field final synthetic val$setting:Lcom/oculus/panelapp/debug/SettingsIPC$Setting;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;Lcom/oculus/panelapp/debug/SettingsIPC$Setting;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$3;->this$1:Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;

    iput-object p2, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$3;->val$setting:Lcom/oculus/panelapp/debug/SettingsIPC$Setting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 165
    iget-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$3;->this$1:Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;

    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->getAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 170
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$3;->val$setting:Lcom/oculus/panelapp/debug/SettingsIPC$Setting;

    if-eqz p2, :cond_1

    const-string p2, "true"

    goto :goto_0

    :cond_1
    const-string p2, "false"

    :goto_0
    invoke-virtual {p1, p2}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->setSetting(Ljava/lang/String;)V

    .line 171
    iget-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$3;->this$1:Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;

    invoke-static {p1}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->access$500(Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$3;->val$setting:Lcom/oculus/panelapp/debug/SettingsIPC$Setting;

    invoke-virtual {p2}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

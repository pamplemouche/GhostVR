.class Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$3;
.super Ljava/lang/Object;
.source "AnytimeUISettingsButtonBarView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$3;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 72
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$3;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->access$000(Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;IZZ)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 77
    sget-object p1, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$5;->$SwitchMap$com$oculus$panelapp$anytimeui$AnytimeUISettingsButtonBarView$SliderMode:[I

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$3;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->access$100(Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;)Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$3;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->access$300(Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->access$202(Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;I)I

    :goto_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .line 85
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$5;->$SwitchMap$com$oculus$panelapp$anytimeui$AnytimeUISettingsButtonBarView$SliderMode:[I

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$3;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;

    invoke-static {v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->access$100(Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;)Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$3;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;

    .line 89
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->access$400(Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;)I

    move-result v0

    .line 88
    invoke-static {p1, v0, v1, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->access$000(Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;IZZ)V

    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$3;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;

    .line 93
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$3;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;

    iget-object v1, v1, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$3;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;

    invoke-static {v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->access$200(Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;)I

    move-result v2

    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$3;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;

    invoke-static {v3}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->access$300(Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;)I

    move-result v3

    .line 92
    invoke-static {v0, v1, v2, v3}, Lcom/oculus/panelapp/anytimeui/AnytimeUIVoiceUtil;->maybePromptForVoiceSetting(Landroid/content/Context;Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;II)V

    .line 94
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$3;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getMainView()Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/TaskBarViewBase;->onViewClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method

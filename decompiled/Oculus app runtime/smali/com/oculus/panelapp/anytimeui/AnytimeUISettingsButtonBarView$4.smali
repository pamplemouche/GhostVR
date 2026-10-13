.class Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$4;
.super Ljava/lang/Object;
.source "AnytimeUISettingsButtonBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V
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

    .line 118
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$4;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 120
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$4;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;

    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;->NONE:Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;

    invoke-static {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;->access$500(Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView;Lcom/oculus/panelapp/anytimeui/AnytimeUISettingsButtonBarView$SliderMode;)V

    return-void
.end method

.class Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$4;
.super Ljava/lang/Object;
.source "AnytimeTabletSettingsViewV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$4;->this$0:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2$4;->this$0:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;

    check-cast p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    invoke-static {v0, p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;->access$500(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSettingsViewV2;Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)V

    return-void
.end method

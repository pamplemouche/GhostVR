.class Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2$2;
.super Ljava/lang/Object;
.source "AnytimeTabletSharingViewV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2$2;->this$0:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 117
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2$2;->this$0:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->access$400(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;)V

    .line 119
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2$2;->this$0:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;

    sget-object v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;->NotCapturing:Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;

    invoke-static {p1, v0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->access$200(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;)V

    return-void
.end method

.class Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2$1;
.super Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$ChangeObserver;
.source "AnytimeTabletSharingViewV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    .line 74
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2$1;->this$0:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;

    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$ChangeObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onLiveStreamStateChanged(Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;)V
    .locals 0

    .line 78
    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2$1;->this$0:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;

    invoke-static {p2}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->access$000(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;)V

    .line 79
    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2$1;->this$0:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;

    invoke-static {p2, p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->access$100(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;)V

    return-void
.end method

.method public onLocalCastStateChanged(Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2$1;->this$0:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;

    invoke-static {v0, p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->access$300(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;)V

    return-void
.end method

.method public onVideoCaptureStateChanged(Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2$1;->this$0:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;

    invoke-static {v0, p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->access$200(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;)V

    return-void
.end method

.method public onVideoCaptureStateChanged(Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2$1;->this$0:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->access$000(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;)V

    .line 86
    sget-object v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;->Allowed:Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;

    if-ne p2, v0, :cond_0

    .line 87
    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2$1;->this$0:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;

    invoke-static {p2, p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->access$200(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;)V

    :cond_0
    return-void
.end method

.class Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$4;
.super Ljava/lang/Object;
.source "AnytimeSharedStateV2.java"

# interfaces
.implements Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$StateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->setLiveStreamState(Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$4;->this$0:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$ChangeObserver;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$4;->this$0:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->access$300(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;)Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$4;->this$0:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;

    invoke-static {v1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->access$400(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;)Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$ChangeObserver;->onLiveStreamStateChanged(Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;)V

    return-void
.end method

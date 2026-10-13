.class Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$5;
.super Ljava/lang/Object;
.source "AnytimeSharedStateV2.java"

# interfaces
.implements Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$StateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->setLocalCastState(Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;)V
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

    .line 134
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$5;->this$0:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$ChangeObserver;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$5;->this$0:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->access$500(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;)Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$ChangeObserver;->onLocalCastStateChanged(Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;)V

    return-void
.end method

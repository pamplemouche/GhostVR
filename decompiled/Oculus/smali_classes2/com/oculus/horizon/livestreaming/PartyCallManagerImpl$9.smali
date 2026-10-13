.class Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$9;
.super Ljava/lang/Object;
.source "PartyCallManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->onReceiveStreamStart(JLandroid/view/Surface;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;II)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$9;->this$0:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    iput p2, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$9;->val$width:I

    iput p3, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$9;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 408
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$9;->this$0:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->access$600(Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;)Lcom/oculus/horizon/livestreaming/PartyVideoStreamSurfaceViewRenderer;

    move-result-object v0

    iget v1, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$9;->val$width:I

    .line 409
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v2, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$9;->val$height:I

    .line 410
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 408
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/livestreaming/PartyVideoStreamSurfaceViewRenderer;->measure(II)V

    .line 411
    return-void
.end method

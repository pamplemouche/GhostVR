.class public Lcom/oculus/browser/OculusUiGestureTarget;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public mLastTimestampMs:J

.field public final mMotionEventSynthesizer:LR01;

.field public final mNativePointer:J


# direct methods
.method public constructor <init>(Landroid/view/View;FFI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LAW0;

    invoke-direct {v0, p1}, LAW0;-><init>(Landroid/view/View;)V

    .line 3
    iput-object v0, p0, Lcom/oculus/browser/OculusUiGestureTarget;->mMotionEventSynthesizer:LR01;

    .line 4
    invoke-static {}, Lcom/oculus/browser/OculusUiGestureTargetJni;->get()Lcom/oculus/browser/OculusUiGestureTarget$Natives;

    move-result-object p1

    invoke-interface {p1, p0, p2, p3, p4}, Lcom/oculus/browser/OculusUiGestureTarget$Natives;->init(Lcom/oculus/browser/OculusUiGestureTarget;FFI)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oculus/browser/OculusUiGestureTarget;->mNativePointer:J

    return-void
.end method

.method private getNativeObject()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/oculus/browser/OculusUiGestureTarget;->mNativePointer:J

    return-wide v0
.end method

.method private inject(IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/OculusUiGestureTarget;->mMotionEventSynthesizer:LR01;

    check-cast v0, LAW0;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2, p3}, LAW0;->a(IIJ)V

    .line 2
    iput-wide p2, p0, Lcom/oculus/browser/OculusUiGestureTarget;->mLastTimestampMs:J

    return-void
.end method

.method private setPointer(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/OculusUiGestureTarget;->mMotionEventSynthesizer:LR01;

    move-object v1, v0

    check-cast v1, LAW0;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v3, p1

    move v4, p2

    invoke-virtual/range {v1 .. v6}, LAW0;->a(IIIII)V

    return-void
.end method

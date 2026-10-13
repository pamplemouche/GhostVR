.class public final Lcom/oculus/vrshell/panels/InputFrame;
.super Ljava/lang/Object;
.source "InputFrame.java"


# instance fields
.field private mBattery:F

.field private mButtons:J

.field private mCursorX:F

.field private mCursorY:F

.field private mFlags:J

.field private mTimeMillis:J

.field private mTouchX:F

.field private mTouchY:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBattery()F
    .locals 1

    .line 73
    iget v0, p0, Lcom/oculus/vrshell/panels/InputFrame;->mBattery:F

    return v0
.end method

.method public getButtons()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/oculus/vrshell/panels/InputFrame;->mButtons:J

    return-wide v0
.end method

.method public getCursorX()F
    .locals 1

    .line 49
    iget v0, p0, Lcom/oculus/vrshell/panels/InputFrame;->mCursorX:F

    return v0
.end method

.method public getCursorY()F
    .locals 1

    .line 53
    iget v0, p0, Lcom/oculus/vrshell/panels/InputFrame;->mCursorY:F

    return v0
.end method

.method public getFlags()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/oculus/vrshell/panels/InputFrame;->mFlags:J

    return-wide v0
.end method

.method public getTimeMillis()J
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/oculus/vrshell/panels/InputFrame;->mTimeMillis:J

    return-wide v0
.end method

.method public getTouchX()F
    .locals 1

    .line 65
    iget v0, p0, Lcom/oculus/vrshell/panels/InputFrame;->mTouchX:F

    return v0
.end method

.method public getTouchY()F
    .locals 1

    .line 69
    iget v0, p0, Lcom/oculus/vrshell/panels/InputFrame;->mTouchY:F

    return v0
.end method

.method public isCursorInside()Z
    .locals 6

    .line 44
    iget-wide v0, p0, Lcom/oculus/vrshell/panels/InputFrame;->mFlags:J

    sget-object v2, Lcom/oculus/vrshell/panels/PanelFlags;->GAZE_VALID:Lcom/oculus/vrshell/panels/PanelFlags;

    invoke-virtual {v2}, Lcom/oculus/vrshell/panels/PanelFlags;->getFlagValue()J

    move-result-wide v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/oculus/vrshell/panels/InputFrame;->mFlags:J

    sget-object v4, Lcom/oculus/vrshell/panels/PanelFlags;->GAZE_INSIDE:Lcom/oculus/vrshell/panels/PanelFlags;

    .line 45
    invoke-virtual {v4}, Lcom/oculus/vrshell/panels/PanelFlags;->getFlagValue()J

    move-result-wide v4

    and-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRemoteConnected()Z
    .locals 5

    .line 40
    iget-wide v0, p0, Lcom/oculus/vrshell/panels/InputFrame;->mFlags:J

    sget-object v2, Lcom/oculus/vrshell/panels/PanelFlags;->REMOTE_CONNECTED:Lcom/oculus/vrshell/panels/PanelFlags;

    invoke-virtual {v2}, Lcom/oculus/vrshell/panels/PanelFlags;->getFlagValue()J

    move-result-wide v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public set(FFJJFFF)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/oculus/vrshell/panels/InputFrame;->mCursorX:F

    .line 19
    iput p2, p0, Lcom/oculus/vrshell/panels/InputFrame;->mCursorY:F

    .line 20
    iput-wide p3, p0, Lcom/oculus/vrshell/panels/InputFrame;->mButtons:J

    .line 21
    iput-wide p5, p0, Lcom/oculus/vrshell/panels/InputFrame;->mFlags:J

    .line 22
    iput p7, p0, Lcom/oculus/vrshell/panels/InputFrame;->mTouchX:F

    .line 23
    iput p8, p0, Lcom/oculus/vrshell/panels/InputFrame;->mTouchY:F

    .line 24
    iput p9, p0, Lcom/oculus/vrshell/panels/InputFrame;->mBattery:F

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oculus/vrshell/panels/InputFrame;->mTimeMillis:J

    return-void
.end method

.method public set(Lcom/oculus/vrshell/panels/InputFrame;)V
    .locals 10

    .line 30
    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/InputFrame;->getCursorX()F

    move-result v1

    .line 31
    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/InputFrame;->getCursorY()F

    move-result v2

    .line 32
    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/InputFrame;->getButtons()J

    move-result-wide v3

    .line 33
    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/InputFrame;->getFlags()J

    move-result-wide v5

    .line 34
    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/InputFrame;->getTouchX()F

    move-result v7

    .line 35
    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/InputFrame;->getTouchY()F

    move-result v8

    .line 36
    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/InputFrame;->getBattery()F

    move-result v9

    move-object v0, p0

    .line 29
    invoke-virtual/range {v0 .. v9}, Lcom/oculus/vrshell/panels/InputFrame;->set(FFJJFFF)V

    return-void
.end method

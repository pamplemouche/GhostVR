.class public Lcom/oculus/vrapi/RemoteTouchHandler;
.super Ljava/lang/Object;
.source "RemoteTouchHandler.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEVICE_BUTTON_TOUCHPAD:I = 0x8

.field private static final DEVICE_BUTTON_TRIGGER:I = 0x1

.field private static final FRAME_LENGTH_MS:J = 0x10L

.field private static final INPUT_SOURCE_HEADSET:I = 0x2002

.field private static final META_STATE_REMOTE:I = 0x65432000

.field private static final MIN_MOVEMENT_REQUIRED_DPAD:F = 0.3f

.field private static final MIN_MOVEMENT_REQUIRED_SQUEEZED_SWIPE:F = 0.3f

.field private static final MIN_MOVEMENT_REQUIRED_SWIPE:F = 0.15f

.field private static final MIN_NORMALIZED_SWIPE_DISTANCE:F = 0.3f

.field private static final MIN_SDK_SWIPE_DISTANCE:F = 101.0f

.field private static final POSITION_SCALE:F = 336.66666f

.field private static final POST_TOUCH_SWIPE_IGNORE_LENGTH_MS:J = 0x1eL

.field private static final SWIPE_SPEED_SCALE:F = 2.0f

.field private static emulateHMT:Z = true


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mDeviceIdentifier:J

.field private mDeviceInfoTouchMaxX:I

.field private mDeviceInfoTouchMaxY:I

.field private mFirstNormalizedTouchX:F

.field private mFirstNormalizedTouchY:F

.field private mInjectedActionUpWhileRawTouchHeld:Z

.field private mInjectedTouchDownTime:J

.field private mInjectedTouchUpTime:J

.field private mInjectedTouchX:F

.field private mInjectedTouchY:F

.field private mLastButtonDown:Z

.field private mLastButtonState:I

.field private mLastInjectedTouchState:Z

.field private mLastNormalizedTouchState:Z

.field private mLastNormalizedTouchX:F

.field private mLastNormalizedTouchY:F

.field private mLastTouchUpdateTime:J

.field private mLastTriggerDown:Z

.field private mScreenSize:Landroid/graphics/Point;

.field private mTouchIsSwipe:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;JII)V
    .locals 4

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RemoteTouchHandler"

    .line 17
    iput-object v0, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 47
    iput-wide v0, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mDeviceIdentifier:J

    const/16 v2, 0x140

    .line 50
    iput v2, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mDeviceInfoTouchMaxX:I

    .line 51
    iput v2, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mDeviceInfoTouchMaxY:I

    const/4 v2, 0x0

    .line 53
    iput v2, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mLastButtonState:I

    .line 60
    iput-boolean v2, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mLastNormalizedTouchState:Z

    const/4 v3, 0x0

    .line 61
    iput v3, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mFirstNormalizedTouchX:F

    .line 62
    iput v3, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mFirstNormalizedTouchY:F

    .line 63
    iput v3, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mLastNormalizedTouchX:F

    .line 64
    iput v3, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mLastNormalizedTouchY:F

    .line 67
    iput-boolean v2, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mLastButtonDown:Z

    .line 68
    iput-boolean v2, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mLastTriggerDown:Z

    .line 69
    iput-boolean v2, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mTouchIsSwipe:Z

    .line 70
    iput-boolean v2, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mInjectedActionUpWhileRawTouchHeld:Z

    .line 71
    iput-boolean v2, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mDestroyed:Z

    .line 74
    iput-wide v0, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mInjectedTouchDownTime:J

    .line 75
    iput-wide v0, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mInjectedTouchUpTime:J

    .line 76
    iput-boolean v2, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mLastInjectedTouchState:Z

    .line 77
    iput v3, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mInjectedTouchX:F

    .line 78
    iput v3, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mInjectedTouchY:F

    .line 81
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mScreenSize:Landroid/graphics/Point;

    .line 93
    iput-object p1, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mContext:Landroid/content/Context;

    .line 94
    iput-wide p2, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mDeviceIdentifier:J

    .line 95
    iput p4, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mDeviceInfoTouchMaxX:I

    .line 96
    iput p5, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mDeviceInfoTouchMaxY:I

    .line 97
    iput v2, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mLastButtonState:I

    return-void
.end method

.method private detectSwipe(FFZZZJ)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p5, :cond_9

    .line 227
    iget-boolean p5, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mLastTriggerDown:Z

    if-eqz p5, :cond_0

    goto/16 :goto_1

    .line 235
    :cond_0
    iget-boolean p5, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mInjectedActionUpWhileRawTouchHeld:Z

    if-eqz p5, :cond_1

    iget-wide v3, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mInjectedTouchUpTime:J

    const-wide/16 v5, 0x1e

    add-long/2addr v3, v5

    cmp-long p5, p6, v3

    if-gez p5, :cond_1

    return v2

    .line 241
    :cond_1
    iget p5, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mFirstNormalizedTouchX:F

    sub-float/2addr p1, p5

    .line 242
    iget p5, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mFirstNormalizedTouchY:F

    sub-float/2addr p2, p5

    mul-float p5, p1, p1

    mul-float p6, p2, p2

    add-float/2addr p5, p6

    float-to-double p5, p5

    .line 244
    invoke-static {p5, p6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p5

    double-to-float p5, p5

    if-eqz p4, :cond_2

    .line 246
    iget-boolean p6, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mLastButtonDown:Z

    if-nez p6, :cond_2

    const/4 p6, 0x1

    goto :goto_0

    :cond_2
    const/4 p6, 0x0

    :goto_0
    const p7, 0x3e99999a    # 0.3f

    if-eqz p6, :cond_3

    cmpg-float p6, p5, p7

    if-gez p6, :cond_3

    .line 250
    iput v1, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mInjectedTouchX:F

    .line 251
    iput v1, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mInjectedTouchY:F

    .line 252
    iput-boolean v2, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mTouchIsSwipe:Z

    return v0

    :cond_3
    if-nez p4, :cond_5

    .line 256
    iget-boolean p4, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mLastButtonDown:Z

    if-nez p4, :cond_5

    const p4, 0x3e19999a    # 0.15f

    cmpl-float p4, p5, p4

    if-ltz p4, :cond_5

    .line 258
    iget-boolean p4, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mTouchIsSwipe:Z

    if-nez p4, :cond_4

    .line 259
    iget-wide v3, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mDeviceIdentifier:J

    invoke-static {v3, v4}, Lcom/oculus/vrapi/RemoteManager;->nativeAddRemoteTouchSwipeStat(J)V

    .line 261
    :cond_4
    iput-boolean v0, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mTouchIsSwipe:Z

    .line 264
    :cond_5
    iget-boolean p4, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mTouchIsSwipe:Z

    if-nez p4, :cond_6

    return v2

    :cond_6
    if-nez p3, :cond_8

    .line 270
    iget-boolean p3, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mLastButtonDown:Z

    if-nez p3, :cond_8

    const p3, 0x3a83126f    # 0.001f

    cmpg-float p3, p5, p3

    if-gez p3, :cond_7

    const/4 p1, 0x0

    const p2, 0x3e99999a    # 0.3f

    const p5, 0x3e99999a    # 0.3f

    :cond_7
    cmpg-float p3, p5, p7

    if-gez p3, :cond_8

    div-float/2addr p7, p5

    mul-float p1, p1, p7

    mul-float p2, p2, p7

    .line 288
    :cond_8
    iput p1, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mInjectedTouchX:F

    .line 289
    iput p2, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mInjectedTouchY:F

    return v0

    .line 229
    :cond_9
    :goto_1
    iput-boolean v2, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mTouchIsSwipe:Z

    .line 230
    iput v1, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mInjectedTouchX:F

    .line 231
    iput v1, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mInjectedTouchY:F

    return v0
.end method

.method private injectMotionEvent(Landroid/app/Activity;ZJ)V
    .locals 9

    .line 297
    iget v0, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mInjectedTouchX:F

    .line 298
    iget v1, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mInjectedTouchY:F

    .line 300
    iget-boolean v2, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mLastInjectedTouchState:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    .line 302
    iput-wide p3, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mInjectedTouchDownTime:J

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    goto :goto_0

    .line 308
    :cond_0
    iget-boolean v2, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mLastInjectedTouchState:Z

    if-eqz v2, :cond_1

    if-nez p2, :cond_1

    .line 310
    iput-wide p3, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mInjectedTouchUpTime:J

    .line 312
    iget-wide v2, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mDeviceIdentifier:J

    invoke-static {v2, v3}, Lcom/oculus/vrapi/RemoteManager;->nativeGetRemoteTouchState(J)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mInjectedActionUpWhileRawTouchHeld:Z

    const/4 v2, 0x1

    move v7, v0

    move v8, v1

    const/4 v6, 0x1

    goto :goto_0

    .line 320
    :cond_1
    iget-wide v2, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mInjectedTouchDownTime:J

    const-wide/16 v6, 0x10

    add-long/2addr v2, v6

    cmp-long v2, p3, v2

    if-gez v2, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x2

    move v7, v0

    move v8, v1

    const/4 v6, 0x2

    :goto_0
    if-nez p2, :cond_3

    .line 327
    iget-boolean v0, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mLastInjectedTouchState:Z

    if-eqz v0, :cond_4

    .line 329
    :cond_3
    iget-wide v2, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mInjectedTouchDownTime:J

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/oculus/vrapi/RemoteTouchHandler;->sendMotionEvent(Landroid/app/Activity;JJIFF)V

    .line 334
    :cond_4
    iput-boolean p2, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mLastInjectedTouchState:Z

    return-void
.end method

.method private onNormalizedTouch(Landroid/content/Context;ZFF)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    .line 151
    instance-of v2, v0, Landroid/app/Activity;

    if-nez v2, :cond_0

    return-void

    .line 156
    :cond_0
    move-object v9, v0

    check-cast v9, Landroid/app/Activity;

    .line 158
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v12, 0x0

    if-nez p2, :cond_1

    .line 163
    iput-boolean v12, v8, Lcom/oculus/vrapi/RemoteTouchHandler;->mInjectedActionUpWhileRawTouchHeld:Z

    .line 164
    iget v0, v8, Lcom/oculus/vrapi/RemoteTouchHandler;->mLastNormalizedTouchX:F

    .line 165
    iget v2, v8, Lcom/oculus/vrapi/RemoteTouchHandler;->mLastNormalizedTouchY:F

    move v13, v0

    move v14, v2

    goto :goto_0

    :cond_1
    move/from16 v13, p3

    move/from16 v14, p4

    .line 168
    :goto_0
    iget-boolean v0, v8, Lcom/oculus/vrapi/RemoteTouchHandler;->mLastNormalizedTouchState:Z

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 170
    iput v13, v8, Lcom/oculus/vrapi/RemoteTouchHandler;->mFirstNormalizedTouchX:F

    .line 171
    iput v14, v8, Lcom/oculus/vrapi/RemoteTouchHandler;->mFirstNormalizedTouchY:F

    .line 172
    iput-boolean v12, v8, Lcom/oculus/vrapi/RemoteTouchHandler;->mTouchIsSwipe:Z

    const/4 v0, 0x0

    .line 173
    iput v0, v8, Lcom/oculus/vrapi/RemoteTouchHandler;->mInjectedTouchX:F

    .line 174
    iput v0, v8, Lcom/oculus/vrapi/RemoteTouchHandler;->mInjectedTouchY:F

    .line 177
    :cond_2
    iget v0, v8, Lcom/oculus/vrapi/RemoteTouchHandler;->mLastButtonState:I

    and-int/lit8 v0, v0, 0x8

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const/4 v15, 0x1

    goto :goto_1

    :cond_3
    const/4 v15, 0x0

    .line 178
    :goto_1
    iget v0, v8, Lcom/oculus/vrapi/RemoteTouchHandler;->mLastButtonState:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    if-nez v15, :cond_5

    .line 180
    iget-boolean v0, v8, Lcom/oculus/vrapi/RemoteTouchHandler;->mLastButtonDown:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-nez v6, :cond_6

    .line 181
    iget-boolean v3, v8, Lcom/oculus/vrapi/RemoteTouchHandler;->mLastTriggerDown:Z

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    if-nez v0, :cond_a

    if-eqz v3, :cond_7

    goto :goto_6

    :cond_7
    if-nez v15, :cond_9

    if-eqz v6, :cond_8

    goto :goto_5

    :cond_8
    move/from16 v7, p2

    goto :goto_7

    :cond_9
    :goto_5
    const/4 v7, 0x1

    goto :goto_7

    :cond_a
    :goto_6
    const/4 v7, 0x0

    .line 194
    :goto_7
    iput-boolean v7, v8, Lcom/oculus/vrapi/RemoteTouchHandler;->mLastNormalizedTouchState:Z

    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move v3, v7

    move v4, v15

    move v5, v6

    move v12, v6

    move/from16 v16, v7

    move-wide v6, v10

    .line 197
    invoke-direct/range {v0 .. v7}, Lcom/oculus/vrapi/RemoteTouchHandler;->updateTouchpadInput(FFZZZJ)Z

    if-nez v15, :cond_b

    if-nez v12, :cond_b

    .line 200
    iget-boolean v0, v8, Lcom/oculus/vrapi/RemoteTouchHandler;->mTouchIsSwipe:Z

    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_8

    :cond_b
    move/from16 v0, v16

    .line 205
    :goto_8
    invoke-direct {v8, v9, v0, v10, v11}, Lcom/oculus/vrapi/RemoteTouchHandler;->injectMotionEvent(Landroid/app/Activity;ZJ)V

    .line 208
    iput-boolean v15, v8, Lcom/oculus/vrapi/RemoteTouchHandler;->mLastButtonDown:Z

    .line 209
    iput-boolean v12, v8, Lcom/oculus/vrapi/RemoteTouchHandler;->mLastTriggerDown:Z

    .line 212
    iput v13, v8, Lcom/oculus/vrapi/RemoteTouchHandler;->mLastNormalizedTouchX:F

    .line 213
    iput v14, v8, Lcom/oculus/vrapi/RemoteTouchHandler;->mLastNormalizedTouchY:F

    .line 214
    iput-wide v10, v8, Lcom/oculus/vrapi/RemoteTouchHandler;->mLastTouchUpdateTime:J

    return-void
.end method

.method private sendMotionEvent(Landroid/app/Activity;JJIFF)V
    .locals 13

    move-object v0, p0

    .line 339
    sget-boolean v2, Lcom/oculus/vrapi/RemoteTouchHandler;->emulateHMT:Z

    if-nez v2, :cond_0

    return-void

    .line 344
    :cond_0
    iget-object v2, v0, Lcom/oculus/vrapi/RemoteTouchHandler;->mScreenSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/oculus/vrapi/RemoteTouchHandler;->mScreenSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-nez v2, :cond_1

    const-string v2, "window"

    move-object v3, p1

    .line 346
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 347
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 348
    iget-object v4, v0, Lcom/oculus/vrapi/RemoteTouchHandler;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {v2, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_0

    :cond_1
    move-object v3, p1

    :goto_0
    const v2, 0x43a85555

    const/4 v4, 0x2

    move/from16 v9, p6

    if-eq v9, v4, :cond_5

    .line 357
    invoke-static/range {p7 .. p7}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float v5, v5, v2

    iget-object v6, v0, Lcom/oculus/vrapi/RemoteTouchHandler;->mScreenSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    div-int/2addr v6, v4

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    const v6, 0x44285555

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v10, 0x0

    if-lez v5, :cond_3

    cmpl-float v5, p7, v10

    if-lez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, -0x1

    .line 359
    :goto_1
    iget-object v11, v0, Lcom/oculus/vrapi/RemoteTouchHandler;->mScreenSize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    mul-int v5, v5, v11

    int-to-float v5, v5

    div-float/2addr v5, v6

    div-float v1, v5, p7

    mul-float v1, v1, p8

    move v11, v1

    move v1, v5

    goto :goto_2

    :cond_3
    move/from16 v1, p7

    move/from16 v11, p8

    .line 363
    :goto_2
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float v5, v5, v2

    iget-object v12, v0, Lcom/oculus/vrapi/RemoteTouchHandler;->mScreenSize:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    div-int/2addr v12, v4

    int-to-float v12, v12

    cmpl-float v5, v5, v12

    if-lez v5, :cond_6

    cmpl-float v5, v11, v10

    if-lez v5, :cond_4

    const/4 v7, 0x1

    .line 365
    :cond_4
    iget-object v5, v0, Lcom/oculus/vrapi/RemoteTouchHandler;->mScreenSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    mul-int v7, v7, v5

    int-to-float v5, v7

    div-float/2addr v5, v6

    div-float v6, v5, v11

    mul-float v1, v1, v6

    move v11, v5

    goto :goto_3

    :cond_5
    move/from16 v1, p7

    move/from16 v11, p8

    .line 371
    :cond_6
    :goto_3
    iget-object v5, v0, Lcom/oculus/vrapi/RemoteTouchHandler;->mScreenSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    div-int/2addr v5, v4

    int-to-float v5, v5

    mul-float v1, v1, v2

    add-float v10, v5, v1

    .line 372
    iget-object v1, v0, Lcom/oculus/vrapi/RemoteTouchHandler;->mScreenSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    div-int/2addr v1, v4

    int-to-float v1, v1

    mul-float v11, v11, v2

    add-float/2addr v11, v1

    const v12, 0x65432000

    move-wide v5, p2

    move-wide/from16 v7, p4

    move/from16 v9, p6

    .line 376
    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    const/16 v2, 0x2002

    .line 380
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 382
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->injectInputEvent(Landroid/view/InputEvent;)V

    return-void
.end method

.method public static setRemoteEmulation(Z)V
    .locals 0

    .line 388
    sput-boolean p0, Lcom/oculus/vrapi/RemoteTouchHandler;->emulateHMT:Z

    return-void
.end method

.method private updateTouchpadInput(FFZZZJ)Z
    .locals 0

    .line 220
    invoke-direct/range {p0 .. p7}, Lcom/oculus/vrapi/RemoteTouchHandler;->detectSwipe(FFZZZJ)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 102
    iput-wide v0, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mDeviceIdentifier:J

    const/16 v0, 0x140

    .line 103
    iput v0, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mDeviceInfoTouchMaxX:I

    .line 104
    iput v0, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mDeviceInfoTouchMaxY:I

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mDestroyed:Z

    return-void
.end method

.method public onButtonDownEvent(I)V
    .locals 4

    .line 110
    iget v0, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mLastButtonState:I

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 116
    iget v1, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mLastButtonState:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    and-int/lit8 v3, p1, 0x1

    if-eq v1, v3, :cond_1

    sget-boolean v1, Lcom/oculus/vrapi/RemoteTouchHandler;->emulateHMT:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 120
    :cond_1
    iget v1, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mLastButtonState:I

    and-int/lit8 v1, v1, 0x8

    and-int/lit8 v3, p1, 0x8

    if-eq v1, v3, :cond_2

    sget-boolean v1, Lcom/oculus/vrapi/RemoteTouchHandler;->emulateHMT:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 125
    :cond_2
    iput p1, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mLastButtonState:I

    if-eqz v0, :cond_3

    .line 129
    iget-object p1, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mLastNormalizedTouchState:Z

    iget v1, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mLastNormalizedTouchX:F

    iget v2, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mLastNormalizedTouchY:F

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/oculus/vrapi/RemoteTouchHandler;->onNormalizedTouch(Landroid/content/Context;ZFF)V

    :cond_3
    return-void
.end method

.method public onTouch(III)V
    .locals 3

    .line 135
    iget-boolean v0, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mDestroyed:Z

    if-eqz v0, :cond_0

    const-string p1, "RemoteTouchHandler"

    const-string p2, "onTouch(): touch handler has been destroyed"

    .line 137
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 143
    :goto_0
    sget-boolean v0, Lcom/oculus/vrapi/RemoteTouchHandler;->emulateHMT:Z

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mContext:Landroid/content/Context;

    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float p2, p2

    iget v2, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mDeviceInfoTouchMaxX:I

    int-to-float v2, v2

    div-float/2addr p2, v2

    sub-float/2addr v1, p2

    int-to-float p2, p3

    iget p3, p0, Lcom/oculus/vrapi/RemoteTouchHandler;->mDeviceInfoTouchMaxY:I

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/oculus/vrapi/RemoteTouchHandler;->onNormalizedTouch(Landroid/content/Context;ZFF)V

    :cond_2
    return-void
.end method

.class public Lcom/oculus/vrapi/RemoteButtonHandler;
.super Ljava/lang/Object;
.source "RemoteButtonHandler.java"


# static fields
.field private static final CONTROLLER_MODEL_ID_LCON_END:I = 0x1387

.field private static final CONTROLLER_MODEL_ID_LCON_PROTO1:I = 0xfa0

.field private static final CONTROLLER_MODEL_ID_LCON_START:I = 0xfa0

.field private static final DEBUG:Z = false

.field private static final DEVICE_BUTTON_BACK:I = 0x4

.field private static final DEVICE_BUTTON_HOME:I = 0x2

.field private static final DEVICE_BUTTON_VOLUME_DOWN:I = 0x20

.field private static final DEVICE_BUTTON_VOLUME_UP:I = 0x10

.field public static final INPUT_SOURCE_REMOTE:I = 0x65432102

.field private static final META_STATE_INJECTED_BACK_UP_EVENT:I = 0x65432050

.field private static final MINIMUM_BACK_INTERVAL_MS:J = 0x12cL

.field private static final TAG:Ljava/lang/String; = "RemoteButtonHandler"

.field private static final VOLUME_HOLD_REPEAT_FREQUENCY_MS:J = 0x249L


# instance fields
.field private backLastDownTime:J

.field private lastButtonState:I

.field private mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mDeviceIdentifier:J

.field private mModelId:I

.field private mTouchHandler:Lcom/oculus/vrapi/RemoteTouchHandler;

.field private volumeLastDownTime:J


# direct methods
.method protected constructor <init>(Landroid/content/Context;JLcom/oculus/vrapi/RemoteTouchHandler;I)V
    .locals 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->mDestroyed:Z

    const-wide/16 v1, 0x0

    .line 38
    iput-wide v1, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->mDeviceIdentifier:J

    .line 41
    iput v0, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->mModelId:I

    .line 59
    iput v0, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->lastButtonState:I

    .line 72
    iput-object p1, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->mContext:Landroid/content/Context;

    .line 74
    iput v0, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->lastButtonState:I

    .line 75
    iput-wide p2, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->mDeviceIdentifier:J

    .line 77
    iput-object p4, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->mTouchHandler:Lcom/oculus/vrapi/RemoteTouchHandler;

    .line 78
    iput p5, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->mModelId:I

    return-void
.end method

.method private forwardButtonEventToInputHooks(Landroid/view/KeyEvent;)V
    .locals 5

    .line 284
    invoke-static {p1}, Lcom/oculus/vrapi/RemoteButtonHandler;->getHardwareIdFromKeyEvent(Landroid/view/KeyEvent;)J

    move-result-wide v0

    .line 285
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v2

    const v3, 0x65432102

    if-ne v2, v3, :cond_5

    .line 286
    invoke-static {}, Lcom/oculus/vrapi/InputHooks;->IsEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 291
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 294
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    .line 296
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lcom/oculus/vrapi/InputHooks;->nativeSetHomeButtonDown(JII)V

    goto :goto_0

    .line 300
    :cond_2
    invoke-static {v0, v1, v2}, Lcom/oculus/vrapi/InputHooks;->nativeSetHomeButtonUp(JI)V

    goto :goto_0

    .line 304
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    .line 306
    invoke-static {v0, v1, v2}, Lcom/oculus/vrapi/InputHooks;->nativeSetBackButtonDown(JI)V

    goto :goto_0

    .line 310
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lcom/oculus/vrapi/InputHooks;->nativeSetBackButtonUp(JII)Z

    :goto_0
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method private static getHardwareIdFromKeyEvent(Landroid/view/KeyEvent;)J
    .locals 6

    .line 110
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    .line 112
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p0

    int-to-long v4, p0

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static injectBackButtonUpEvent(Landroid/content/Context;IIJ)V
    .locals 16

    move-object/from16 v0, p0

    .line 320
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const-string v0, "RemoteButtonHandler"

    const-string v1, "injectBackButtonUpEvent failed due to not being instance of Activity"

    .line 322
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide/16 v1, -0x1

    and-long v1, p3, v1

    long-to-int v12, v1

    .line 327
    new-instance v1, Landroid/view/KeyEvent;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    const v11, 0x65432050

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v3, v1

    move/from16 v9, p1

    move/from16 v15, p2

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 331
    :try_start_0
    check-cast v0, Landroid/app/Activity;

    .line 332
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->injectInputEvent(Landroid/view/InputEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RemoteButtonHandler"

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "injectBackButtonUpEvent exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static newKeyEvent(IIJ)Landroid/view/KeyEvent;
    .locals 17

    const/16 v2, 0x20

    shr-long v2, p2, v2

    long-to-int v12, v2

    const-wide/16 v2, -0x1

    and-long v0, p2, v2

    long-to-int v13, v0

    .line 104
    new-instance v0, Landroid/view/KeyEvent;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const v16, 0x65432102

    move-object v4, v0

    move/from16 v9, p0

    move/from16 v10, p1

    invoke-direct/range {v4 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    return-object v0
.end method

.method private ovrControllerModelIDIsLCON(I)Z
    .locals 1

    const/16 v0, 0xfa0

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1387

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private sendButtonEvent(Landroid/content/Context;Landroid/view/KeyEvent;)V
    .locals 2

    .line 255
    :try_start_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 257
    check-cast p1, Landroid/app/Activity;

    .line 258
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Window;->injectInputEvent(Landroid/view/InputEvent;)V

    goto :goto_0

    .line 260
    :cond_0
    instance-of v0, p1, Lcom/oculus/os/DialogContext;

    if-eqz v0, :cond_1

    .line 262
    check-cast p1, Lcom/oculus/os/DialogContext;

    .line 263
    invoke-virtual {p1}, Lcom/oculus/os/DialogContext;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Window;->injectInputEvent(Landroid/view/InputEvent;)V

    goto :goto_0

    .line 272
    :cond_1
    invoke-direct {p0, p2}, Lcom/oculus/vrapi/RemoteButtonHandler;->forwardButtonEventToInputHooks(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "RemoteButtonHandler"

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteButtonHandler sendButtonEvent exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateRepeatingVolume(I)V
    .locals 7

    .line 232
    iget v0, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->lastButtonState:I

    and-int/2addr p1, v0

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/16 v1, 0x20

    if-ne p1, v1, :cond_2

    .line 236
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 238
    iget-wide v3, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->volumeLastDownTime:J

    const-wide/16 v5, 0x249

    add-long/2addr v3, v5

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    .line 240
    iput-wide v1, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->volumeLastDownTime:J

    if-ne p1, v0, :cond_1

    const/16 p1, 0x18

    goto :goto_0

    :cond_1
    const/16 p1, 0x19

    .line 245
    :goto_0
    iget-object v0, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {p0, v0, v1}, Lcom/oculus/vrapi/RemoteButtonHandler;->sendButtonEvent(Landroid/content/Context;Landroid/view/KeyEvent;)V

    .line 246
    iget-object v0, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {p0, v0, v1}, Lcom/oculus/vrapi/RemoteButtonHandler;->sendButtonEvent(Landroid/content/Context;Landroid/view/KeyEvent;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 83
    iget-boolean v0, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->mDestroyed:Z

    if-eqz v0, :cond_0

    const-string v0, "RemoteButtonHandler"

    const-string v1, "destroy(): button handler has already been destroyed"

    .line 85
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->mTouchHandler:Lcom/oculus/vrapi/RemoteTouchHandler;

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, v0}, Lcom/oculus/vrapi/RemoteButtonHandler;->onButtonDownEvent(I)V

    const-wide/16 v1, 0x0

    .line 93
    iput-wide v1, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->mDeviceIdentifier:J

    .line 94
    iput-boolean v0, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->mDestroyed:Z

    return-void
.end method

.method public onButtonDownEvent(I)V
    .locals 10

    .line 118
    iget-boolean v0, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->mDestroyed:Z

    if-eqz v0, :cond_0

    const-string p1, "RemoteButtonHandler"

    const-string v0, "onButtonDownEvent(): button handler has been destroyed"

    .line 120
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 124
    :cond_0
    iget v0, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->lastButtonState:I

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    return-void

    .line 129
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 131
    iget v2, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->mModelId:I

    invoke-direct {p0, v2}, Lcom/oculus/vrapi/RemoteButtonHandler;->ovrControllerModelIDIsLCON(I)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-eqz v2, :cond_2

    .line 136
    iget v2, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->lastButtonState:I

    and-int/2addr v2, v5

    and-int/lit8 v5, p1, 0x4

    goto :goto_0

    .line 152
    :cond_2
    iget-wide v6, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->backLastDownTime:J

    const-wide/16 v8, 0x12c

    add-long/2addr v6, v8

    cmp-long v2, v0, v6

    if-gtz v2, :cond_3

    .line 156
    iget v2, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->lastButtonState:I

    and-int/2addr v2, v5

    if-nez v2, :cond_3

    and-int/lit8 p1, p1, -0x5

    .line 163
    :cond_3
    iget v2, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->lastButtonState:I

    and-int/2addr v2, v5

    and-int/lit8 v6, p1, 0x4

    if-eq v2, v6, :cond_5

    const/16 v2, 0x6f

    if-eqz v6, :cond_4

    .line 167
    iput-wide v0, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->backLastDownTime:J

    .line 168
    iget-object v6, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->mContext:Landroid/content/Context;

    iget-wide v7, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->mDeviceIdentifier:J

    invoke-static {v4, v5, v7, v8}, Lcom/oculus/vrapi/RemoteButtonHandler;->newKeyEvent(IIJ)Landroid/view/KeyEvent;

    move-result-object v5

    invoke-direct {p0, v6, v5}, Lcom/oculus/vrapi/RemoteButtonHandler;->sendButtonEvent(Landroid/content/Context;Landroid/view/KeyEvent;)V

    .line 170
    iget-object v5, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->mContext:Landroid/content/Context;

    iget-wide v6, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->mDeviceIdentifier:J

    invoke-static {v4, v2, v6, v7}, Lcom/oculus/vrapi/RemoteButtonHandler;->newKeyEvent(IIJ)Landroid/view/KeyEvent;

    move-result-object v2

    invoke-direct {p0, v5, v2}, Lcom/oculus/vrapi/RemoteButtonHandler;->sendButtonEvent(Landroid/content/Context;Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 174
    :cond_4
    iget-object v6, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->mContext:Landroid/content/Context;

    iget-wide v7, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->mDeviceIdentifier:J

    invoke-static {v3, v5, v7, v8}, Lcom/oculus/vrapi/RemoteButtonHandler;->newKeyEvent(IIJ)Landroid/view/KeyEvent;

    move-result-object v5

    invoke-direct {p0, v6, v5}, Lcom/oculus/vrapi/RemoteButtonHandler;->sendButtonEvent(Landroid/content/Context;Landroid/view/KeyEvent;)V

    .line 176
    iget-object v5, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->mContext:Landroid/content/Context;

    iget-wide v6, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->mDeviceIdentifier:J

    invoke-static {v3, v2, v6, v7}, Lcom/oculus/vrapi/RemoteButtonHandler;->newKeyEvent(IIJ)Landroid/view/KeyEvent;

    move-result-object v2

    invoke-direct {p0, v5, v2}, Lcom/oculus/vrapi/RemoteButtonHandler;->sendButtonEvent(Landroid/content/Context;Landroid/view/KeyEvent;)V

    .line 181
    :cond_5
    :goto_0
    iget v2, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->lastButtonState:I

    and-int/lit8 v2, v2, 0x2

    and-int/lit8 v5, p1, 0x2

    if-eq v2, v5, :cond_7

    const/16 v2, 0x7d

    if-eqz v5, :cond_6

    .line 185
    iget-object v5, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->mContext:Landroid/content/Context;

    iget-wide v6, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->mDeviceIdentifier:J

    invoke-static {v4, v2, v6, v7}, Lcom/oculus/vrapi/RemoteButtonHandler;->newKeyEvent(IIJ)Landroid/view/KeyEvent;

    move-result-object v2

    invoke-direct {p0, v5, v2}, Lcom/oculus/vrapi/RemoteButtonHandler;->sendButtonEvent(Landroid/content/Context;Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 189
    :cond_6
    iget-object v5, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->mContext:Landroid/content/Context;

    iget-wide v6, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->mDeviceIdentifier:J

    invoke-static {v3, v2, v6, v7}, Lcom/oculus/vrapi/RemoteButtonHandler;->newKeyEvent(IIJ)Landroid/view/KeyEvent;

    move-result-object v2

    invoke-direct {p0, v5, v2}, Lcom/oculus/vrapi/RemoteButtonHandler;->sendButtonEvent(Landroid/content/Context;Landroid/view/KeyEvent;)V

    .line 193
    :cond_7
    :goto_1
    iget v2, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->lastButtonState:I

    and-int/lit8 v2, v2, 0x20

    and-int/lit8 v5, p1, 0x20

    if-eq v2, v5, :cond_9

    const/16 v2, 0x19

    if-eqz v5, :cond_8

    .line 197
    iput-wide v0, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->volumeLastDownTime:J

    .line 198
    iget-object v5, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->mContext:Landroid/content/Context;

    iget-wide v6, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->mDeviceIdentifier:J

    invoke-static {v4, v2, v6, v7}, Lcom/oculus/vrapi/RemoteButtonHandler;->newKeyEvent(IIJ)Landroid/view/KeyEvent;

    move-result-object v2

    invoke-direct {p0, v5, v2}, Lcom/oculus/vrapi/RemoteButtonHandler;->sendButtonEvent(Landroid/content/Context;Landroid/view/KeyEvent;)V

    goto :goto_2

    .line 202
    :cond_8
    iget-object v5, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->mContext:Landroid/content/Context;

    iget-wide v6, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->mDeviceIdentifier:J

    invoke-static {v3, v2, v6, v7}, Lcom/oculus/vrapi/RemoteButtonHandler;->newKeyEvent(IIJ)Landroid/view/KeyEvent;

    move-result-object v2

    invoke-direct {p0, v5, v2}, Lcom/oculus/vrapi/RemoteButtonHandler;->sendButtonEvent(Landroid/content/Context;Landroid/view/KeyEvent;)V

    .line 205
    :cond_9
    :goto_2
    iget v2, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->lastButtonState:I

    and-int/lit8 v2, v2, 0x10

    and-int/lit8 v5, p1, 0x10

    if-eq v2, v5, :cond_b

    const/16 v2, 0x18

    if-eqz v5, :cond_a

    .line 209
    iput-wide v0, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->volumeLastDownTime:J

    .line 210
    iget-object v0, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->mContext:Landroid/content/Context;

    iget-wide v5, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->mDeviceIdentifier:J

    invoke-static {v4, v2, v5, v6}, Lcom/oculus/vrapi/RemoteButtonHandler;->newKeyEvent(IIJ)Landroid/view/KeyEvent;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oculus/vrapi/RemoteButtonHandler;->sendButtonEvent(Landroid/content/Context;Landroid/view/KeyEvent;)V

    goto :goto_3

    .line 214
    :cond_a
    iget-object v0, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->mDeviceIdentifier:J

    invoke-static {v3, v2, v4, v5}, Lcom/oculus/vrapi/RemoteButtonHandler;->newKeyEvent(IIJ)Landroid/view/KeyEvent;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oculus/vrapi/RemoteButtonHandler;->sendButtonEvent(Landroid/content/Context;Landroid/view/KeyEvent;)V

    .line 219
    :cond_b
    :goto_3
    invoke-direct {p0, p1}, Lcom/oculus/vrapi/RemoteButtonHandler;->updateRepeatingVolume(I)V

    .line 221
    iput p1, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->lastButtonState:I

    .line 223
    iget-object v0, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->mTouchHandler:Lcom/oculus/vrapi/RemoteTouchHandler;

    if-eqz v0, :cond_c

    .line 225
    iget-object v0, p0, Lcom/oculus/vrapi/RemoteButtonHandler;->mTouchHandler:Lcom/oculus/vrapi/RemoteTouchHandler;

    invoke-virtual {v0, p1}, Lcom/oculus/vrapi/RemoteTouchHandler;->onButtonDownEvent(I)V

    :cond_c
    return-void
.end method

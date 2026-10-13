.class Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationSurfaceBroadcastReceiver.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# static fields
.field private static BACK_INPUT_BLOCK:Ljava/lang/String; = "back_input_blocking"

.field private static final BLOCK_INPUT_FOR_OVERLAY_ACTION:Ljava/lang/String; = "com.oculus.vrdriver.block_input_for_overlay"

.field private static BUTTON_INPUT_BLOCKING_TYPE:Ljava/lang/String; = "button_input_blocking"

.field private static final DEFAULT_LAYER_FLAGS:I = 0x2

.field private static final DELETE_NOTIFICATION_ACTION:Ljava/lang/String; = "com.oculus.vrdriver.teardown_notification"

.field private static final DISTANCE:Ljava/lang/String; = "distance"

.field private static final DURATION_MILLISECONDS:Ljava/lang/String; = "duration_ms"

.field private static INPUT_BLOCKING_TYPE_KEY:Ljava/lang/String; = "input_blocking_type"

.field private static final LAYER_FLAGS:Ljava/lang/String; = "layer_flags"

.field private static final LEFT_MATRIX:Ljava/lang/String; = "left_matrix"

.field private static final LEFT_RECT:Ljava/lang/String; = "left_rect"

.field private static final NEW_NOTIFICATION_ACTION:Ljava/lang/String; = "com.oculus.vrdriver.new_notification_to_show"

.field private static NO_INPUT_BLOCKING_TYPE:Ljava/lang/String; = "no_input_blocking"

.field private static final PITCH:Ljava/lang/String; = "pitch"

.field private static final POSITION:Ljava/lang/String; = "position"

.field private static final POSITION_USER_YAW:Ljava/lang/String; = "user_yaw"

.field private static final RIGHT_MATRIX:Ljava/lang/String; = "right_matrix"

.field private static final RIGHT_RECT:Ljava/lang/String; = "right_rect"

.field private static final SUGGESTED_HEIGHT_PIXELS:Ljava/lang/String; = "height"

.field private static final SUGGESTED_WIDTH_PIXELS:Ljava/lang/String; = "width"

.field private static final YAW:Ljava/lang/String; = "yaw"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCachedContext:Landroid/content/Context;

.field mSurfaceTextureNotifierPointer:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 1

    .line 111
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "NotificationSurfaceBroadcastReceiver"

    .line 33
    iput-object v0, p0, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver;->TAG:Ljava/lang/String;

    .line 112
    iput-object p1, p0, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver;->mCachedContext:Landroid/content/Context;

    .line 113
    iput-wide p2, p0, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver;->mSurfaceTextureNotifierPointer:J

    const-string p1, "NotificationSurfaceBroadcastReceiver"

    const-string p2, "Registering com.oculus.vrdriver.new_notification_to_show"

    .line 115
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "NotificationSurfaceBroadcastReceiver"

    const-string p2, "Registering com.oculus.vrdriver.teardown_notification"

    .line 116
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "NotificationSurfaceBroadcastReceiver"

    const-string p2, "Registering com.oculus.vrdriver.block_input_for_overlay"

    .line 117
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "com.oculus.vrdriver.new_notification_to_show"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p2, "com.oculus.vrdriver.teardown_notification"

    .line 120
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "com.oculus.vrdriver.block_input_for_overlay"

    .line 121
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object p2, p0, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver;->mCachedContext:Landroid/content/Context;

    const-string p3, "oculus.render_notification"

    const/4 v0, 0x0

    invoke-virtual {p2, p0, p1, p3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver;->mCachedContext:Landroid/content/Context;

    return-object p0
.end method

.method private native nativeClearSurfaceTextureStatus(J)V
.end method

.method private native nativeFlagValidSurface(J)V
.end method

.method private native nativeHandleBroadcast(JLandroid/os/Bundle;[F[F[F[FIIII)V
.end method

.method private native nativeHandleBroadcastViewCentered(JLandroid/os/Bundle;IIDII)V
.end method

.method private native nativeSetInputRoutingTypeForOverlay(JI)V
.end method


# virtual methods
.method public Destroy()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver;->mCachedContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 107
    iget-wide v0, p0, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver;->mSurfaceTextureNotifierPointer:J

    invoke-direct {p0, v0, v1}, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver;->nativeFlagValidSurface(J)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 42

    move-object/from16 v12, p0

    move-object/from16 v0, p2

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotificationSurfaceBroadcastReceiver"

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " broadcast"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.oculus.vrdriver.new_notification_to_show"

    .line 201
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x2

    if-eqz v2, :cond_5

    const-string v1, "width"

    const/4 v2, -0x1

    .line 208
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v1, "height"

    .line 209
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v1, "layer_flags"

    .line 211
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string v1, "duration_ms"

    .line 212
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const-string v1, "user_yaw"

    const-string v2, "position"

    .line 215
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz v1, :cond_0

    const-string v1, "distance"

    .line 216
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "width"

    .line 217
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "height"

    .line 218
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    iget-wide v3, v12, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver;->mSurfaceTextureNotifierPointer:J

    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v1, "distance"

    .line 225
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    float-to-double v6, v0

    move-object/from16 v0, p0

    move-wide v1, v3

    move-object v3, v5

    move v4, v8

    move v5, v9

    move v8, v10

    move v9, v11

    .line 220
    invoke-direct/range {v0 .. v9}, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver;->nativeHandleBroadcastViewCentered(JLandroid/os/Bundle;IIDII)V

    return-void

    :cond_0
    const-string v1, "left_rect"

    .line 230
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/16 v6, 0x10

    const/4 v7, 0x4

    if-eqz v1, :cond_3

    const-string v1, "right_rect"

    .line 231
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "left_matrix"

    .line 232
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "right_matrix"

    .line 233
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "width"

    .line 234
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "height"

    .line 235
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "left_rect"

    .line 237
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getFloatArrayExtra(Ljava/lang/String;)[F

    move-result-object v1

    const-string v2, "right_rect"

    .line 238
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getFloatArrayExtra(Ljava/lang/String;)[F

    move-result-object v2

    const-string v3, "left_matrix"

    .line 239
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getFloatArrayExtra(Ljava/lang/String;)[F

    move-result-object v3

    const-string v4, "right_matrix"

    .line 240
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getFloatArrayExtra(Ljava/lang/String;)[F

    move-result-object v4

    if-eqz v1, :cond_2

    .line 242
    array-length v5, v1

    if-ne v5, v7, :cond_2

    if-eqz v2, :cond_2

    array-length v5, v2

    if-ne v5, v7, :cond_2

    if-eqz v3, :cond_2

    array-length v5, v3

    if-ne v5, v6, :cond_2

    if-eqz v4, :cond_2

    array-length v5, v4

    if-eq v5, v6, :cond_1

    goto :goto_0

    :cond_1
    move-object v5, v2

    move-object v6, v3

    move-object v7, v4

    move/from16 v19, v8

    move/from16 v20, v10

    move/from16 v21, v11

    move-object v4, v1

    goto/16 :goto_1

    :cond_2
    :goto_0
    const-string v0, "NotificationSurfaceBroadcastReceiver"

    const-string v1, "Invalid Rect or Matrix parameters. Ignoring broadcast"

    .line 247
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string v1, "pitch"

    .line 251
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "yaw"

    .line 252
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "distance"

    .line 253
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "width"

    .line 254
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "height"

    .line 255
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "NotificationSurfaceBroadcastReceiver"

    const-string v13, "Using backwards compatibility mode."

    .line 257
    invoke-static {v1, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "pitch"

    .line 259
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    float-to-double v13, v1

    const-string v1, "yaw"

    .line 260
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    float-to-double v3, v1

    const-string v1, "distance"

    .line 261
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    float-to-double v1, v1

    .line 263
    new-array v15, v7, [F

    fill-array-data v15, :array_0

    .line 265
    new-array v6, v6, [F

    .line 268
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    .line 269
    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    move-object/from16 v16, v6

    int-to-double v5, v8

    const-wide/high16 v17, 0x4080000000000000L    # 512.0

    div-double v5, v5, v17

    move/from16 v19, v8

    int-to-double v7, v9

    div-double v7, v7, v17

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    move/from16 v20, v10

    move/from16 v21, v11

    .line 274
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    .line 275
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    move-wide/from16 v22, v7

    .line 276
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    .line 277
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double v24, v13, v7

    neg-double v10, v10

    mul-double v13, v13, v3

    const-wide/16 v26, 0x0

    neg-double v7, v7

    mul-double v28, v10, v7

    mul-double v30, v13, v26

    sub-double v28, v28, v30

    mul-double v30, v13, v3

    mul-double v32, v24, v7

    sub-double v30, v30, v32

    mul-double v32, v24, v26

    mul-double v34, v10, v3

    sub-double v32, v32, v34

    neg-double v1, v1

    move-wide/from16 v36, v7

    mul-double v7, v1, v24

    move-wide/from16 v38, v7

    mul-double v7, v1, v10

    mul-double v1, v1, v13

    mul-double v3, v3, v5

    double-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v16, v4

    mul-double v3, v28, v22

    double-to-float v3, v3

    const/4 v4, 0x1

    aput v3, v16, v4

    mul-double v3, v24, v17

    double-to-float v3, v3

    const/4 v4, 0x2

    aput v3, v16, v4

    const/4 v3, 0x3

    move-wide/from16 v40, v1

    move-wide/from16 v0, v38

    double-to-float v0, v0

    aput v0, v16, v3

    mul-double v0, v5, v26

    double-to-float v0, v0

    const/4 v1, 0x4

    aput v0, v16, v1

    const/4 v0, 0x5

    mul-double v1, v30, v22

    double-to-float v1, v1

    aput v1, v16, v0

    const/4 v0, 0x6

    mul-double v10, v10, v17

    double-to-float v1, v10

    aput v1, v16, v0

    const/4 v0, 0x7

    double-to-float v1, v7

    aput v1, v16, v0

    const/16 v0, 0x8

    mul-double v7, v36, v5

    double-to-float v1, v7

    aput v1, v16, v0

    const/16 v0, 0x9

    mul-double v1, v32, v22

    double-to-float v1, v1

    aput v1, v16, v0

    const/16 v0, 0xa

    mul-double v13, v13, v17

    double-to-float v1, v13

    aput v1, v16, v0

    const/16 v0, 0xb

    move-wide/from16 v1, v40

    double-to-float v1, v1

    aput v1, v16, v0

    const/16 v0, 0xc

    const/4 v1, 0x0

    aput v1, v16, v0

    const/16 v0, 0xd

    aput v1, v16, v0

    const/16 v0, 0xe

    aput v1, v16, v0

    const/16 v0, 0xf

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v16, v0

    move-object v4, v15

    move-object v5, v4

    move-object/from16 v6, v16

    move-object v7, v6

    .line 322
    :goto_1
    iget-wide v1, v12, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver;->mSurfaceTextureNotifierPointer:J

    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v8, v19

    move/from16 v10, v20

    move/from16 v11, v21

    .line 322
    invoke-direct/range {v0 .. v11}, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver;->nativeHandleBroadcast(JLandroid/os/Bundle;[F[F[F[FIIII)V

    goto/16 :goto_2

    :cond_4
    const-string v0, "NotificationSurfaceBroadcastReceiver"

    const-string v1, "Missing required parameters. Ignoring broadcast"

    .line 318
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const-string v0, "com.oculus.vrdriver.teardown_notification"

    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 336
    iget-wide v0, v12, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver;->mSurfaceTextureNotifierPointer:J

    invoke-direct {v12, v0, v1}, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver;->nativeClearSurfaceTextureStatus(J)V

    goto/16 :goto_2

    :cond_6
    const-string v0, "com.oculus.vrdriver.block_input_for_overlay"

    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 340
    sget-object v0, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver;->INPUT_BLOCKING_TYPE_KEY:Ljava/lang/String;

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 342
    sget-object v0, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver;->INPUT_BLOCKING_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    sget-object v1, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver;->NO_INPUT_BLOCKING_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 345
    iget-wide v0, v12, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver;->mSurfaceTextureNotifierPointer:J

    const/4 v2, 0x0

    invoke-direct {v12, v0, v1, v2}, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver;->nativeSetInputRoutingTypeForOverlay(JI)V

    goto :goto_2

    .line 347
    :cond_7
    sget-object v1, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver;->BUTTON_INPUT_BLOCKING_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 348
    iget-wide v0, v12, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver;->mSurfaceTextureNotifierPointer:J

    const/4 v2, 0x1

    invoke-direct {v12, v0, v1, v2}, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver;->nativeSetInputRoutingTypeForOverlay(JI)V

    goto :goto_2

    .line 350
    :cond_8
    sget-object v1, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver;->BACK_INPUT_BLOCK:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 351
    iget-wide v0, v12, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver;->mSurfaceTextureNotifierPointer:J

    const/4 v2, 0x2

    invoke-direct {v12, v0, v1, v2}, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver;->nativeSetInputRoutingTypeForOverlay(JI)V

    goto :goto_2

    :cond_9
    const-string v1, "NotificationSurfaceBroadcastReceiver"

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown blocking type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    const-string v0, "NotificationSurfaceBroadcastReceiver"

    const-string v1, "Missing required parameters. Ignoring broadcast"

    .line 360
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    const-string v0, "NotificationSurfaceBroadcastReceiver"

    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error logging unhandled broadcast action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method sendSurfaceToPanelService(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/view/Surface;III)V
    .locals 12

    const-string v0, "NotificationSurfaceBroadcastReceiver"

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting surface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " service package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v10, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " service class "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v11, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver$1;

    move-object v3, v1

    move-object v4, p0

    move/from16 v5, p7

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p4

    move-object v9, p3

    invoke-direct/range {v3 .. v11}, Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver$1;-><init>(Lcom/oculus/vrapi/NotificationSurfaceBroadcastReceiver;IIILandroid/view/Surface;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 192
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

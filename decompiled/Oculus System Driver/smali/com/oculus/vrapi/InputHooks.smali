.class public Lcom/oculus/vrapi/InputHooks;
.super Ljava/lang/Object;
.source "InputHooks.java"

# interfaces
.implements Landroid/view/Window$Callback;


# static fields
.field private static final INPUT_SOURCE_HEADSET:I = 0x2002

.field private static final META_STATE_INJECTED_BACK_UP_EVENT:I = 0x65432050

.field private static final META_STATE_REMOTE:I = 0x65432000

.field public static final OVERLAY_INPUT_ROUTE_BACK_STATE_TO_OVERLAY:I = 0x2

.field public static final OVERLAY_INPUT_ROUTE_TO_APP:I = 0x0

.field public static final OVERLAY_INPUT_ROUTE_TO_OVERLAY:I = 0x1

.field private static final PRODUCT_ID_VR_PERIPHERAL:S = 0x160s

.field private static final TAG:Ljava/lang/String; = "InputHooksJava"

.field private static final TOUCH_STATE_DOWN:I = 0x1

.field private static final TOUCH_STATE_NO_CHANGE:I = 0x0

.field private static final TOUCH_STATE_UP:I = 0x2

.field private static final VENDOR_ID_OCULUS:S = 0x2833s

.field private static final VERBOSE:Z = false

.field private static final VR_PERIPHERAL_ID_PREFIX:Ljava/lang/String; = "Device 0x"

.field private static mActivity:Landroid/app/Activity;

.field private static mHooks:Lcom/oculus/vrapi/InputHooks;

.field private static mOverlayInputRoutingType:I

.field private static mPreviousCallback:Landroid/view/Window$Callback;

.field private static mWindow:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 133
    check-cast p1, Landroid/app/Activity;

    sput-object p1, Lcom/oculus/vrapi/InputHooks;->mActivity:Landroid/app/Activity;

    .line 134
    sget-object p1, Lcom/oculus/vrapi/InputHooks;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    sput-object p1, Lcom/oculus/vrapi/InputHooks;->mWindow:Landroid/view/Window;

    goto :goto_0

    .line 136
    :cond_0
    instance-of v0, p1, Lcom/oculus/os/DialogContext;

    if-eqz v0, :cond_2

    .line 138
    check-cast p1, Lcom/oculus/os/DialogContext;

    .line 139
    invoke-virtual {p1}, Lcom/oculus/os/DialogContext;->getWindow()Landroid/view/Window;

    move-result-object p1

    sput-object p1, Lcom/oculus/vrapi/InputHooks;->mWindow:Landroid/view/Window;

    .line 147
    :goto_0
    sget-object p1, Lcom/oculus/vrapi/InputHooks;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p1

    sput-object p1, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    .line 148
    sget-object p1, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    if-nez p1, :cond_1

    const-string p1, "InputHooksJava"

    const-string v0, "Window has no previous callback set. Falling back to directly accessing Activity"

    .line 150
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const-string p1, "InputHooksJava"

    const-string v0, "Unable to enable input hooks on a non-Activity Context"

    .line 143
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static CheckGearVrRetailInhibitLongPress(Landroid/content/Context;)Z
    .locals 3

    .line 186
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "inhibitLongpress"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/oculus/vrapi/GearVRProviderHelper$Public;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    const-string v0, "InputHooksJava"

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CheckGearVrRetailInhibitLongPress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static DisableInputHooks(Landroid/content/Context;)V
    .locals 2

    const-string p0, "InputHooksJava"

    const-string v0, "Disabling Java Input Hooks"

    .line 208
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget-object p0, Lcom/oculus/vrapi/InputHooks;->mHooks:Lcom/oculus/vrapi/InputHooks;

    if-eqz p0, :cond_1

    sget-object p0, Lcom/oculus/vrapi/InputHooks;->mHooks:Lcom/oculus/vrapi/InputHooks;

    sget-object p0, Lcom/oculus/vrapi/InputHooks;->mWindow:Landroid/view/Window;

    if-eqz p0, :cond_1

    .line 211
    sget-object p0, Lcom/oculus/vrapi/InputHooks;->mHooks:Lcom/oculus/vrapi/InputHooks;

    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mHooks:Lcom/oculus/vrapi/InputHooks;

    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-ne p0, v0, :cond_0

    .line 213
    sget-object p0, Lcom/oculus/vrapi/InputHooks;->mHooks:Lcom/oculus/vrapi/InputHooks;

    sget-object p0, Lcom/oculus/vrapi/InputHooks;->mWindow:Landroid/view/Window;

    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mHooks:Lcom/oculus/vrapi/InputHooks;

    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-virtual {p0, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    goto :goto_0

    :cond_0
    const-string p0, "InputHooksJava"

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisableInputHooks: Window callback was not set to InputHooks! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oculus/vrapi/InputHooks;->mHooks:Lcom/oculus/vrapi/InputHooks;

    sget-object v1, Lcom/oculus/vrapi/InputHooks;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    .line 219
    sput-object p0, Lcom/oculus/vrapi/InputHooks;->mHooks:Lcom/oculus/vrapi/InputHooks;

    :cond_1
    return-void
.end method

.method public static EnableInputHooks(Landroid/content/Context;)V
    .locals 2

    const-string v0, "InputHooksJava"

    const-string v1, "Enabling Java Input Hooks"

    .line 198
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v0, Lcom/oculus/vrapi/InputHooks;

    invoke-direct {v0, p0}, Lcom/oculus/vrapi/InputHooks;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oculus/vrapi/InputHooks;->mHooks:Lcom/oculus/vrapi/InputHooks;

    .line 200
    sget-object p0, Lcom/oculus/vrapi/InputHooks;->mHooks:Lcom/oculus/vrapi/InputHooks;

    sget-object p0, Lcom/oculus/vrapi/InputHooks;->mWindow:Landroid/view/Window;

    if-eqz p0, :cond_0

    .line 202
    sget-object p0, Lcom/oculus/vrapi/InputHooks;->mHooks:Lcom/oculus/vrapi/InputHooks;

    sget-object p0, Lcom/oculus/vrapi/InputHooks;->mWindow:Landroid/view/Window;

    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mHooks:Lcom/oculus/vrapi/InputHooks;

    invoke-virtual {p0, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    :cond_0
    return-void
.end method

.method public static GetHardwareID(I)J
    .locals 2

    .line 250
    invoke-static {p0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    .line 251
    invoke-static {p0}, Lcom/oculus/vrapi/InputHooks;->IsOculusInputDevice(Landroid/view/InputDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-static {p0}, Lcom/oculus/vrapi/InputHooks;->GetHardwareIDFromInputDevice(Landroid/view/InputDevice;)J

    move-result-wide v0

    return-wide v0

    .line 253
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "GetHardwareID(): invalid input device"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static GetHardwareIDFromInputDevice(Landroid/view/InputDevice;)J
    .locals 3

    .line 99
    invoke-virtual {p0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Device 0x"

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 103
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 111
    :try_start_0
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const/16 v2, 0x10

    invoke-direct {v1, v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 114
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetHardwareID(): could not extract ID from device: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetHardwareID(): could not extract ID from device: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static IsEnabled()Z
    .locals 1

    .line 162
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mHooks:Lcom/oculus/vrapi/InputHooks;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static IsNativeActivity(Landroid/content/Context;)Z
    .locals 1

    .line 193
    const-class v0, Landroid/app/NativeActivity;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static IsOculusInputDevice(I)Z
    .locals 0

    .line 270
    invoke-static {p0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 275
    :cond_0
    invoke-static {p0}, Lcom/oculus/vrapi/InputHooks;->IsOculusInputDevice(Landroid/view/InputDevice;)Z

    move-result p0

    return p0
.end method

.method private static IsOculusInputDevice(Landroid/view/InputDevice;)Z
    .locals 2

    .line 126
    invoke-virtual {p0}, Landroid/view/InputDevice;->getVendorId()I

    move-result v0

    const/16 v1, 0x2833

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/InputDevice;->getProductId()I

    move-result p0

    const/16 v0, 0x160

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static SendKey(II)V
    .locals 2

    .line 225
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 227
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, p0, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {v0, v1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0

    .line 229
    :cond_0
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 232
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mActivity:Landroid/app/Activity;

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, p0, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static SetOverlayInputRoutingType(I)V
    .locals 0

    .line 157
    sput p0, Lcom/oculus/vrapi/InputHooks;->mOverlayInputRoutingType:I

    return-void
.end method

.method public static getDisplayRealPixelHeight(Landroid/content/Context;)F
    .locals 2

    const-string v0, "window"

    .line 176
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 177
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 178
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 179
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 180
    iget p0, v0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    return p0
.end method

.method public static getDisplayRealPixelWidth(Landroid/content/Context;)F
    .locals 2

    const-string v0, "window"

    .line 167
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 168
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 169
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 170
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 171
    iget p0, v0, Landroid/graphics/Point;->x:I

    int-to-float p0, p0

    return p0
.end method

.method public static native nativeGetBlockRemoteBackButton()Z
.end method

.method public static native nativeSetBackButtonDown(JI)V
.end method

.method public static native nativeSetBackButtonUp(JII)Z
.end method

.method public static native nativeSetGamepadButtonDown(JI)V
.end method

.method public static native nativeSetGamepadButtonUp(JI)V
.end method

.method public static native nativeSetGamepadJoystickState(JFFFFFFFF)V
.end method

.method private static native nativeSetHeadsetTouchState(IFF)V
.end method

.method public static native nativeSetHomeButtonDown(JII)V
.end method

.method public static native nativeSetHomeButtonUp(JI)V
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 606
    sget v0, Lcom/oculus/vrapi/InputHooks;->mOverlayInputRoutingType:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 611
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const v2, 0x1000010

    and-int/2addr v0, v2

    if-lez v0, :cond_1

    .line 615
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    const/4 v2, 0x0

    .line 617
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    .line 618
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v6

    const/16 v2, 0xb

    .line 621
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    const/16 v3, 0xc

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    add-float v7, v2, v3

    const/16 v2, 0xe

    .line 622
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    const/16 v3, 0xd

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    add-float v8, v2, v3

    const/16 v2, 0x17

    .line 624
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v9

    const/16 v2, 0x16

    .line 625
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v10

    const/16 v2, 0xf

    .line 627
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v11

    const/16 v2, 0x10

    .line 628
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v12

    int-to-long v3, v0

    .line 630
    invoke-static/range {v3 .. v12}, Lcom/oculus/vrapi/InputHooks;->nativeSetGamepadJoystickState(JFFFFFFFF)V

    .line 634
    :cond_1
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_2

    .line 636
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 638
    :cond_2
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 641
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 14

    .line 293
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 294
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 295
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v2

    .line 296
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    const/16 v4, 0x6f

    const/16 v5, 0x6d

    const/4 v6, 0x4

    const/4 v7, 0x1

    const v8, 0x65432050

    if-ne v3, v8, :cond_0

    const-string v2, "InputHooksJava"

    .line 301
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring Injected Event "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_0
    const-wide/16 v8, 0x0

    const v3, 0x65432102

    if-ne v2, v3, :cond_2

    .line 319
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 320
    invoke-static {v8}, Lcom/oculus/vrapi/InputHooks;->IsOculusInputDevice(Landroid/view/InputDevice;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 322
    invoke-static {v8}, Lcom/oculus/vrapi/InputHooks;->GetHardwareIDFromInputDevice(Landroid/view/InputDevice;)J

    move-result-wide v8

    goto :goto_0

    .line 326
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    const/16 v12, 0x20

    shl-long/2addr v8, v12

    .line 328
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v12

    int-to-long v12, v12

    and-long/2addr v10, v12

    or-long/2addr v8, v10

    goto :goto_0

    :cond_2
    and-int/lit16 v10, v2, 0x401

    if-lez v10, :cond_3

    .line 331
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v8

    int-to-long v8, v8

    :cond_3
    :goto_0
    if-eq v0, v6, :cond_9

    if-ne v0, v5, :cond_4

    goto :goto_2

    :cond_4
    const/16 v10, 0x7d

    if-ne v0, v10, :cond_7

    const-string v0, "InputHooksJava"

    .line 359
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HOME BUTTON "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_5

    .line 362
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    invoke-static {v8, v9, v2, p1}, Lcom/oculus/vrapi/InputHooks;->nativeSetHomeButtonDown(JII)V

    goto :goto_1

    :cond_5
    if-ne v1, v7, :cond_6

    .line 366
    invoke-static {v8, v9, v2}, Lcom/oculus/vrapi/InputHooks;->nativeSetHomeButtonUp(JI)V

    :cond_6
    :goto_1
    return v7

    :cond_7
    and-int/lit16 v10, v2, 0x401

    if-lez v10, :cond_b

    if-nez v1, :cond_8

    .line 374
    invoke-static {v8, v9, v0}, Lcom/oculus/vrapi/InputHooks;->nativeSetGamepadButtonDown(JI)V

    goto :goto_3

    :cond_8
    if-ne v1, v7, :cond_b

    .line 378
    invoke-static {v8, v9, v0}, Lcom/oculus/vrapi/InputHooks;->nativeSetGamepadButtonUp(JI)V

    goto :goto_3

    :cond_9
    :goto_2
    const-string v10, "InputHooksJava"

    .line 339
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BACK BUTTON "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_a

    .line 342
    invoke-static {v8, v9, v2}, Lcom/oculus/vrapi/InputHooks;->nativeSetBackButtonDown(JI)V

    goto :goto_3

    :cond_a
    if-ne v1, v7, :cond_b

    .line 347
    invoke-static {v8, v9, v2, v0}, Lcom/oculus/vrapi/InputHooks;->nativeSetBackButtonUp(JII)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string p1, "InputHooksJava"

    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Consuming to Re-inject event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_b
    :goto_3
    if-eq v0, v6, :cond_c

    if-eq v0, v5, :cond_c

    if-ne v0, v4, :cond_e

    :cond_c
    if-eq v2, v3, :cond_d

    const/16 v1, 0x2002

    if-ne v2, v1, :cond_e

    .line 392
    :cond_d
    invoke-static {}, Lcom/oculus/vrapi/InputHooks;->nativeGetBlockRemoteBackButton()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string p1, "InputHooksJava"

    const-string v0, "Blocking back button with emulation off"

    .line 393
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 402
    :cond_e
    :goto_4
    sget v1, Lcom/oculus/vrapi/InputHooks;->mOverlayInputRoutingType:I

    if-ne v1, v7, :cond_f

    const-string p1, "InputHooksJava"

    const-string v0, "Consuming input due to overlay"

    .line 404
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 411
    :cond_f
    sget v1, Lcom/oculus/vrapi/InputHooks;->mOverlayInputRoutingType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    if-eq v0, v6, :cond_10

    if-eq v0, v5, :cond_10

    if-ne v0, v4, :cond_11

    :cond_10
    const-string p1, "InputHooksJava"

    const-string v0, "Consuming back button due to overlay"

    .line 413
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 417
    :cond_11
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_12

    .line 419
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 421
    :cond_12
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_13

    .line 424
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_13
    return v7
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 446
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 448
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 450
    :cond_0
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 453
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 661
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 663
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 484
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 485
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 486
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    .line 487
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    .line 489
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 490
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-ne v0, v6, :cond_1

    const/4 v5, 0x1

    :cond_1
    if-eqz v5, :cond_2

    const/4 v7, 0x2

    :cond_2
    const/16 v0, 0x1002

    if-ne v1, v0, :cond_3

    const/4 v0, 0x0

    .line 523
    invoke-static {v7, v0, v0}, Lcom/oculus/vrapi/InputHooks;->nativeSetHeadsetTouchState(IFF)V

    goto :goto_1

    :cond_3
    const/16 v0, 0x2002

    if-ne v1, v0, :cond_4

    const v0, 0x65432000

    if-eq v2, v0, :cond_4

    .line 527
    invoke-static {v7, v3, v4}, Lcom/oculus/vrapi/InputHooks;->nativeSetHeadsetTouchState(IFF)V

    .line 533
    :cond_4
    :goto_1
    sget v0, Lcom/oculus/vrapi/InputHooks;->mOverlayInputRoutingType:I

    if-ne v0, v6, :cond_5

    const-string p1, "InputHooksJava"

    const-string v0, "Consuming touch due to overlay"

    .line 535
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 539
    :cond_5
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_6

    .line 541
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 543
    :cond_6
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_7

    .line 546
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_7
    return v6
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 571
    sget v0, Lcom/oculus/vrapi/InputHooks;->mOverlayInputRoutingType:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 576
    :cond_0
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_1

    .line 578
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 580
    :cond_1
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 583
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1

    .line 1055
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 1057
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    :cond_0
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1

    .line 1035
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 1037
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 878
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 880
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .line 838
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 840
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    :cond_0
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .line 718
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 720
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    .line 687
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 689
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 897
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 899
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 797
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 799
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .line 772
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 774
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .line 920
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 922
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .line 747
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 749
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    .line 1076
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 1078
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$Callback;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .line 941
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 943
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1

    .line 963
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 965
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onSearchRequested(Landroid/view/SearchEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 816
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 818
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 859
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 861
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 989
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 991
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    .line 1014
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 1016
    sget-object v0, Lcom/oculus/vrapi/InputHooks;->mPreviousCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

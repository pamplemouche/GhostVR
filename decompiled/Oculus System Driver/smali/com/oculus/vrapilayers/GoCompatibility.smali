.class public Lcom/oculus/vrapilayers/GoCompatibility;
.super Ljava/lang/Object;
.source "GoCompatibility.java"


# static fields
.field private static final DISABLE_ANDROID_INPUT_EVENTS:I = 0x20

.field private static final DISABLE_EXTRA_LATENCY:I = 0x40

.field private static final DISABLE_SUBMITFRAME_MODIFICATION:I = 0x100

.field private static final FORCE_HMD_3DOF:I = 0x200

.field private static final INPUT_SOURCE_HEADSET:I = 0x2002

.field private static final JOYSTICK_AS_SIDECLICK:I = 0x1

.field private static final JOYSTICK_AS_SLOW_SIPE:I = 0x8

.field private static final JOYSTICK_AS_SWIPE:I = 0x4

.field private static final JOYSTICK_AS_TOUCHPAD:I = 0x2

.field private static final META_STATE_REMOTE:I = 0x65432000

.field private static final REPORT_TRUE_FOV:I = 0x80

.field private static final TAG:Ljava/lang/String; = "GoCompatibility"

.field private static final UPDATE_CONTROLLER_HANDEDNESS:I = 0x10

.field static downTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static StartLayer(JJ)V
    .locals 2

    const-string v0, "GoCompatibility"

    const-string v1, "GoCompatibility StartLayer: Loading libgocompatibility.so"

    .line 216
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "gocompatibility"

    .line 217
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 218
    const-class v0, Lcom/oculus/vrapilayers/GoCompatibility;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/oculus/vrapilayers/GoCompatibility;->nativeStartLayer(JJLjava/lang/ClassLoader;)V

    return-void
.end method

.method public static getGoEmulationManifestFeatures(Landroid/content/Context;)I
    .locals 9

    .line 150
    instance-of v0, p0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    .line 155
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 157
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_9

    const-string v0, "oculus.go_emulation.joystick"

    .line 161
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "oculus.go_emulation.update_controller_handedness"

    .line 162
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "oculus.go_emulation.disable_android_input_events"

    .line 163
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "oculus.go_emulation.disable_extra_latency"

    .line 164
    invoke-virtual {p0, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "oculus.go_emulation.report_true_fov"

    .line 165
    invoke-virtual {p0, v5, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "oculus.go_emulation.disable_submitframe_modification"

    .line 166
    invoke-virtual {p0, v6, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "oculus.go_emulation.force_hmd_3dof"

    .line 167
    invoke-virtual {p0, v7, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    const/4 v7, 0x1

    if-eqz v0, :cond_3

    const-string v8, "sideclick"

    .line 170
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const-string v8, "touchpad"

    .line 172
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const-string v8, "swipe"

    .line 174
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    :cond_2
    const-string v8, "slowswipe"

    .line 176
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    :cond_3
    :goto_0
    if-ne v2, v7, :cond_4

    or-int/lit8 v1, v1, 0x10

    :cond_4
    if-ne v3, v7, :cond_5

    or-int/lit8 v1, v1, 0x20

    :cond_5
    if-ne v4, v7, :cond_6

    or-int/lit8 v1, v1, 0x40

    :cond_6
    if-ne v5, v7, :cond_7

    or-int/lit16 v1, v1, 0x80

    :cond_7
    if-ne v6, v7, :cond_8

    or-int/lit16 v0, v1, 0x100

    move v1, v0

    :cond_8
    if-ne p0, v7, :cond_9

    or-int/lit16 v1, v1, 0x200

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "GoCompatibility"

    const-string v2, "getGoEmulationManifestFeatures() threw "

    .line 206
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_1
    return v1
.end method

.method public static hasHeadtrackingFeature(Landroid/content/Context;)Z
    .locals 5

    .line 116
    instance-of v0, p0, Landroid/app/Activity;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 121
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GoCompatibility"

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PackageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    .line 128
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v3, 0x4000

    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    .line 132
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_5

    .line 133
    aget-object v3, p0, v0

    iget-object v3, v3, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v3, :cond_3

    goto :goto_1

    .line 136
    :cond_3
    aget-object v3, p0, v0

    iget-object v3, v3, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    const-string v4, "android.hardware.vr.headtracking"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_4

    return v1

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "GoCompatibility"

    const-string v1, "hasHeadtrackingFeature() threw "

    .line 141
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    return v2
.end method

.method public static injectBack(Landroid/app/Activity;Z)V
    .locals 12

    if-eqz p1, :cond_0

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/oculus/vrapilayers/GoCompatibility;->downTime:J

    .line 78
    :cond_0
    new-instance v0, Landroid/view/KeyEvent;

    sget-wide v3, Lcom/oculus/vrapilayers/GoCompatibility;->downTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    xor-int/lit8 v7, p1, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x0

    const v10, -0x2a311723

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    const v1, 0x65432102

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/KeyEvent;->setSource(I)V

    const-string v2, "GoCompatibility"

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Injecting back "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->injectInputEvent(Landroid/view/InputEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "GoCompatibility"

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "injectBack exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_0
    new-instance v0, Landroid/view/KeyEvent;

    sget-wide v4, Lcom/oculus/vrapilayers/GoCompatibility;->downTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    xor-int/lit8 v8, p1, 0x1

    const/16 v9, 0x6f

    const/4 v10, 0x0

    const v11, -0x2a311723

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    .line 102
    invoke-virtual {v0, v1}, Landroid/view/KeyEvent;->setSource(I)V

    const-string v1, "GoCompatibility"

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Injecting escape "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->injectInputEvent(Landroid/view/InputEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string p1, "GoCompatibility"

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "injectEscape exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static injectTouch(Landroid/app/Activity;Z)V
    .locals 10

    if-eqz p1, :cond_0

    .line 54
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/oculus/vrapilayers/GoCompatibility;->downTime:J

    .line 57
    :cond_0
    sget-wide v2, Lcom/oculus/vrapilayers/GoCompatibility;->downTime:J

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    xor-int/lit8 v6, p1, 0x1

    const/high16 v7, 0x43200000    # 160.0f

    const/high16 v8, 0x43200000    # 160.0f

    const v9, 0x65432000

    .line 57
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    const/16 v0, 0x2002

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 66
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->injectInputEvent(Landroid/view/InputEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "GoCompatibility"

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "injectTouch exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static native nativeStartLayer(JJLjava/lang/ClassLoader;)V
.end method

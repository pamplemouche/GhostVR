.class public Lorg/chromium/device/gamepad/GamepadList;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:[LI11;

.field public c:Landroid/hardware/input/InputManager;

.field public d:I

.field public e:Z

.field public f:Landroid/hardware/input/InputManager$InputDeviceListener;


# direct methods
.method public synthetic constructor <init>(LJ11;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/device/gamepad/GamepadList;->a:Ljava/lang/Object;

    const/4 p1, 0x4

    new-array p1, p1, [LI11;

    .line 3
    iput-object p1, p0, Lorg/chromium/device/gamepad/GamepadList;->b:[LI11;

    .line 4
    new-instance p1, LJ11;

    invoke-direct {p1, p0}, LJ11;-><init>(Lorg/chromium/device/gamepad/GamepadList;)V

    iput-object p1, p0, Lorg/chromium/device/gamepad/GamepadList;->f:Landroid/hardware/input/InputManager$InputDeviceListener;

    return-void
.end method

.method public static setGamepadAPIActive(Z)V
    .locals 1

    .line 1
    sget-object v0, LK11;->a:Lorg/chromium/device/gamepad/GamepadList;

    .line 2
    invoke-virtual {v0, p0}, Lorg/chromium/device/gamepad/GamepadList;->a(Z)V

    return-void
.end method

.method public static updateGamepadData(J)V
    .locals 1

    .line 1
    sget-object v0, LK11;->a:Lorg/chromium/device/gamepad/GamepadList;

    .line 2
    invoke-virtual {v0, p0, p1}, Lorg/chromium/device/gamepad/GamepadList;->a(J)V

    return-void
.end method


# virtual methods
.method public final a(I)LI11;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 19
    iget-object v1, p0, Lorg/chromium/device/gamepad/GamepadList;->b:[LI11;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 20
    iget v2, v1, LI11;->a:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a()V
    .locals 4

    .line 12
    iget v0, p0, Lorg/chromium/device/gamepad/GamepadList;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/device/gamepad/GamepadList;->d:I

    if-nez v0, :cond_1

    .line 13
    iget-object v0, p0, Lorg/chromium/device/gamepad/GamepadList;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 14
    :try_start_0
    iget-object v2, p0, Lorg/chromium/device/gamepad/GamepadList;->b:[LI11;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object v0, p0, Lorg/chromium/device/gamepad/GamepadList;->c:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lorg/chromium/device/gamepad/GamepadList;->f:Landroid/hardware/input/InputManager$InputDeviceListener;

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 17
    iput-object v3, p0, Lorg/chromium/device/gamepad/GamepadList;->c:Landroid/hardware/input/InputManager;

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 18
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method public final a(J)V
    .locals 13

    .line 49
    iget-object v0, p0, Lorg/chromium/device/gamepad/GamepadList;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 50
    :try_start_0
    iget-object v2, p0, Lorg/chromium/device/gamepad/GamepadList;->b:[LI11;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 51
    iget-object v3, v2, LI11;->j:LT11;

    iget-object v4, v2, LI11;->d:[F

    iget-object v5, v2, LI11;->e:[F

    iget-object v6, v2, LI11;->g:[F

    iget-object v7, v2, LI11;->f:[F

    invoke-virtual {v3, v4, v5, v6, v7}, LT11;->a([F[F[F[F)V

    .line 52
    iget-object v3, v2, LI11;->j:LT11;

    invoke-virtual {v3}, LT11;->a()Z

    move-result v6

    const/4 v7, 0x1

    .line 53
    iget-object v8, v2, LI11;->h:Ljava/lang/String;

    .line 54
    iget-wide v9, v2, LI11;->c:J

    .line 55
    iget-object v11, v2, LI11;->d:[F

    .line 56
    iget-object v12, v2, LI11;->e:[F

    move-object v2, p0

    move-wide v3, p1

    move v5, v1

    .line 57
    invoke-static/range {v2 .. v12}, LJ/N;->MOkngxPY(Ljava/lang/Object;JIZZLjava/lang/String;J[F[F)V

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, p0

    move-wide v3, p1

    move v5, v1

    .line 58
    invoke-static/range {v2 .. v12}, LJ/N;->MOkngxPY(Ljava/lang/Object;JIZZLjava/lang/String;J[F[F)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Landroid/content/Context;)V
    .locals 6

    .line 1
    iget v0, p0, Lorg/chromium/device/gamepad/GamepadList;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/chromium/device/gamepad/GamepadList;->d:I

    if-nez v0, :cond_4

    const-string v0, "input"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lorg/chromium/device/gamepad/GamepadList;->c:Landroid/hardware/input/InputManager;

    .line 3
    iget-object p1, p0, Lorg/chromium/device/gamepad/GamepadList;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lorg/chromium/device/gamepad/GamepadList;->c:Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 6
    aget v3, v0, v2

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v3}, Landroid/view/InputDevice;->getSources()I

    move-result v4

    const v5, 0x1000010

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_2

    .line 8
    invoke-virtual {p0, v3}, Lorg/chromium/device/gamepad/GamepadList;->a(Landroid/view/InputDevice;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p1, p0, Lorg/chromium/device/gamepad/GamepadList;->c:Landroid/hardware/input/InputManager;

    iget-object v0, p0, Lorg/chromium/device/gamepad/GamepadList;->f:Landroid/hardware/input/InputManager$InputDeviceListener;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    :goto_3
    return-void
.end method

.method public final a(Z)V
    .locals 4

    .line 60
    iget-object v0, p0, Lorg/chromium/device/gamepad/GamepadList;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_0
    iput-boolean p1, p0, Lorg/chromium/device/gamepad/GamepadList;->e:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge p1, v1, :cond_1

    .line 62
    iget-object v1, p0, Lorg/chromium/device/gamepad/GamepadList;->b:[LI11;

    aget-object v1, v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 63
    :cond_0
    iget-object v2, v1, LI11;->d:[F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([FF)V

    .line 64
    iget-object v2, v1, LI11;->g:[F

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([FF)V

    .line 65
    iget-object v2, v1, LI11;->e:[F

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([FF)V

    .line 66
    iget-object v1, v1, LI11;->f:[F

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([FF)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 67
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Landroid/view/InputDevice;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    const/4 v3, -0x1

    if-ge v1, v2, :cond_1

    .line 21
    iget-object v2, p0, Lorg/chromium/device/gamepad/GamepadList;->b:[LI11;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-ne v1, v3, :cond_2

    return v0

    .line 22
    :cond_2
    new-instance v0, LI11;

    invoke-direct {v0, v1, p1}, LI11;-><init>(ILandroid/view/InputDevice;)V

    .line 23
    iget-object p1, p0, Lorg/chromium/device/gamepad/GamepadList;->b:[LI11;

    aput-object v0, p1, v1

    const/4 p1, 0x1

    return p1
.end method

.method public final a(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 24
    iget-object v0, p0, Lorg/chromium/device/gamepad/GamepadList;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 25
    :try_start_0
    iget-boolean v1, p0, Lorg/chromium/device/gamepad/GamepadList;->e:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    .line 26
    :cond_0
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/chromium/device/gamepad/GamepadList;->a(I)LI11;

    move-result-object v1

    if-nez v1, :cond_1

    .line 27
    monitor-exit v0

    return v2

    .line 28
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    .line 29
    invoke-static {v3}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    move-result v3

    goto :goto_0

    :pswitch_0
    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_2

    goto :goto_2

    .line 30
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 31
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 32
    iget-object v3, v1, LI11;->f:[F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v2

    goto :goto_1

    .line 33
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v4, :cond_4

    .line 34
    iget-object v3, v1, LI11;->f:[F

    const/4 v5, 0x0

    aput v5, v3, v2

    .line 35
    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, v1, LI11;->c:J

    const/4 v2, 0x1

    .line 36
    :goto_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 38
    iget-object v0, p0, Lorg/chromium/device/gamepad/GamepadList;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 39
    :try_start_0
    iget-boolean v1, p0, Lorg/chromium/device/gamepad/GamepadList;->e:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    .line 40
    :cond_0
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/chromium/device/gamepad/GamepadList;->a(I)LI11;

    move-result-object v1

    if-nez v1, :cond_1

    .line 41
    monitor-exit v0

    return v2

    .line 42
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    const v4, 0x1000010

    and-int/2addr v3, v4

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    goto :goto_2

    .line 43
    :cond_3
    :goto_1
    iget-object v3, v1, LI11;->i:[I

    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 44
    aget v3, v3, v2

    .line 45
    iget-object v4, v1, LI11;->g:[F

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v6

    aput v6, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 46
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, v1, LI11;->c:J

    const/4 v2, 0x1

    .line 47
    :goto_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 48
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/InputDevice;->getSources()I

    move-result v0

    const v1, 0x1000010

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    return-void

    .line 3
    :cond_2
    iget-object v0, p0, Lorg/chromium/device/gamepad/GamepadList;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/chromium/device/gamepad/GamepadList;->a(Landroid/view/InputDevice;)Z

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/device/gamepad/GamepadList;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/chromium/device/gamepad/GamepadList;->a(I)LI11;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p1, LI11;->b:I

    .line 4
    iget-object v1, p0, Lorg/chromium/device/gamepad/GamepadList;->b:[LI11;

    const/4 v2, 0x0

    aput-object v2, v1, p1

    .line 5
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

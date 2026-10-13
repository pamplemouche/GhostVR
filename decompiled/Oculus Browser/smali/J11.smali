.class public LJ11;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field public final synthetic a:Lorg/chromium/device/gamepad/GamepadList;


# direct methods
.method public constructor <init>(Lorg/chromium/device/gamepad/GamepadList;)V
    .locals 0

    .line 1
    iput-object p1, p0, LJ11;->a:Lorg/chromium/device/gamepad/GamepadList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputDeviceAdded(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LJ11;->a:Lorg/chromium/device/gamepad/GamepadList;

    .line 2
    invoke-virtual {v0, p1}, Lorg/chromium/device/gamepad/GamepadList;->b(I)V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0

    .line 1
    iget-object p1, p0, LJ11;->a:Lorg/chromium/device/gamepad/GamepadList;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LJ11;->a:Lorg/chromium/device/gamepad/GamepadList;

    .line 2
    invoke-virtual {v0, p1}, Lorg/chromium/device/gamepad/GamepadList;->c(I)V

    return-void
.end method

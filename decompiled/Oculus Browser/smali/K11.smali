.class public abstract LK11;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lorg/chromium/device/gamepad/GamepadList;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/chromium/device/gamepad/GamepadList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/device/gamepad/GamepadList;-><init>(LJ11;)V

    sput-object v0, LK11;->a:Lorg/chromium/device/gamepad/GamepadList;

    return-void
.end method

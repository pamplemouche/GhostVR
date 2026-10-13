.class public Lcom/oculus/vrapi/GamepadListener;
.super Ljava/lang/Object;
.source "GamepadListener.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "GamepadListener"

.field public static gamePadListener:Lcom/oculus/vrapi/GamepadListener;


# instance fields
.field private gamePadDeviceIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/vrapi/GamepadListener;->gamePadDeviceIds:Ljava/util/ArrayList;

    return-void
.end method

.method private static IsGamepad(Landroid/view/InputDevice;)Z
    .locals 3

    .line 34
    invoke-static {p0}, Lcom/oculus/vrapi/GamepadListener;->IsRemote(Landroid/view/InputDevice;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 38
    :cond_0
    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    move-result v0

    const/16 v2, 0x401

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_1

    .line 39
    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    move-result p0

    const v0, 0x1000010

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private static IsRemote(Landroid/view/InputDevice;)Z
    .locals 1

    .line 29
    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    move-result p0

    const v0, 0x1000311

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private addGamepad(II)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/oculus/vrapi/GamepadListener;->gamePadDeviceIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/oculus/vrapi/GamepadListener;->gamePadDeviceIds:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-static {p1, p2}, Lcom/oculus/vrapi/GamepadListener;->nativeGamepadAdded(II)V

    :cond_0
    return-void
.end method

.method private static native nativeGamepadAdded(II)V
.end method

.method private static native nativeGamepadRemoved(I)V
.end method

.method private removeGamepad(I)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/oculus/vrapi/GamepadListener;->gamePadDeviceIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/oculus/vrapi/GamepadListener;->gamePadDeviceIds:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 57
    invoke-static {p1}, Lcom/oculus/vrapi/GamepadListener;->nativeGamepadRemoved(I)V

    :cond_0
    return-void
.end method

.method private static startListener(Landroid/content/Context;)V
    .locals 7

    .line 65
    sget-object v0, Lcom/oculus/vrapi/GamepadListener;->gamePadListener:Lcom/oculus/vrapi/GamepadListener;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/oculus/vrapi/GamepadListener;

    invoke-direct {v0}, Lcom/oculus/vrapi/GamepadListener;-><init>()V

    sput-object v0, Lcom/oculus/vrapi/GamepadListener;->gamePadListener:Lcom/oculus/vrapi/GamepadListener;

    :cond_0
    const-string v0, "input"

    .line 71
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 72
    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 73
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 75
    aget v3, v0, v2

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 76
    invoke-static {v3}, Lcom/oculus/vrapi/GamepadListener;->IsGamepad(Landroid/view/InputDevice;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "GamepadListener"

    .line 78
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding Device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " pid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/InputDevice;->getProductId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " sources: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/InputDevice;->getSources()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget-object v4, Lcom/oculus/vrapi/GamepadListener;->gamePadListener:Lcom/oculus/vrapi/GamepadListener;

    aget v5, v0, v2

    invoke-virtual {v3}, Landroid/view/InputDevice;->getProductId()I

    move-result v3

    invoke-direct {v4, v5, v3}, Lcom/oculus/vrapi/GamepadListener;->addGamepad(II)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_2
    sget-object v0, Lcom/oculus/vrapi/GamepadListener;->gamePadListener:Lcom/oculus/vrapi/GamepadListener;

    iget-object v0, v0, Lcom/oculus/vrapi/GamepadListener;->gamePadDeviceIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-static {v1}, Lcom/oculus/vrapi/GamepadListener;->stateChanged(I)V

    .line 84
    new-instance v0, Lcom/oculus/vrapi/GamepadListener$1;

    invoke-direct {v0, p0}, Lcom/oculus/vrapi/GamepadListener$1;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/oculus/vrapi/ContextHelper;->runOnUiThread(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static native stateChanged(I)V
.end method

.method private static stopListener(Landroid/content/Context;)V
    .locals 1

    .line 98
    new-instance v0, Lcom/oculus/vrapi/GamepadListener$2;

    invoke-direct {v0, p0}, Lcom/oculus/vrapi/GamepadListener$2;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/oculus/vrapi/ContextHelper;->runOnUiThread(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 107
    sget-object p0, Lcom/oculus/vrapi/GamepadListener;->gamePadListener:Lcom/oculus/vrapi/GamepadListener;

    iget-object p0, p0, Lcom/oculus/vrapi/GamepadListener;->gamePadDeviceIds:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public onInputDeviceAdded(I)V
    .locals 4

    .line 119
    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 124
    :cond_0
    invoke-static {v0}, Lcom/oculus/vrapi/GamepadListener;->IsGamepad(Landroid/view/InputDevice;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "GamepadListener"

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding Device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/InputDevice;->getProductId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sources: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/InputDevice;->getSources()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {v0}, Landroid/view/InputDevice;->getProductId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/oculus/vrapi/GamepadListener;->addGamepad(II)V

    .line 128
    iget-object p1, p0, Lcom/oculus/vrapi/GamepadListener;->gamePadDeviceIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/oculus/vrapi/GamepadListener;->stateChanged(I)V

    :cond_2
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 3

    const-string v0, "GamepadListener"

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing Device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct {p0, p1}, Lcom/oculus/vrapi/GamepadListener;->removeGamepad(I)V

    return-void
.end method

.class public Lcom/oculus/InputInjectionClient;
.super Ljava/lang/Object;
.source "InputInjectionClient.java"


# static fields
.field static final HMD:I = 0x2

.field private static final INPUTINJECTION_SERVICE_NAME:Ljava/lang/String; = "InputInjectionService"

.field static final LEFT_CONTROLLER:I = 0x0

.field static final RIGHT_CONTROLLER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "InputInjectionClient"


# instance fields
.field private mInputInjectionService:Lcom/oculus/inputinjectionservice/IInputInjectionService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "android.os.ServiceManager"

    .line 31
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getService"

    const/4 v2, 0x1

    .line 32
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 33
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "InputInjectionService"

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 35
    invoke-static {v0}, Lcom/oculus/inputinjectionservice/IInputInjectionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oculus/inputinjectionservice/IInputInjectionService;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/InputInjectionClient;->mInputInjectionService:Lcom/oculus/inputinjectionservice/IInputInjectionService;

    goto :goto_0

    .line 37
    :cond_0
    sget-object v0, Lcom/oculus/InputInjectionClient;->TAG:Ljava/lang/String;

    const-string v1, "ERROR: mInputInjectionService is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 40
    sget-object v1, Lcom/oculus/InputInjectionClient;->TAG:Ljava/lang/String;

    const-string v2, "Binder creation ERROR!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getCurrentButtons()[Z
    .locals 4

    const/4 v0, 0x1

    .line 86
    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/oculus/InputInjectionClient;->mInputInjectionService:Lcom/oculus/inputinjectionservice/IInputInjectionService;

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/oculus/InputInjectionClient;->mInputInjectionService:Lcom/oculus/inputinjectionservice/IInputInjectionService;

    invoke-interface {v1}, Lcom/oculus/inputinjectionservice/IInputInjectionService;->getButtons()[Z

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    .line 94
    sget-object v2, Lcom/oculus/InputInjectionClient;->TAG:Ljava/lang/String;

    const-string v3, "InputInjectionService not available"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public getCurrentJoysticks()[F
    .locals 4

    const/4 v0, 0x1

    .line 101
    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, 0x7fc00000    # Float.NaN

    aput v2, v0, v1

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/oculus/InputInjectionClient;->mInputInjectionService:Lcom/oculus/inputinjectionservice/IInputInjectionService;

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/oculus/InputInjectionClient;->mInputInjectionService:Lcom/oculus/inputinjectionservice/IInputInjectionService;

    invoke-interface {v1}, Lcom/oculus/inputinjectionservice/IInputInjectionService;->getJoysticks()[F

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    .line 109
    sget-object v2, Lcom/oculus/InputInjectionClient;->TAG:Ljava/lang/String;

    const-string v3, "InputInjectionService not available"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public getCurrentPose(I)[F
    .locals 3

    const/4 v0, 0x1

    .line 46
    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, 0x7fc00000    # Float.NaN

    aput v2, v0, v1

    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/oculus/InputInjectionClient;->mInputInjectionService:Lcom/oculus/inputinjectionservice/IInputInjectionService;

    if-eqz v1, :cond_0

    packed-switch p1, :pswitch_data_0

    return-object v0

    .line 55
    :pswitch_0
    iget-object p1, p0, Lcom/oculus/InputInjectionClient;->mInputInjectionService:Lcom/oculus/inputinjectionservice/IInputInjectionService;

    invoke-interface {p1}, Lcom/oculus/inputinjectionservice/IInputInjectionService;->getHeadsetPose()[F

    move-result-object p1

    return-object p1

    .line 53
    :pswitch_1
    iget-object p1, p0, Lcom/oculus/InputInjectionClient;->mInputInjectionService:Lcom/oculus/inputinjectionservice/IInputInjectionService;

    invoke-interface {p1}, Lcom/oculus/inputinjectionservice/IInputInjectionService;->getRightPose()[F

    move-result-object p1

    return-object p1

    .line 51
    :pswitch_2
    iget-object p1, p0, Lcom/oculus/InputInjectionClient;->mInputInjectionService:Lcom/oculus/inputinjectionservice/IInputInjectionService;

    invoke-interface {p1}, Lcom/oculus/inputinjectionservice/IInputInjectionService;->getLeftPose()[F

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    .line 63
    sget-object v1, Lcom/oculus/InputInjectionClient;->TAG:Ljava/lang/String;

    const-string v2, "InputInjectionService not available"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCurrentTurnOff()[Z
    .locals 4

    const/4 v0, 0x1

    .line 71
    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/oculus/InputInjectionClient;->mInputInjectionService:Lcom/oculus/inputinjectionservice/IInputInjectionService;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/oculus/InputInjectionClient;->mInputInjectionService:Lcom/oculus/inputinjectionservice/IInputInjectionService;

    invoke-interface {v1}, Lcom/oculus/inputinjectionservice/IInputInjectionService;->getTurnOff()[Z

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    .line 79
    sget-object v2, Lcom/oculus/InputInjectionClient;->TAG:Ljava/lang/String;

    const-string v3, "InputInjectionService not available"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

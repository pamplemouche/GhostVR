.class public Lcom/oculus/vrshell/VrNotificationService;
.super Landroid/app/Service;
.source "VrNotificationService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBinder:Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;

.field private mVrNotificationListenerService:Lcom/oculus/vrshell/notifications/VrNotificationListenerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/oculus/vrshell/VrNotificationService;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/VrNotificationService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
    new-instance v0, Lcom/oculus/vrshell/VrNotificationService$1;

    invoke-direct {v0, p0}, Lcom/oculus/vrshell/VrNotificationService$1;-><init>(Lcom/oculus/vrshell/VrNotificationService;)V

    iput-object v0, p0, Lcom/oculus/vrshell/VrNotificationService;->mBinder:Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/vrshell/VrNotificationService;)Lcom/oculus/vrshell/notifications/VrNotificationListenerService;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/oculus/vrshell/VrNotificationService;->mVrNotificationListenerService:Lcom/oculus/vrshell/notifications/VrNotificationListenerService;

    return-object p0
.end method

.method private registerVrNotificationListenerService()V
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/oculus/vrshell/VrNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->getInstance(Landroid/content/Context;)Lcom/oculus/vrshell/notifications/VrNotificationListenerService;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/vrshell/VrNotificationService;->mVrNotificationListenerService:Lcom/oculus/vrshell/notifications/VrNotificationListenerService;

    .line 48
    iget-object v0, p0, Lcom/oculus/vrshell/VrNotificationService;->mVrNotificationListenerService:Lcom/oculus/vrshell/notifications/VrNotificationListenerService;

    invoke-virtual {v0}, Lcom/oculus/vrshell/notifications/VrNotificationListenerService;->registerAsSystemServiceUsingReflection()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 26
    iget-object p1, p0, Lcom/oculus/vrshell/VrNotificationService;->mBinder:Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 31
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 32
    sget-object v0, Lcom/oculus/vrshell/VrNotificationService;->TAG:Ljava/lang/String;

    const-string v1, "VrNotificationService onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-direct {p0}, Lcom/oculus/vrshell/VrNotificationService;->registerVrNotificationListenerService()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 38
    sget-object p1, Lcom/oculus/vrshell/VrNotificationService;->TAG:Ljava/lang/String;

    const-string p2, "VrNotificationService onStartCommand()"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object p1, p0, Lcom/oculus/vrshell/VrNotificationService;->mVrNotificationListenerService:Lcom/oculus/vrshell/notifications/VrNotificationListenerService;

    if-nez p1, :cond_0

    .line 40
    invoke-direct {p0}, Lcom/oculus/vrshell/VrNotificationService;->registerVrNotificationListenerService()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

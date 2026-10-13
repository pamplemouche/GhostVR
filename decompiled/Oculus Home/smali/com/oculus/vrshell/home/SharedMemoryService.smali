.class public Lcom/oculus/vrshell/home/SharedMemoryService;
.super Landroid/app/Service;
.source "SharedMemoryService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/home/SharedMemoryService$IncomingHandler;
    }
.end annotation


# static fields
.field private static final MODULE_NAME:Ljava/lang/String;

.field private static final SHARED_MEMORY_INFO_ID:I = 0x1

.field private static final TEMP_DIR_NAME:Ljava/lang/String; = "/temp"


# instance fields
.field mMainHandler:Landroid/os/Handler;

.field private mMessenger:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/oculus/vrshell/home/SharedMemoryService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/SharedMemoryService;->MODULE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    new-instance v0, Lcom/oculus/vrshell/home/SharedMemoryService$IncomingHandler;

    invoke-direct {v0, p0}, Lcom/oculus/vrshell/home/SharedMemoryService$IncomingHandler;-><init>(Lcom/oculus/vrshell/home/SharedMemoryService;)V

    iput-object v0, p0, Lcom/oculus/vrshell/home/SharedMemoryService;->mMainHandler:Landroid/os/Handler;

    .line 35
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/oculus/vrshell/home/SharedMemoryService;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oculus/vrshell/home/SharedMemoryService;->mMessenger:Landroid/os/Messenger;

    .line 36
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/oculus/vrshell/home/SharedMemoryService;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oculus/vrshell/home/SharedMemoryService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

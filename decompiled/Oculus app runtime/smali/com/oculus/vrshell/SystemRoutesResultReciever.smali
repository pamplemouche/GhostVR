.class public Lcom/oculus/vrshell/SystemRoutesResultReciever;
.super Landroid/os/ResultReceiver;
.source "SystemRoutesResultReciever.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/SystemRoutesResultReciever$Callback;,
        Lcom/oculus/vrshell/SystemRoutesResultReciever$SystemRoutesConfigHolder;
    }
.end annotation


# static fields
.field private static final BUNDLE_RESULT_NAME:Ljava/lang/String; = "ROUTES_RESULT"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAction:Ljava/lang/String;

.field private final mCallback:Lcom/oculus/vrshell/SystemRoutesResultReciever$Callback;

.field private final mHolder:Lcom/oculus/vrshell/SystemRoutesResultReciever$SystemRoutesConfigHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/oculus/vrshell/SystemRoutesResultReciever;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/SystemRoutesResultReciever;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/vrshell/SystemRoutesResultReciever$SystemRoutesConfigHolder;Ljava/lang/String;Lcom/oculus/vrshell/SystemRoutesResultReciever$Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 30
    iput-object p1, p0, Lcom/oculus/vrshell/SystemRoutesResultReciever;->mHolder:Lcom/oculus/vrshell/SystemRoutesResultReciever$SystemRoutesConfigHolder;

    .line 31
    iput-object p2, p0, Lcom/oculus/vrshell/SystemRoutesResultReciever;->mAction:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/oculus/vrshell/SystemRoutesResultReciever;->mCallback:Lcom/oculus/vrshell/SystemRoutesResultReciever$Callback;

    return-void
.end method


# virtual methods
.method public getCrossPackageReceiver()Landroid/os/ResultReceiver;
    .locals 2

    .line 51
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 52
    invoke-virtual {p0, v0, v1}, Lcom/oculus/vrshell/SystemRoutesResultReciever;->writeToParcel(Landroid/os/Parcel;I)V

    .line 53
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 54
    sget-object v1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 55
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    const-string p1, "ROUTES_RESULT"

    .line 37
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 39
    sget-object p2, Lcom/oculus/vrshell/SystemRoutesResultReciever;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/vrshell/SystemRoutesResultReciever;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object p2, p0, Lcom/oculus/vrshell/SystemRoutesResultReciever;->mHolder:Lcom/oculus/vrshell/SystemRoutesResultReciever$SystemRoutesConfigHolder;

    invoke-interface {p2}, Lcom/oculus/vrshell/SystemRoutesResultReciever$SystemRoutesConfigHolder;->getSystemRoutesConfiguration()Lcom/oculus/vrshell/config/SystemRoutesConfiguration;

    move-result-object p2

    .line 42
    monitor-enter p2

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/oculus/vrshell/SystemRoutesResultReciever;->mCallback:Lcom/oculus/vrshell/SystemRoutesResultReciever$Callback;

    invoke-interface {v0, p2, p1}, Lcom/oculus/vrshell/SystemRoutesResultReciever$Callback;->updateSystemRoutesHolder(Lcom/oculus/vrshell/config/SystemRoutesConfiguration;Ljava/util/ArrayList;)V

    .line 46
    iget-object p1, p0, Lcom/oculus/vrshell/SystemRoutesResultReciever;->mHolder:Lcom/oculus/vrshell/SystemRoutesResultReciever$SystemRoutesConfigHolder;

    invoke-interface {p1}, Lcom/oculus/vrshell/SystemRoutesResultReciever$SystemRoutesConfigHolder;->finalizeSystemRoutesConfiguration()V

    .line 47
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

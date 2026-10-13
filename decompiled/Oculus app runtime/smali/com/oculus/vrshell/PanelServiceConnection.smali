.class public Lcom/oculus/vrshell/PanelServiceConnection;
.super Ljava/lang/Object;
.source "PanelServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/PanelServiceConnection$PanelServiceConnectionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivityToken:Landroid/os/IBinder;

.field private final mAppConfig:Lcom/oculus/vrshell/config/PanelAppConfiguration;

.field private final mFirstPartyVerifier:Lcom/oculus/vrshell/panelservice/PanelVerifier;

.field private final mIsDeveloperBuildAllowed:Z

.field private final mIsGearVRDeveloperMode:Z

.field private mIsServiceBound:Z

.field private final mListener:Lcom/oculus/vrshell/PanelServiceConnection$PanelServiceConnectionListener;

.field private final mMultiSurface:Ljava/util/HashMap;

.field private final mPanelAppId:I

.field private final mPanelBundle:Landroid/os/Bundle;

.field private final mPanelServicePFD:Landroid/os/ParcelFileDescriptor;

.field private final mPanelSurface:Landroid/view/Surface;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private final mUnlockulusFailureMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/oculus/vrshell/PanelServiceConnection;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/PanelServiceConnection;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(ILandroid/view/Surface;Ljava/util/HashMap;Lcom/oculus/vrshell/config/PanelAppConfiguration;ILandroid/os/Bundle;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/os/IBinder;Lcom/oculus/vrshell/PanelServiceConnection$PanelServiceConnectionListener;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 308
    iput-object v0, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mServiceMessenger:Landroid/os/Messenger;

    const/4 v0, 0x0

    .line 309
    iput-boolean v0, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mIsServiceBound:Z

    .line 47
    iput p1, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mPanelAppId:I

    .line 48
    iput-object p4, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mAppConfig:Lcom/oculus/vrshell/config/PanelAppConfiguration;

    .line 49
    invoke-static {p5}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mPanelServicePFD:Landroid/os/ParcelFileDescriptor;

    .line 50
    iput-object p2, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mPanelSurface:Landroid/view/Surface;

    .line 54
    iput-object p3, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mMultiSurface:Ljava/util/HashMap;

    .line 55
    iput-object p6, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mPanelBundle:Landroid/os/Bundle;

    .line 56
    iput-object p9, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mActivityToken:Landroid/os/IBinder;

    .line 57
    iput-object p10, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mListener:Lcom/oculus/vrshell/PanelServiceConnection$PanelServiceConnectionListener;

    .line 60
    invoke-static {p8}, Lcom/oculus/vrshell/util/DebugUtil;->isGearVrDeveloperMode(Landroid/content/ContentResolver;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mIsGearVRDeveloperMode:Z

    .line 63
    sget-object p1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-static {p7, p1}, Lcom/oculus/vrshell/panelservice/UnlockulusVerifier;->isUnlockulusUnlocked(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mUnlockulusFailureMessage:Ljava/lang/String;

    .line 64
    iget-boolean p1, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mIsGearVRDeveloperMode:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mUnlockulusFailureMessage:Ljava/lang/String;

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mIsDeveloperBuildAllowed:Z

    .line 66
    new-instance p1, Lcom/oculus/vrshell/panelservice/PanelVerifier;

    iget-boolean p2, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mIsDeveloperBuildAllowed:Z

    invoke-direct {p1, p7, p2, p2}, Lcom/oculus/vrshell/panelservice/PanelVerifier;-><init>(Landroid/content/Context;ZZ)V

    iput-object p1, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mFirstPartyVerifier:Lcom/oculus/vrshell/panelservice/PanelVerifier;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/vrshell/PanelServiceConnection;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mPanelServicePFD:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/oculus/vrshell/PanelServiceConnection;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private sendPanelConnectionMessages()V
    .locals 7

    .line 228
    iget-boolean v0, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mIsServiceBound:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 237
    invoke-static {v0, v1, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 238
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 239
    iget-object v2, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mPanelServicePFD:Landroid/os/ParcelFileDescriptor;

    const-string v3, "panelServicePFD"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 241
    iget-object v2, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mPanelSurface:Landroid/view/Surface;

    const-string v3, "panelSurface"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 244
    iget-object v2, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mMultiSurface:Ljava/util/HashMap;

    if-eqz v2, :cond_2

    .line 245
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 246
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 247
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "panelSurface:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mMultiSurface:Ljava/util/HashMap;

    .line 248
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/Surface;

    .line 247
    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v5, "aux"

    .line 254
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mMultiSurface:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 257
    sget-object v4, Lcom/oculus/vrshell/PanelServiceConnection;->TAG:Ljava/lang/String;

    const-string v5, "Adding legacy aux panel surface as panelSurfaceAux."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v4, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mMultiSurface:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    const-string v4, "panelSurfaceAux"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 263
    :cond_2
    iget-object v2, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mPanelBundle:Landroid/os/Bundle;

    const-string v3, "panelBundle"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 265
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 272
    sget-object v1, Lcom/oculus/vrshell/PanelServiceConnection;->TAG:Ljava/lang/String;

    const-string v2, "Error sending message to service."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    :goto_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/oculus/vrshell/PanelServiceConnection$1;

    invoke-direct {v1, p0}, Lcom/oculus/vrshell/PanelServiceConnection$1;-><init>(Lcom/oculus/vrshell/PanelServiceConnection;)V

    .line 278
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    .line 177
    sget-object v0, Lcom/oculus/vrshell/PanelServiceConnection;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 181
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mPanelAppId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "onSeviceConnected - component name (%s), panel app id (%d)"

    .line 179
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mListener:Lcom/oculus/vrshell/PanelServiceConnection$PanelServiceConnectionListener;

    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v0, p1}, Lcom/oculus/vrshell/PanelServiceConnection$PanelServiceConnectionListener;->onServiceConnected(Landroid/content/ComponentName;)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mAppConfig:Lcom/oculus/vrshell/config/PanelAppConfiguration;

    invoke-virtual {v0}, Lcom/oculus/vrshell/config/PanelAppConfiguration;->isWellKnownPanelType()Z

    move-result v0

    xor-int/2addr v0, v4

    if-nez v0, :cond_3

    .line 191
    iget-object v0, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mAppConfig:Lcom/oculus/vrshell/config/PanelAppConfiguration;

    invoke-virtual {v0}, Lcom/oculus/vrshell/config/PanelAppConfiguration;->getPackageUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/PanelServiceConnection;->verifyFirstPartyUID(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 193
    sget-object v1, Lcom/oculus/vrshell/PanelServiceConnection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "verifyFirstPartyUID Failure:  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 200
    new-instance p1, Landroid/os/Messenger;

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object p1, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mServiceMessenger:Landroid/os/Messenger;

    .line 201
    iput-boolean v4, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mIsServiceBound:Z

    .line 202
    invoke-direct {p0}, Lcom/oculus/vrshell/PanelServiceConnection;->sendPanelConnectionMessages()V

    .line 203
    iget-object p1, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mAppConfig:Lcom/oculus/vrshell/config/PanelAppConfiguration;

    invoke-virtual {p1}, Lcom/oculus/vrshell/config/PanelAppConfiguration;->isNeedsActivityToken()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 204
    invoke-virtual {p0}, Lcom/oculus/vrshell/PanelServiceConnection;->sendActivityToken()V

    goto :goto_1

    .line 207
    :cond_4
    sget-object p2, Lcom/oculus/vrshell/PanelServiceConnection;->TAG:Ljava/lang/String;

    const-string v0, "Disconnecting unverified panel service."

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/PanelServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .line 214
    sget-object v0, Lcom/oculus/vrshell/PanelServiceConnection;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 218
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget p1, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mPanelAppId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v1, v3

    const-string p1, "onSeviceDisconnected - component name (%s), panel app id (%d)"

    .line 216
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 214
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 219
    iput-object p1, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mServiceMessenger:Landroid/os/Messenger;

    .line 220
    iput-boolean v2, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mIsServiceBound:Z

    .line 222
    iget-object p1, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mListener:Lcom/oculus/vrshell/PanelServiceConnection$PanelServiceConnectionListener;

    if-eqz p1, :cond_0

    .line 223
    iget v0, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mPanelAppId:I

    invoke-interface {p1, v0}, Lcom/oculus/vrshell/PanelServiceConnection$PanelServiceConnectionListener;->onServiceDisconnected(I)V

    :cond_0
    return-void
.end method

.method public sendActivityToken()V
    .locals 4

    .line 71
    iget-boolean v0, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mIsServiceBound:Z

    if-nez v0, :cond_0

    .line 72
    sget-object v0, Lcom/oculus/vrshell/PanelServiceConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not send the activity token to panel app id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mPanelAppId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " because service was not bound"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mActivityToken:Landroid/os/IBinder;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 87
    invoke-static {v0, v1, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 88
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 89
    iget-object v2, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mActivityToken:Landroid/os/IBinder;

    const-string v3, "panelToken"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 91
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 98
    sget-object v1, Lcom/oculus/vrshell/PanelServiceConnection;->TAG:Ljava/lang/String;

    const-string v2, "Error sending message to service."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public verifyFirstPartyUID(I)Ljava/lang/String;
    .locals 13

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_0

    .line 106
    sget-object p1, Lcom/oculus/vrshell/PanelServiceConnection;->TAG:Ljava/lang/String;

    const-string v1, "Panel app running with system privileges, allowing."

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 110
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 111
    iget-object v3, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mFirstPartyVerifier:Lcom/oculus/vrshell/panelservice/PanelVerifier;

    invoke-virtual {v3, p1}, Lcom/oculus/vrshell/panelservice/PanelVerifier;->checkApkSignature(I)Lcom/oculus/vrshell/panelservice/SigCertVerifier$SigCertInfo;

    move-result-object v3

    .line 112
    iget-object v4, v3, Lcom/oculus/vrshell/panelservice/SigCertVerifier$SigCertInfo;->packageNames:Ljava/util/Set;

    invoke-static {v4}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 113
    iget-object v5, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mFirstPartyVerifier:Lcom/oculus/vrshell/panelservice/PanelVerifier;

    invoke-virtual {v5, p1}, Lcom/oculus/vrshell/panelservice/PanelVerifier;->isVrRunnable(I)Z

    move-result v5

    .line 114
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 116
    sget-object v8, Lcom/oculus/vrshell/PanelServiceConnection;->TAG:Ljava/lang/String;

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    iget-boolean v10, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mIsDeveloperBuildAllowed:Z

    .line 120
    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 121
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v10, 0x1

    aput-object p1, v9, v10

    .line 122
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    const/4 v12, 0x2

    aput-object p1, v9, v12

    const/4 p1, 0x3

    aput-object v3, v9, p1

    const/4 p1, 0x4

    sub-long/2addr v6, v1

    const-wide/32 v1, 0xf4240

    div-long/2addr v6, v1

    .line 124
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, p1

    const-string p1, "verifyFirstPartyUID(isDeveloperBuildAllowed=%s, uid=%d) => isVrRunnable=%s, apkSignatureResult=%s, time=%d ms"

    .line 118
    invoke-static {p1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-static {v8, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance p1, Lcom/oculus/analytics/AnalyticsEvent;

    const-string v1, "oculus_server_auth"

    const-string v2, "VrShell"

    invoke-direct {p1, v1, v2}, Lcom/oculus/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "package_name"

    .line 128
    invoke-virtual {p1, v1, v4}, Lcom/oculus/analytics/AnalyticsEvent;->addExtraString(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/analytics/AnalyticsEvent;

    .line 129
    iget-boolean v1, v3, Lcom/oculus/vrshell/panelservice/SigCertVerifier$SigCertInfo;->isTrusted:Z

    const-string v2, "first_party_trusted"

    invoke-virtual {p1, v2, v1}, Lcom/oculus/analytics/AnalyticsEvent;->addExtraBool(Ljava/lang/String;Z)Lcom/oculus/analytics/AnalyticsEvent;

    const-string v1, "vr_runnable"

    .line 130
    invoke-virtual {p1, v1, v5}, Lcom/oculus/analytics/AnalyticsEvent;->addExtraBool(Ljava/lang/String;Z)Lcom/oculus/analytics/AnalyticsEvent;

    .line 131
    invoke-virtual {p1}, Lcom/oculus/analytics/AnalyticsEvent;->log()V

    .line 133
    iget-boolean p1, v3, Lcom/oculus/vrshell/panelservice/SigCertVerifier$SigCertInfo;->isTrusted:Z

    if-nez p1, :cond_4

    .line 134
    new-array p1, v10, [Ljava/lang/Object;

    aput-object v4, p1, v11

    const-string v0, "Expected APK %s to be signed with trusted certificate; failing authentication."

    .line 135
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 139
    iget-boolean v0, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mIsDeveloperBuildAllowed:Z

    if-eqz v0, :cond_1

    return-object p1

    .line 143
    :cond_1
    invoke-static {v10}, Lcom/oculus/vrshell/panelservice/VerifierConstants;->getFirstPartyOculusStorePackages(Z)Ljava/util/Map;

    move-result-object v0

    .line 144
    iget-object v1, v3, Lcom/oculus/vrshell/panelservice/SigCertVerifier$SigCertInfo;->signature:Landroid/content/pm/Signature;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object p1

    .line 148
    :cond_2
    iget-object v1, v3, Lcom/oculus/vrshell/panelservice/SigCertVerifier$SigCertInfo;->signature:Landroid/content/pm/Signature;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 149
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return-object p1

    .line 153
    :cond_3
    new-array v0, v12, [Ljava/lang/Object;

    aput-object p1, v0, v11

    iget-object p1, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mUnlockulusFailureMessage:Ljava/lang/String;

    .line 155
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v10

    const-string p1, "%s Enabling GearVR developer mode or fixing Unlockulus (%s) will fix this!"

    .line 153
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    if-nez v5, :cond_6

    .line 159
    new-array p1, v10, [Ljava/lang/Object;

    aput-object v4, p1, v11

    const-string v0, "Expected APK %s to have valid OSIG; failing authentication."

    .line 160
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 162
    iget-boolean v0, p0, Lcom/oculus/vrshell/PanelServiceConnection;->mIsGearVRDeveloperMode:Z

    if-eqz v0, :cond_5

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Did you forget to add your device OSIG to the assets/ directory when building it?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 166
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Enabling GearVR developer mode may fix this!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v0
.end method

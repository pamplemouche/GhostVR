.class public Lcom/oculus/horizon/service/SignatureChecker;
.super Ljava/lang/Object;
.source "SignatureChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final sSignatureChecks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/oculus/horizon/service/SignatureChecker;

    sput-object v0, Lcom/oculus/horizon/service/SignatureChecker;->TAG:Ljava/lang/Class;

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/oculus/horizon/service/SignatureChecker;->sSignatureChecks:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/oculus/horizon/service/SignatureChecker;->sSignatureChecks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 29
    return-void
.end method

.method private static getCallingPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 64
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getCallingSignatureLevel(Landroid/content/Context;)Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;
    .locals 8

    .prologue
    .line 73
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 75
    sget-object v0, Lcom/oculus/horizon/service/SignatureChecker;->sSignatureChecks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/oculus/horizon/service/SignatureChecker;->sSignatureChecks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;

    .line 99
    :goto_0
    return-object v0

    .line 79
    :cond_0
    invoke-static {p0}, Lcom/oculus/horizon/service/SignatureChecker;->getCallingPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 80
    sget-object v0, Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;->UNSIGNED:Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;

    .line 82
    if-eqz v3, :cond_1

    .line 83
    new-instance v1, Lcom/oculus/appmanager/signature/VRPackageVerifier;

    invoke-direct {v1}, Lcom/oculus/appmanager/signature/VRPackageVerifier;-><init>()V

    .line 86
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 88
    invoke-virtual {v1, v4, v3}, Lcom/oculus/appmanager/signature/VRPackageVerifier;->verifyVRSigFromPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 89
    sget-object v0, Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;->VR:Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_1
    :goto_1
    sget-object v1, Lcom/oculus/horizon/service/SignatureChecker;->sSignatureChecks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 90
    :cond_2
    :try_start_1
    invoke-virtual {v1, v4, v3}, Lcom/oculus/appmanager/signature/VRPackageVerifier;->verifyOculusSigFromPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    sget-object v0, Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;->DEVELOPER:Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 93
    :catch_0
    move-exception v1

    .line 94
    sget-object v4, Lcom/oculus/horizon/service/SignatureChecker;->TAG:Ljava/lang/Class;

    const-string v5, "Error checking signature, package not found: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v4, v1, v5, v6}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static isCallerHorizon()Z
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 58
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCallerUnsigned(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-static {}, Lcom/oculus/horizon/service/SignatureChecker;->isCallerHorizon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/oculus/horizon/service/SignatureChecker;->getCallingSignatureLevel(Landroid/content/Context;)Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;

    move-result-object v1

    sget-object v2, Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;->UNSIGNED:Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static throwIfCallerNotSigned(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p0}, Lcom/oculus/horizon/service/SignatureChecker;->isCallerUnsigned(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const-string v0, "Calling package does not have a valid VR signature."

    .line 43
    sget-object v1, Lcom/oculus/horizon/service/SignatureChecker;->TAG:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 44
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_0
    return-void
.end method

.class public Lcom/oculus/unlockulus_helper/UnlockulusHelper;
.super Ljava/lang/Object;
.source "UnlockulusHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sVerifier:Lcom/oculus/appmanager/signature/VRPackageVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/oculus/unlockulus_helper/UnlockulusHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/unlockulus_helper/UnlockulusHelper;->TAG:Ljava/lang/String;

    .line 16
    new-instance v0, Lcom/oculus/appmanager/signature/VRPackageVerifier;

    invoke-direct {v0}, Lcom/oculus/appmanager/signature/VRPackageVerifier;-><init>()V

    sput-object v0, Lcom/oculus/unlockulus_helper/UnlockulusHelper;->sVerifier:Lcom/oculus/appmanager/signature/VRPackageVerifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

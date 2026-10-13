.class public Lcom/oculus/appmanager/signature/VRPackageVerifier;
.super Ljava/lang/Object;
.source "VRPackageVerifier.java"


# instance fields
.field private final mVerifier:Lcom/oculus/appmanager/vrsign/VRSignVerifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/oculus/appmanager/vrsign/VRSignVerifier;

    invoke-direct {v0}, Lcom/oculus/appmanager/vrsign/VRSignVerifier;-><init>()V

    iput-object v0, p0, Lcom/oculus/appmanager/signature/VRPackageVerifier;->mVerifier:Lcom/oculus/appmanager/vrsign/VRSignVerifier;

    .line 19
    return-void
.end method

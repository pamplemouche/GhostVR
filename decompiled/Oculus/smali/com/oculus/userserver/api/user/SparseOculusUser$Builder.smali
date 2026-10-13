.class public final Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;
.super Ljava/lang/Object;
.source "SparseOculusUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/userserver/api/user/SparseOculusUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mUserId:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mUserName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;->mUserId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;->mUserName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public buildSparseUser()Lcom/oculus/userserver/api/user/SparseOculusUser;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/oculus/userserver/api/user/SparseOculusUser;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oculus/userserver/api/user/SparseOculusUser;-><init>(Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;Lcom/oculus/userserver/api/user/SparseOculusUser$1;)V

    return-object v0
.end method

.method public setUserName(Ljava/lang/String;)Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;->mUserName:Ljava/lang/String;

    .line 50
    return-object p0
.end method

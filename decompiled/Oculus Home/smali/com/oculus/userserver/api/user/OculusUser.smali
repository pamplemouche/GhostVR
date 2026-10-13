.class public final Lcom/oculus/userserver/api/user/OculusUser;
.super Ljava/lang/Object;
.source "OculusUser.java"


# instance fields
.field private final mUserId:I

.field private final mUserName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/userserver/api/user/SparseOculusUser;)V
    .locals 2
    .param p1, "sparseUser"    # Lcom/oculus/userserver/api/user/SparseOculusUser;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p1}, Lcom/oculus/userserver/api/user/SparseOculusUser;->getUserId()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "userId must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/oculus/userserver/api/user/SparseOculusUser;->getUserId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oculus/userserver/api/user/OculusUser;->mUserId:I

    .line 18
    invoke-virtual {p1}, Lcom/oculus/userserver/api/user/SparseOculusUser;->getUserName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "userName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_1
    invoke-virtual {p1}, Lcom/oculus/userserver/api/user/SparseOculusUser;->getUserName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/userserver/api/user/OculusUser;->mUserName:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getUserId()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/oculus/userserver/api/user/OculusUser;->mUserId:I

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oculus/userserver/api/user/OculusUser;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method toSparseUser()Lcom/oculus/userserver/api/user/SparseOculusUser;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;

    invoke-direct {v0}, Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;-><init>()V

    iget v1, p0, Lcom/oculus/userserver/api/user/OculusUser;->mUserId:I

    .line 42
    invoke-virtual {v0, v1}, Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;->setUserId(I)Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/userserver/api/user/OculusUser;->mUserName:Ljava/lang/String;

    .line 43
    invoke-virtual {v0, v1}, Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;->setUserName(Ljava/lang/String;)Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;->buildSparseUser()Lcom/oculus/userserver/api/user/SparseOculusUser;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OculusUser: {id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oculus/userserver/api/user/OculusUser;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", username: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/userserver/api/user/OculusUser;->mUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

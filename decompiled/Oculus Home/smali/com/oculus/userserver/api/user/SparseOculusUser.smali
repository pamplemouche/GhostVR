.class public final Lcom/oculus/userserver/api/user/SparseOculusUser;
.super Ljava/lang/Object;
.source "SparseOculusUser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;
    }
.end annotation


# instance fields
.field private final mUserId:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mUserName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1}, Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;->access$000(Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/userserver/api/user/SparseOculusUser;->mUserId:Ljava/lang/Integer;

    .line 15
    invoke-static {p1}, Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;->access$100(Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/userserver/api/user/SparseOculusUser;->mUserName:Ljava/lang/String;

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;Lcom/oculus/userserver/api/user/SparseOculusUser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;
    .param p2, "x1"    # Lcom/oculus/userserver/api/user/SparseOculusUser$1;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/oculus/userserver/api/user/SparseOculusUser;-><init>(Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;)V

    return-void
.end method


# virtual methods
.method public getUserId()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oculus/userserver/api/user/SparseOculusUser;->mUserId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oculus/userserver/api/user/SparseOculusUser;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 28
    const-string v0, "SparseOculusUser: {"

    .line 29
    .local v0, "repr":Ljava/lang/String;
    iget-object v1, p0, Lcom/oculus/userserver/api/user/SparseOculusUser;->mUserId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/userserver/api/user/SparseOculusUser;->mUserId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/oculus/userserver/api/user/SparseOculusUser;->mUserName:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "username: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/userserver/api/user/SparseOculusUser;->mUserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    return-object v0
.end method

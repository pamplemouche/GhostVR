.class public Lcom/oculus/auth/api/FBAuthRequest;
.super Ljava/lang/Object;
.source "FBAuthRequest.java"


# instance fields
.field private credentialsType:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private email:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private firstFactor:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private machineId:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private password:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private uid:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCredentialsType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/oculus/auth/api/FBAuthRequest;->credentialsType:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oculus/auth/api/FBAuthRequest;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstFactor()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oculus/auth/api/FBAuthRequest;->firstFactor:Ljava/lang/String;

    return-object v0
.end method

.method public getMachineId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oculus/auth/api/FBAuthRequest;->machineId:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/oculus/auth/api/FBAuthRequest;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oculus/auth/api/FBAuthRequest;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setCredentialsType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 41
    iput-object p1, p0, Lcom/oculus/auth/api/FBAuthRequest;->credentialsType:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 21
    iput-object p1, p0, Lcom/oculus/auth/api/FBAuthRequest;->email:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setFirstFactor(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 33
    iput-object p1, p0, Lcom/oculus/auth/api/FBAuthRequest;->firstFactor:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setMachineId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 29
    iput-object p1, p0, Lcom/oculus/auth/api/FBAuthRequest;->machineId:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 25
    iput-object p1, p0, Lcom/oculus/auth/api/FBAuthRequest;->password:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 37
    iput-object p1, p0, Lcom/oculus/auth/api/FBAuthRequest;->uid:Ljava/lang/String;

    .line 38
    return-void
.end method

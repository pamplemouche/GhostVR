.class public Lcom/oculus/horizon/nux360/CreateAccountUtil$EmailAndPasswordException;
.super Lcom/oculus/horizon/nux360/CreateAccountUtil$CreateAccountException;
.source "CreateAccountUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/nux360/CreateAccountUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmailAndPasswordException"
.end annotation


# instance fields
.field private final mEmailAlreadyTaken:Z

.field private final mPasswordNotValid:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/oculus/horizon/nux360/CreateAccountUtil$CreateAccountException;-><init>()V

    .line 31
    iput-boolean p1, p0, Lcom/oculus/horizon/nux360/CreateAccountUtil$EmailAndPasswordException;->mEmailAlreadyTaken:Z

    .line 32
    iput-boolean p2, p0, Lcom/oculus/horizon/nux360/CreateAccountUtil$EmailAndPasswordException;->mPasswordNotValid:Z

    .line 33
    return-void
.end method


# virtual methods
.method public isEmailAlreadyTaken()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/oculus/horizon/nux360/CreateAccountUtil$EmailAndPasswordException;->mEmailAlreadyTaken:Z

    return v0
.end method

.method public isPasswordNotValid()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/oculus/horizon/nux360/CreateAccountUtil$EmailAndPasswordException;->mPasswordNotValid:Z

    return v0
.end method

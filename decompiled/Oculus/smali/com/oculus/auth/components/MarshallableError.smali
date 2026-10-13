.class public Lcom/oculus/auth/components/MarshallableError;
.super Ljava/lang/Exception;
.source "MarshallableError.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final mCode:I

.field private final mMessage:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mTitle:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0, v0}, Lcom/oculus/auth/components/MarshallableError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 27
    iput p1, p0, Lcom/oculus/auth/components/MarshallableError;->mCode:I

    .line 28
    iput-object p2, p0, Lcom/oculus/auth/components/MarshallableError;->mTitle:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/oculus/auth/components/MarshallableError;->mMessage:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public marshal()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    const-string v1, "error_code"

    iget v2, p0, Lcom/oculus/auth/components/MarshallableError;->mCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 35
    iget-object v1, p0, Lcom/oculus/auth/components/MarshallableError;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 36
    const-string v1, "error_title"

    iget-object v2, p0, Lcom/oculus/auth/components/MarshallableError;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/oculus/auth/components/MarshallableError;->mMessage:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 39
    const-string v1, "error_message"

    iget-object v2, p0, Lcom/oculus/auth/components/MarshallableError;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_1
    return-object v0
.end method

.class public Lcom/facebook/common/errorreporting/SoftErrorException;
.super Ljava/lang/Exception;
.source "SoftErrorException.java"

# interfaces
.implements Lcom/facebook/acra/NonCrashException;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p2    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    return-void
.end method


# virtual methods
.method public getExceptionFriendlyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string v0, "soft error"

    return-object v0
.end method
